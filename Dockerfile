FROM centos
MAINTAINER locutus "locutus@foxmail.com"

# OS环境配置
RUN yum install -y wget

# 安装JDK
RUN mkdir /var/tmp/jdk
COPY jdk-8u144-linux-x64.tar.gz /var/tmp/jdk
RUN tar xzf /var/tmp/jdk/jdk-8u144-linux-x64.tar.gz -C /var/tmp/jdk && rm -rf /var/tmp/jdk/jdk-8u144-linux-x64.tar.gz

# 安装tomcat
RUN mkdir /var/tmp/tomcat
#RUN wget -P  /var/tmp/tomcat http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.8/bin/apache-tomcat-8.5.8.tar.gz
COPY apache-tomcat-9.0.0.M22.tar.gz /var/tmp/tomcat
RUN tar xzf /var/tmp/tomcat/apache-tomcat-9.0.0.M22.tar.gz -C /var/tmp/tomcat && rm -rf /var/tmp/tomcat/apache-tomcat-9.0.0.M22.tar.gz

#将openoffice copy到里面
COPY Apache_OpenOffice_4.1.3_Linux_x86-64_install-rpm_zh-CN.tar.gz /home

# 用你自己的 uid /gid 替换下面的0
RUN export uid=0 gid=0
RUN mkdir -p /home/developer
RUN echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:${uid}:" >> /etc/group
RUN echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chmod 0440 /etc/sudoers
RUN chown ${uid}:${gid} -R /home/developer
USER developer

#设置环境变量
ENV JAVA_HOME /var/tmp/jdk/jdk1.8.0_144
ENV JRE_HOME $JAVA_HOME/jre
ENV PATH $PATH:$JAVA_HOME/bin:$JRE_HOME/bin
ENV CLASSPATH :$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib/dt.jar
ENV CATALINA_HOME /var/tmp/tomcat/apache-tomcat-9.0.0.M22
ENV CATALINA_BASE /var/tmp/tomcat/apache-tomcat-9.0.0.M22
ENV PATH $PATH:$CATALINA_BASE/bin
ENV HOME /home/developer

#打包项目并拷贝到tomcat webapps目录
#RUN mkdir /var/tmp/webapp
#ADD ./  /var/tmp/webapp
#RUN cd  /var/tmp/webapp  && cp /var/tmp/webapp/war/sm_new.war /var/tmp/tomcat/apache-tomcat-8.5.8/webapps/

#开启内部服务端口
EXPOSE 8080

#启动tomcat服务器
#CMD ["./var/tmp/tomcat/apache-tomcat-8.5.8/bin/catalina.sh","run"] && tail -f /var/tmp/tomcat/apache-tomcat-8.5.8/logs/catalina.out 


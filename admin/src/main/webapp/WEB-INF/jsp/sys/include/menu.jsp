<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-sidebar-wrapper">
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
            <c:forEach items="${menuList}" var="menu" varStatus="status">
                <li class="nav-item <c:if test="${status.index == 0}">active</c:if>">
                    <a href="javascript:;" class="nav-link nav-toggle">

                        <c:if test="${not empty menu.menuIcon }"><i class="${menu.menuIcon}"></i></c:if>
                        <span class="title">${menu.menuName}</span>
                        <span class="selected"></span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <c:forEach items="${menu.subMenu}" var="sub">
                            <c:choose>
                                <c:when test="${not empty sub.menuUrl}">
                                    <li class="nav-item">
                                        <a href="${sub.menuUrl}" class="ajaxify nav-link">
                                            <c:if test="${not empty sub.menuIcon }"><i
                                                    class="${sub.menuIcon}"></i></c:if>
                                            </i>${sub.menuName}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="javascript:;">
                                        <i class="fa fa-caret-right"></i>${sub.menuName}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
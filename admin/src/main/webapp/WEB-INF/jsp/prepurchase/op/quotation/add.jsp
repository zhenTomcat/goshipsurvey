<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
    .timeline .timeline-badge {
        float: none;
    }

    .timeline .timeline-icon {
        background-color: #e1e5ec;
        display: table;
        padding-top: 0px;
        padding-left: 0px;
        vertical-align: middle;
        align-content: center;
        text-align: center;
    }

    .timeline:before {
        background: #e1e5ec;
    }

    .timeline-content {
        display: table-cell;
        vertical-align: middle;
        width: 100%;
        text-align: center;
    }

    .timeline-icon.selected {
        background-color: #32c5d2;
        color: white
    }

    .search-input :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
        color: white !important;
    }

    .search-input ::-moz-placeholder { /* Mozilla Firefox 19+ */
        color: white !important;
    }

    .search-input:-ms-input-placeholder {
        color: white !important;
    }

    .search-input::-webkit-input-placeholder {
        color: white !important;
    }

    .quotation-content {
        margin-top: 15px
    }

    .btn-back {
        float: left;
        margin-left: 20px;
    }

    table, th, td {
        text-align: center;
    }

    .rating {
        margin-bottom: 4px;
        font-size: 15px;
        line-height: 27px;
        color: #404040;
    }

    .rating input {
        position: absolute;
        left: -9999px;
    }

    .rating label {
        color: #ccc;
        -ms-transition: color 0.3s;
        -moz-transition: color 0.3s;
        -webkit-transition: color 0.3s;
        display: block;
        float: right;
        height: 17px;
        margin-top: 5px;
        padding: 0 2px;
        font-size: 17px;
        line-height: 17px;
        cursor: pointer;
    }

    .rating input:checked ~ label {
        color: #72c02c;
    }


</style>
<h1 style="text-align: center;background-color: #3598dc;color: white;margin-top: 0">New Quotation</h1>
<form role="form" class="form-horizontal">
    <div class="tab-content">
        <jsp:include page="step1.jsp"></jsp:include>
        <jsp:include page="step2.jsp"></jsp:include>
        <jsp:include page="step3.jsp"></jsp:include>
        <jsp:include page="step4.jsp"></jsp:include>
        <jsp:include page="step5.jsp"></jsp:include>
    </div>
</form>
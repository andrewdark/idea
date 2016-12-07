<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%--
  Created by IntelliJ IDEA.
  User: Dark
  Date: 05.11.2016
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<spring:message code="label_login" var="labellogin"/>
<spring:message code="label_logout" var="labellogout"/>
<spring:message code="label_welcome" var="labelwelcome"/>
<spring:url value="/reg" var="registrationlink"/>
<spring:message code="label_username" var="labelusername"/>
<spring:message code="label_pwd" var="labelpwd"/>
<spring:message code="label_registration" var="labelregistration"/>
<c:url value="/login" var="loginUrl"/>


<nav>
<div class="container">

<div class="row col-xs-3">
    <div id="containerHeader">
            <a class="logo" href="/">Logo</a>
          </div>
</div>





<div class="pull-right row col-xs-6" id="login1">
    <sec:authorize access="isAnonymous()">
        <form name="loginForm" action="${loginUrl}" method="post">

            <input type="hidden" class="form-control" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input class="loginform" type="text" name="username" placeholder="${labelusername}"/>
            <input class="loginform" type="password" name="password" placeholder="${labelpwd}"/>
            <input class="loginbutton" name="submit" type="submit" value="${labellogin}"/>
            <p class="registration"><a href=${registrationlink}>${labelregistration}</a></p>
        </form>

        <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <span style="color: red; ">
        Your login attempt was not successful due to <br/><br/>
        <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
    </span>
        </c:if>
    </sec:authorize>
    <sec:authorize access="!isAnonymous()">
        <sec:authentication property="principal.username" var="username"/>
        <table>
            <tr>
                <td align="right"><a href="${addContactUrl}"><h3>${labelwelcome} ${username}</h3></a></td>
            </tr>
            <tr>
                <td align="right"><b>${labellogin}: </b> ${username}<b>--></b><a
                        href="<c:url value="/j_spring_security_logout"/>">${labellogout}</a></td>
            </tr>
        </table>
    </sec:authorize>
</div>
    </div>
</nav>
        ${lmnl}

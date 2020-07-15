<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%@ include file="header.jsp" %>
    <%--<script src="${ctx}/statics/js/backend/backend.js"></script>--%>
</head>
<body>
<%@ include file="searchBar.jsp" %>
<!--End Header End-->
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
    <div class="m_content">
        <%@ include file="leftBar.jsp"%>
        <div class="m_right" id="content">
            <div class="m_des">
                <table border="0" style="width:870px; line-height:22px;" cellspacing="0" cellpadding="0">
                    <tr valign="top">
                        <td width="115"><img src="images/${user.fileName }" width="90" height="90" /></td>
                        <td>
                            <div class="m_user">${user.name }</div><br />
                            <p>
                                性别:
                               <c:if test="${user.sex eq '男' }">
                               男
                               </c:if>
                                <c:if test="${user.sex eq '女'}">
                               女
                               </c:if>
                                <br /><br />
                                邮箱:${user.email }<br /><br />
                                电话:${user.mobile }<br /><br />
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>


















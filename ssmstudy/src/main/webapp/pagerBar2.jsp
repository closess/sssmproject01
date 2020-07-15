<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pages">
	<%--<!-- --%>
	<%--<c:if test="${pageData.list.size() == 0 }">--%>
		<%--暂无记录--%>
	<%--</c:if>--%>
	<%--<c:if test="${pageData.list.size() > 0 }">--%>
		<%--<a href="${pageData.url}&page=1" class="p_pre">首页</a>--%>
		<%--<c:if test="${pageData.currentPage > 1 }">--%>
			<%--<a href="${pageData.url}&page=${pageData.currentPage-1}" class="p_pre">上一页</a>--%>
		<%--</c:if>--%>
	    <%--<c:forEach  var="temp" begin="1" end="${pageData.pageCount}" step="1">--%>
            <%--<c:if test="${pageData.currentPage==temp}">--%>
                <%--<a href="${pageData.url}&page=${temp}" class="cur">${temp}</a>--%>
            <%--</c:if>--%>
            <%--<c:if test="${pageData.currentPage!=temp}">--%>
                <%--<a href="${pageData.url}&page=${temp}">${temp}</a>--%>
            <%--</c:if>--%>
        <%--</c:forEach>--%>
        <%--<c:if test="${pageData.currentPage < pageData.pageCount }">--%>
        	<%--<a href="${pageData.url}&page=${pageData.currentPage+1}" class="p_pre">下一页</a>--%>
        <%--</c:if>--%>
	    <%--<a href="${pageData.url}&page=${pageData.pageCount}" class="p_pre">尾页</a>--%>
	<%--</c:if>--%>
	 <%---->--%>
	 <a href="/main/getAllNews.action?page=1" class="p_pre">首页</a>
	 <a href="/main/getAllNews.action?page=${page-1}" class="p_pre">上一页</a>
	 <a href="javascript:void(0);" class="cur">${page }/${allPageCount }</a>
	 <a href="/main/getAllNews.action?page=${page+1}" class="p_pre">下一页</a>
	 <a href="/main/getAllNews.action?page=${allPageCount }" class="p_pre">尾页</a>
</div>

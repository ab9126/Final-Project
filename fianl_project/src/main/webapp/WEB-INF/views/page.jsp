<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row">
	<div class="text-center">
		<ul class="pagination">
		<li><a href="?curPage=1"><span style="color: black;" class="glyphicon glyphicon-backward"></span></a></li>
		<li><a href="?curPage=${to.prevPage}"><span style="color: black;" class="glyphicon glyphicon-chevron-left"></span></a></li>
			<c:forEach var="var" begin="${to.beginPageNum}" end="${to.stopPageNum}">
				<li style="color: black;" class="${to.curPage == var ? 'active' : '' }"><a href="?curPage=${var}">${var}</a></li>
			</c:forEach>
		<li><a href="?curPage=${to.nextPage}"><span style="color: black;" class="glyphicon glyphicon-chevron-right"></span></a></li>
		<li><a href="?curPage=${to.totalPage}"><span style="color: black;" class="glyphicon glyphicon-forward"></span></a></li>
		</ul>
	</div>
</div>


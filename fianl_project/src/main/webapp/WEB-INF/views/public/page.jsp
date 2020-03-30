<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


   <div class="row">
      <ul class="pagination">
         <li><a href="list?curPage=${to.prevPage}"><span
               class="glyphicon glyphicon-chevron-left"></span></a></li>
         <c:forEach var="var" begin="${to.beginPageNum}"
            end="${to.stopPageNum}">
            <c:choose>
               <c:when test="${to.curPage == var}">
                  <li class="active"><a href="list?curPage=${var}">${var}</a></li>
                  
               </c:when>
               <c:otherwise>
                  <li><a href="list?curPage=${var}">${var}</a></li>
               </c:otherwise>
            </c:choose>
         </c:forEach>
         <li><a href="list?curPage=${to.nextPage}"><span
               class="glyphicon glyphicon-chevron-right"></span></a></li>
         <li><a href="list?curPage=${to.totalPage}"><span
               class="glyphicon glyphicon-forward"></span></a></li>
      </ul>
   </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.FoodDAO" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<table align="center" border="0" cellpadding="5" cellspacing="2" width="100%" bordercolordark="white" bordercolorlight="black">
	<tr>
        <td bgcolor="#dd7777">
            <p align="center">
            <font color="white"><b><span style="font-size:9pt;">번 호</span></b></font></p>
        </td>
        <td bgcolor="#dd7777">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">작 성 자</span></b></font></p>
        </td>
        <td bgcolor="#dd7777">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">리 뷰</span></b></font></p>
        </td>
        <td bgcolor="#dd7777">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">별 점</span></b></font></p>
        </td>
        <td bgcolor="#dd7777">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">작 성 일</span></b></font></p>
        </td>
        <td bgcolor="#dd7777">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">지역/가게 번호</span></b></font></p>
        </td>
    </tr>
       	<c:if test="${fn:length(requestScope.list) == 0}">
	<tr>
        <td colspan="5">
            <p align="center"><b><span style="font-size:9pt;">등록된 방명록이 없습니다.</span></b></p>
        </td>
    </tr>
    	</c:if>
    		
		<c:if test="${fn:length(requestScope.list) != 0}">
			
			<c:forEach items="${requestScope.list}" var="datas">
				<tr>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
		            ${datas.num}</span></p>
		        </td>
		        <td bgcolor="">
					<p><span style="font-size:9pt;">
					<a href="guestbook.do?command=read&num=${datas.num}">
					${datas.name}</a></span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
					${datas.review}
					</span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
					${datas.star}
					</span></p>
		        </td>
		        
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">${datas.writeday}</span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">${datas.resnum}</span></p>
		        </td>
		  		 </tr>
			</c:forEach>
 		</c:if>
    <tr>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
        <td bgcolor="">
			<p><span style="font-size:9pt;"><a href="ReadAContent.jsp?num= "></a></span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;">
				<a href="mailto:"></a>
			</span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
    </tr>

</table>
<hr>
<div align=right>
<span style="font-size:9pt;">&lt;<a href="main.html">글쓰기</a>&gt;</span></div>


<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%response.setHeader("Access-Control-Allow-Origin","*");%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
        table{
            border : 10px solid rgba(160, 101, 216, 0.602);
            padding: 10px;
        }
        th{
            background-color: blueviolet;  
            color:aliceblue;
            padding: 7px;
        }
        td{
            padding : 5px;
        }

</style>
</head>
<body>
   

      <table border="1">
         <th>글 번호</th>
         <th>작성자명</th>
         <th>평 점</th>
         <th>리 뷰</th>
   <c:forEach items = "${requestScope.list}" var="customer">
         <tr>
            <td>${customer.num}</td>
            <td>${customer.name}</td>
            <td>${customer.star}</td>
            <td>${customer.review}</td>
         </tr>
   </c:forEach>
      </table>
</body>
</html>
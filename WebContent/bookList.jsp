<%@page import="java.util.List"%>
<%@page import="service.BookServiceImpl"%>
<%@page import="vo.BookVO"%>
<%@page import="service.BookService"%>
<%@page import="dao.BookDAO_MariaDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Book WebApplication ...</title>

<link rel="stylesheet" href="./css/my.css">

</head>
<body>
<h1> Book List </h1>

<table class = "tableb">
	<tr>
		<th>BookNo</th>
		<th>Title</th>
		<th>Publisher</th>
		<th>Price</th>
	</tr>
	
<%  //자바코드 들어감
	BookDAO_MariaDB dao = new BookDAO_MariaDB();
	BookService service = new BookServiceImpl(dao);
	
	List<BookVO> list = service.bookList();
	
	for(BookVO data : list) {

%>

	<tr>
		<td><%=data.getBookno() %></td>
		<td><%=data.getTitle() %></td>
		<td><%=data.getPublisher() %></td>
		<td><%=data.getPrice() %></td>
	</tr>

<% 
	}
%>

</table>

</body>
</html>
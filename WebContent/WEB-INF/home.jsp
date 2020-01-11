<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Spring MVC Film Site</title>

</head>

<body>

<h1>Films!!!</h1>
<form action="home.do" method="get">

</form>
<form action="create.do" method="GET">
<input type="submit" value="Create Film"/>
</form>
<br>
<form action="FilmById.do" method="GET">
		Search for Film by ID:
		<input type="number" name="filmId" size="10"/> 
		<input type="submit" value="Get Film Data by ID" />
	</form>
	<br>
	<form action="FilmsByKeyword.do" method="GET">
		Search for Films by Keyword:
		<input type="text" name="keyword" size="100"/> 
		<input type="submit" value="Get Films by Keyword" />
	</form>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>We are so nice to let you add your film here!</h1>
	<form action="created.do" method="post">
	Title:<input type="text" name="title" size="25" /><br>

		Description:<input type="text" name="desc" size="1000000"/><br> 
		Release Year:<input type="number" name="releaseYear" size="100" /><br>

		Language: <select name="langId">

			<option value="1">1-English</option>
			<option value="2">2-Italian</option>
			<option value="3">3-Japanese</option>
			<option value="4">4-Mandarin</option>
			<option value="5">5-French</option>
			<option value="6">6-German</option>

		</select><br> 
		Rent Duration:<input type="number" name="rentDur" size="5" /><br> 
		Cost Rate: <input type="number" step=any name="rate" size="5" /><br> 
		Length:<input type="number" name="length" size="5" /><br>
		Replacement Cost: <input type="number" step=any name="repCost" size="5" /><br> 
		Rating <select name="rating">

			<option value="G">1-G</option>
			<option value="PG">2-PG</option>
			<option value="PG13">3-PG13</option>
			<option value="R">4-R</option>
			<option value="NC17">5-NC17</option>

		</select><br> 
		Features:<input type="text" name="features" size="500"/><br> 
		
	<input type="hidden" value="${film}" name="film"/>
	<input type="submit" value="Create" /><br>
	<a href="home.do">Home</a><br>
	
	</form>
</body>
</html>
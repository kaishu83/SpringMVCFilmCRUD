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
	 Title:<input
			type="text" name="title" size="25" /><br> Description:<input
			type="text" name="desc" size="50" /><br> Release Year:<input
			type="number" name="releaseYear" size="10" /><br> Language: <select
			name="langId"><option value="1">1-Englisht</option>
			<option value="2">2-Italian</option>
			<option value="3">3-Japanese</option>
			<option value="4">4-Mandarin</option>
			<option value="5">5-French</option>
			<option value="6">6-German</option>

		</select><br>  
		Rent Duration:<input type="number" name="rentDur" size="5" /><br> Cost
		Rate: <input type="number" name="length" size="5" /><br> Rent
		Duration:<input type="number" name="rentDur" size="5" /><br>
		Replacement Cost: <input type="number" name="repCost" size="5" /><br>
	
	Rating: <br>
	
	G<input type="radio" name="rating" value="G"> <br>
	PG	<input type="radio" name="rating" value="PG"><br>
	PG13	<input type="radio" name="rating" value="PG13"><br>
	R	<input type="radio" name="rating" value="R"> <br>
	NC17	<input type="radio" name="rating" value="NC17"> <br>
	Features:<input
			type="text" name="features" size="50" /><br>
			
	<input type ="hidden" value="film" name="film"/>		
	<input type="submit" value="Create" /><br>
	
	</form>
</body>
</html>
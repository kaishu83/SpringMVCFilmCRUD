<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update it as you wish!</title>
</head>
<body>
	<form action="updated.do" method="post">
		Title:<input type="text" name="title" size="25" value="${film.title}" /><br>

		Description:<input type="text" name="desc" size="1000000"
			value="${film.desc }" /><br> Release Year:<input type="number"
			name="releaseYear" size="100" value="${film.releaseYear}" /><br>

		Language: <select name="langId">

			<option value="${ film.langId}">1-Englisht</option>
			<option value="${ film.langId}">2-Italian</option>
			<option value="${ film.langId}">3-Japanese</option>
			<option value="${ film.langId}">4-Mandarin</option>
			<option value="${ film.langId}">5-French</option>
			<option value="${ film.langId}">6-German</option>

		</select><br> 
		Rent Duration:<input type="number" name="rentDur" size="5"
			value="${film.rentDur}" /><br> 
			Cost Rate: <input type="number"
			name="length" size="5" value="${film.rate}" /><br> Length:<input
			type="number" name="rentDur" size="5" value="${film.length}" /><br>
		Replacement Cost: <input type="number" name="repCost" size="5"
			value="${film.repCost}" /><br> Rating: <br> G<input
			type="radio" name="rating" value="${film.rating}"> <br>
		PG <input type="radio" name="rating" value="${film.rating}"><br>
		PG13 <input type="radio" name="rating" checked><br> R <input
			type="radio" name="rating" value="${film.rating}"> <br>
		NC17 <input type="radio" name="rating" value="${film.rating}">
		<br> Features:<input type="text" name="desc" size="500"
			value="${film.features}" /><br> <input type="submit"
			value="Create" /><br>

	</form>
</body>
</html>
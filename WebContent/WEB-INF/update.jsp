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

		Description:<input type="text" name="desc" size="1000000" value="${film.desc }" /><br> 
		Release Year:<input type="number" name="releaseYear" size="100" value="${film.releaseYear}" /><br>

		Language: <select name="langId">

			<option value="${ film.langId}">1-English</option>
			<option value="${ film.langId}">2-Italian</option>
			<option value="${ film.langId}">3-Japanese</option>
			<option value="${ film.langId}">4-Mandarin</option>
			<option value="${ film.langId}">5-French</option>
			<option value="${ film.langId}">6-German</option>

		</select><br> 
		Rent Duration:<input type="number" name="rentDur" size="5" value="${film.rentDur}" /><br> 
		Cost Rate: <input type="number" name="rate" step=any size="5" value="${film.rate}" /><br> 
		Length:<input type="number" name="length" size="5" value="${film.length}" /><br>
		Replacement Cost: <input type="number" step=any name="repCost" size="5" value="${film.repCost}" /><br> 
		Rating <select name="rating">

			<option value="${ film.langId}">1-G</option>
			<option value="${ film.langId}">2-PG</option>
			<option value="${ film.langId}">3-PG13</option>
			<option value="${ film.langId}">4-R</option>
			<option value="${ film.langId}">5-NC17</option>

		</select><br> 
		Features:<input type="text" name="features" size="500" value="${film.features}" /><br> 
		
		<input type="hidden" value="${film.filmId}" name="filmId"/>
		<input type="hidden" value="${film }" name="film"/>
		<input type="submit" value="Update Film" /><br>
		<a href="home.do">Home</a><br>

	</form>
</body>
</html>
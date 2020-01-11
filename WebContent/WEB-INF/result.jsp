<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results!</title>
</head>
<body>
	<div>
		<c:choose>
			<c:when test="${! empty films}">
				<ul>
					<c:forEach var="film" items="${films}">


					
						<li><a href="FilmById.do?filmId=${film.filmId }">${film.title}</a></li>

					</c:forEach>
				</ul>
			</c:when>
		
			<c:when test="${! empty film}">
				<ul>
					<li>ID: ${film.filmId}</li>
					<li>Title: ${film.title}</li>
					<li>Description: ${film.desc}</li>
					<li>Year: ${film.releaseYear}</li>
					<li>Language ID: ${film.langId}</li>
					<li>Rent Duration: ${film.rentDur}</li>
					<li>Rate: ${film.rate}</li>
					<li>Length: ${film.length}</li>
					<li>Replacement Cost: ${film.repCost}</li>
					<li>Rating: ${film.rating}</li>
					<li>Features: ${film.features}</li>
					<li>Language: ${film.language}</li>
					<li>List of Actors:<c:choose>
							<c:when test="${! empty film.lActor}">
								<ul>
									<c:forEach var="actor" items="${film.lActor}">
										<li>Actor ID: ${actor.id}</li>
										<li>Actor First Name: ${actor.firstName}</li>
										<li>Actor Last Name: ${actor.lastName}</li>

									</c:forEach>
								</ul>
							</c:when>
							<c:otherwise>
								<p>No Actors Found</p>
							</c:otherwise>
						</c:choose></li>
				</ul>
				<c:if test="${film.filmId > 1000}">
					<form action="delete.do" method="GET">
						<input type="submit" value="Delete Film" />
					</form>
				</c:if>
				<c:if test="${film.filmId > 1000}">
					<form action="update.do" method="GET">
						<input type="submit" value="Update Film" />
					</form>
				</c:if>
			</c:when>
			<c:otherwise>
				<p>No film(s) found</p>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="p" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<p:page>
	<div class="container">
		<a href="<c:url value="/games/"/>" class="btn"><i
			class="icon-plus"></i>Game</a>
		<table class="table">
			<thead>
				<tr>
					<th>Player 1</th>
					<th>Player 2</th>
					<th>Discipline</th>
					<th>Score</th>
					<th>Comment</th>
				</tr>
			</thead>
			<c:forEach items="${gameList}" var="p">
				<tr>
					<td>${p.player1.surname}</td>
					<td>${p.player2.surname}</td>
					<td>${p.discipline.name}</td>
					<td>${p.score}</td>
					<td>${p.comment}</td>
					<td><a href="<c:url value="/games/${p.id}/"/>"><i
							class="icon-pencil"></i>Edit</a></td>
					<td><a href="<c:url value="/games/${p.id}/delete"/>">Delete<i
							class="icon-trash"></i></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</p:page>
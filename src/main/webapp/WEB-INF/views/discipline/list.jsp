<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="p" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<p:page>
	<div class="container">
		<div class="pull-right">
			<form method="get" class="form-search">
				<div class="input-append">
					<input type="text" name="name" class="span2 search-query">
					<button type="submit" class="btn">Search</button>
				</div>
			</form>

		</div>
		<a href="<c:url value="/discipline/"/>"
			class="btn"><i class="icon-plus"></i>Discipline</a>

		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Federation</th>
					<th>Number of players</th>
				</tr>
			</thead>
			<c:forEach items="${distList}" var="p">
				<tr>
					<td>${p.name}</td>
					<td>${p.federation}</td>
					<td>${p.playersNumber -2}</td>
					<td><a href="<c:url value="/discipline/${p.id}/"/>"><i
							class="icon-pencil"></i>Edit</a></td>
					<td><a href="<c:url value="/discipline/${p.id}/delete"/>">Delete<i
							class="icon-trash"></i></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</p:page>
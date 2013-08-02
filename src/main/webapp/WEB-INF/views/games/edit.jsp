<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="p" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<p:page>
	<div class="container">
		<a href="<c:url value="/games/list"/>"><i class="icon-arrow-left"></i>Back</a>
		<f:form commandName="game" cssClass="form-inline">
			<p:field path="discipline" label="Discipline">
				<f:select path="discipline">
					<f:options items="${disciplines}" itemLabel="name" itemValue="id" />
				</f:select>
			</p:field>
			<%-- 			<c:forEach var="entry" items="${players}"> --%>
			<%--   				Key: <c:out value="${entry.key.name}" /> --%>
			<%--   				Value: <c:out value="${entry.value}" /><br> --%>
			<%-- 			</c:forEach> --%>
			<!-- 			Fill players : add name, surname discipline  -->
			<p:field path="player1" label="Player 1">
				<f:select path="player1">
					<c:forEach items="${players}" var="item">
						<f:option value="${item.id}">${item.name} ${item.surname} ${item.discipline.name}</f:option>
					</c:forEach>
				</f:select>
			</p:field>
			<p:field path="player2" label="Player 2">
				<f:select path="player2">
					<c:forEach items="${players}" var="item">
						<f:option value="${item.id}">${item.name} ${item.surname} ${item.discipline.name}</f:option>
					</c:forEach>
				</f:select>
			</p:field>
			<p:field path="score" label="Score">
				<f:input path="score" />
			</p:field>

			<p:field path="comment" label="Comment">
				<f:input path="comment" />
			</p:field>
			<button type="submit" class="btn">Submit</button>
		</f:form>
	</div>
</p:page>
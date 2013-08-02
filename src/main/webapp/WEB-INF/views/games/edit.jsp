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
			<c:forEach var="entry" items="${players}">
  				Key: <c:out value="${entry.key}" />
  				Value: <c:out value="${entry.value}" />
			</c:forEach>
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
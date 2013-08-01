<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="p" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<p:page>
	<div class="container">

		<a href="<c:url value="/discipline/list"/>"><i class="icon-arrow-left"></i>Back</a>
		<f:form commandName="discipline">
			<p:field path="name" label="Name">
				<f:input path="name" />
			</p:field>
			<p:field path="federation" label="Federation">
				<f:input path="federation" />
			</p:field>
			<button type="submit" class="btn">Submit</button>
		</f:form>
	</div>
</p:page>
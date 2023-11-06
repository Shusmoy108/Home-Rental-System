<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"   href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title>Add</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Advertisement</h1>
            <p>Place New Add</p>
        </div>
    </div>
</section>
<section class="container">
    <form:form  method="POST" modelAttribute="newAdd" class="form-horizontal">
        <fieldset>
            <legend>Fill up the required fields</legend>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="id"><spring:message code="addProduct.form.productId.label"/></label>
                <div class="col-lg-10">
                    <form:input id="id" path="id" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="title"><spring:message code="addProduct.form.name.label"/></label>
                <div class="col-lg-10">
                    <form:input id="title" path="title" type="text" class="form:input-large"/>
                </div>
            </div>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2 col-lg-2" for="ownerId"><spring:message code="addProduct.form.unitPrice.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:input id="ownerId" path="ownerId" type="text" class="form:input-large"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2 col-lg-2" for="ownersName"><spring:message code="addProduct.form.manufacturer.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:input id="ownersName" path="ownersName" type="text" class="form:input-large"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2 col-lg-2" for="propertyType"><spring:message code="addProduct.form.category.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:input id="propertyType" path="propertyType" type="text" class="form:input-large"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2 col-lg-2" for="purpose"><spring:message code="addProduct.form.unitsInStock.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:input id="purpose" path="purpose" type="text" class="form:input-large"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2" for="details"><spring:message code="addProduct.form.description.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:textarea id="details" path="details" rows = "2"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="location"><spring:message code="addProduct.form.unitsInStock.label"/></label>
                <div class="col-lg-10">
                    <form:input id="location" path="location" type="text" class="form:input-large"/>
                </div>
            </div>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2 col-lg-2" for="city"><spring:message code="addProduct.form.unitsInStock.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:input id="city" path="city" type="text" class="form:input-large"/>--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="price"><spring:message code="addProduct.form.unitsInStock.label"/></label>
                <div class="col-lg-10">
                    <form:input id="price" path="price" type="text" class="form:input-large"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="sqFeet"><spring:message code="addProduct.form.unitsInStock.label"/></label>
                <div class="col-lg-10">
                    <form:input id="sqFeet" path="sqFeet" type="text" class="form:input-large"/>
                </div>
            </div>

            <%--<div class="form-group">--%>
                <%--<label class="control-label col-lg-2" for="condition"><spring:message code="addProduct.form.condition.label"/></label>--%>
                <%--<div class="col-lg-10">--%>
                    <%--<form:radiobutton path="condition" value="New" />New--%>
                    <%--<form:radiobutton path="condition" value="Old" />Old--%>
                    <%--<form:radiobutton path="condition" value="Refurbished" />Refurbished--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
                </div>
            </div>
        </fieldset>
    </form:form>
</section>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Hello World - Input Form</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">
        <%--When form is loaded, Spring MVC will call student.getName()
        When form is submitted, Spring MVC will call student.setName()--%>
        First Name: <form:input path="name"></form:input>
        <br>
        <br>
        <%--When form is loaded, Spring MVC will call student.getFamily()
        When form is submitted, Spring MVC will call student.setFamily()--%>
        Last Name: <form:input path="family"></form:input>
        <br>
        <br>
        <%--When form is loaded, Spring MVC will call student.getCountry()
        When form is submitted, Spring MVC will call student.setCountry()--%>
        Country: <form:select path="country">
            <form:options items="${student.countryOptions}"/>
        </form:select>
        <br>
        <br>
        Favorite Language:
        Java <form:radiobutton path="favoriteLanguage" value="Java"/>
        C# <form:radiobutton path="favoriteLanguage" value="C#"/>
        PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
        Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>
        <br>
        <br>
        Operating Systems:
        Linux <form:checkbox path="operatingSystems" value="Linux"/>
        Ms Microsoft <form:checkbox path="operatingSystems" value="Ms Microsoft"/>
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>

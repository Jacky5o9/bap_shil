<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="/#"><asset:image src="grails.svg" alt="Grails Logo"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent"
                aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
            <ul class="nav navbar-nav ml-auto">
                <g:pageProperty name="page.nav"/>
            </ul>
        </div>
        <sec:ifLoggedIn>
            <span style="color: white;">Bonjour <sec:username/>&nbsp;</span>
            <g:link controller="logout">
                <button type="button" class="btn btn-danger">Logout</button>
            </g:link>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <g:link controller="login">
                <button type="button" class="btn btn-primary">Login</button>
            </g:link>
        </sec:ifNotLoggedIn>
    </div>
</nav>

<div style="display: flex; flex-direction: row; width: 100%; height: 100%">
    <div id="menu">
        <ul class="nav flex-column">
            <li class="nav-item">
                <g:link class="nav-link" controller="user">User</g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="consultation">Consultation</g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="prescription">Prescription</g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="pathology">Pathology</g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="medecine">Medecine</g:link>
            </li>
        </ul>
    </div>
    <g:layoutBody/>

</div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>

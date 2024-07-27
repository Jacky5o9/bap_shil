<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Getion de cabinet medical"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="logoMSPP.jpg" type="image/png"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="/#"><asset:image src="logoMSPP.jpg" alt="Grails Logo"/></a>
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

<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="banner.png" class="grails-logo"/>
    </div>
</div>

<div style="display: flex; flex-direction: row; width: 100%; height: 100%; padding: 20px">
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

<div class="footer" role="contentinfo">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <a href="http://guides.grails.org" target="_blank">
                    <asset:image src="advancedgrails.svg" alt="Grails Guides" class="float-left"/>
                </a>
                <strong class="centered"><a href="http://guides.grails.org" target="_blank">Grails Guides</a></strong>
                <p>Building your first Grails app? Looking to add security, or create a Single-Page-App? Check out the <a href="http://guides.grails.org" target="_blank">Grails Guides</a> for step-by-step tutorials.</p>

            </div>
            <div class="col">
                <a href="https://www.mspp.gouv.ht/" target="_blank">
                    <asset:image src="documentation.svg" alt="Grails Documentation" class="float-left"/>
                </a>
                <strong class="centered"><a href="https://www.mspp.gouv.ht/" target="_blank">Documentation</a></strong>
                <p>Ready to dig in? You can find in-depth documentation for all the features of Grails in the <a href="https://www.mspp.gouv.ht/" target="_blank">User Guide</a>.</p>

            </div>
            <div class="col">
                <a href="https://facebook.com" target="_blank">
                    <asset:image src="slack.svg" alt="Grails Slack" class="float-left"/>
                </a>
                <strong class="centered"><a href="https://facebook.com" target="_blank">Join our Community</a></strong>
                <p>Get feedback and share your experience with other people in your community <a href="https://facebook.com" target="_blank">Our facebook page</a>.</p>
            </div>
        </div>
    </div>
</div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>

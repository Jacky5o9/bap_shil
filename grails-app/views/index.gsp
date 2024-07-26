<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<content tag="nav">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
%{--        <ul class="dropdown-menu">--}%
%{--            <li class="dropdown-item"><a href="#">Home page: ${grails.util.Environment.current.name}</a></li>--}%
%{--            <li class="dropdown-item"><a href="#">App profile: ${grailsApplication.config.getProperty('grails.profile')}</a></li>--}%
%{--            <li class="dropdown-item"><a href="#">App version:--}%
%{--                <g:meta name="info.app.version"/></a>--}%
%{--            </li>--}%
%{--            <li role="separator" class="dropdown-divider"></li>--}%
%{--            <li class="dropdown-item"><a href="#">Grails version:--}%
%{--                <g:meta name="info.app.grailsVersion"/></a>--}%
%{--            </li>--}%
%{--            <li class="dropdown-item"><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>--}%
%{--            <li class="dropdown-item"><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>--}%
%{--            <li role="separator" class="dropdown-divider"></li>--}%
%{--            <li class="dropdown-item"><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>--}%
%{--        </ul>--}%
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Create user: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit User: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show User: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultation <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Consultations: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Make a consultation: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit a consultation: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show the consultations: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultation <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Consultations: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Make a consultation: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit a consultation: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show the consultations: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Illustration <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Illustrations: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Upload a Illustration: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit a Illustration: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show the Illustrations: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Medecine <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Medecine: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Give a Medecine: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit a Medecine: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show the Medecine: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pathology <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Pathology: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Describe a pathology: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit a pathology: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show the pathologies: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Prescription <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Prescription: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Give a prescription: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Edit a prescription: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Show the prescriptions: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contact us <span class="caret"></span></a>
    </li>
%{--    <li class="dropdown">--}%
%{--        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>--}%
%{--        <ul class="dropdown-menu dropdown-menu-right">--}%
%{--            <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">--}%
%{--                <li class="dropdown-item"><a href="#">${plugin.name} - ${plugin.version}</a></li>--}%
%{--            </g:each>--}%
%{--        </ul>--}%
%{--    </li>--}%
</content>

%{--<div class="svg" role="presentation">--}%
%{--    <div class="grails-logo-container">--}%
%{--        <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>--}%
%{--    </div>--}%
%{--</div>--}%

<div id="content" role="main">
    <div class="container">
        <section class="row colset-2-its">
            <h1>Welcome to the Good Shepherd Medical Management System</h1>

            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>

%{--            <div id="controllers" role="navigation">--}%
%{--                <h2>Available Controllers:</h2>--}%
%{--                <ul>--}%
%{--                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--}%
%{--                        <li class="controller">--}%
%{--                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>--}%
%{--                        </li>--}%
%{--                    </g:each>--}%
%{--                </ul>--}%
%{--            </div>--}%
        </section>
    </div>
</div>

</body>
</html>

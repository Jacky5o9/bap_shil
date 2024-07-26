<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<content tag="nav">
    <li class="dropdown">
        <a href="/#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
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
            <li class="dropdown-item"><a href="/user/index">Sohw User</a></li>
            <li class="dropdown-item"><a href="/user/create">Create user</a></li>
            <li class="dropdown-item"><a href="/user/edit">Edit User</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultation <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="/consultation/index">Consultations</a></li>
            <li class="dropdown-item"><a href="/consultation/create">Make a consultation</a></li>
            <li class="dropdown-item"><a href="/consultation/edit">Edit a consultation</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Illustration <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="/illustration/index">Illustrations</a></li>
            <li class="dropdown-item"><a href="illustration/create">Upload a Illustration</a></li>
            <li class="dropdown-item"><a href="illustration/edit">Edit a Illustration</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Medecine <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="/medecine/index">Medecines</a></li>
            <li class="dropdown-item"><a href="/medecine/create">Give a Medecine</a></li>
            <li class="dropdown-item"><a href="/medecine/edit">Edit a Medecine</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pathology <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="/pathology/index">Pathologies</a></li>
            <li class="dropdown-item"><a href="/pathology/create">Describe a pathology</a></li>
            <li class="dropdown-item"><a href="/pathology/edit">Edit a pathology</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Prescription <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="/prescription/index">Prescriptions</a></li>
            <li class="dropdown-item"><a href="/prescription/create">Give a prescription</a></li>
            <li class="dropdown-item"><a href="prescription/edit">Edit a prescription</a></li>
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

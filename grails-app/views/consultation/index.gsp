<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<table>
    <thead>
    <g:sortableColumn property="id" title="#">ID</g:sortableColumn>
    <th>Desc</th>
    <th>Status</th>
    <th>Creator</th>
    <th>Doctor</th>
    </thead>
    <g:each in="${consultationList}" var="consultation">
        <tr>
            <td>${consultation.id}</td>
            <td>${consultation.description}</td>
            <td>${consultation.status}</td>
            <td>${consultation.creator}</td>
            <td>${consultation.doctor}</td>
        </tr>
    </g:each>
</table>
<g:if test="${consultationCount > params.int('max')}">
    <div class="pagination">
        <g:paginate total="${consultationCount ?: 0}" />
    </div>
</g:if>

</body>
</html>
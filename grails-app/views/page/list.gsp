<%--
    Copyright 2009, 2010 Peter McNeil

    This file is part of Groupie.

    Licensed under the Apache License, Version 2.0 (the "License"); you may not 
    use this file except in compliance with the License. You may obtain a copy 
    of the License at http://www.apache.org/licenses/LICENSE-2.0 
    
    Unless required by applicable law or agreed to in writing, software 
    distributed under the License is distributed on an "AS IS" BASIS, 
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
    See the License for the specific language governing permissions and 
    limitations under the License.
--%>

<%@ page import="com.nerderg.groupie.content.Content" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Content List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Page</g:link></span>
        </div>
        <div class="body">
            <h1>Content List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <th>Author</th>
                   	    
                   	        <g:sortableColumn property="content" title="Content" />
                        
                   	        <g:sortableColumn property="dateCreated" title="Date Created" />
                        
                   	        <th>Item</th>
                   	    
                   	        <g:sortableColumn property="lastUpdated" title="Last Updated" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pageList}" status="i" var="pageItem">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pageItem.current.id}">${fieldValue(bean:pageItem.current, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:pageItem.current, field:'author')}</td>
                        
                            <td><groupie:displayContent content="${pageItem.current}"/></td>
                        
                            <td>${fieldValue(bean:pageItem.current, field:'dateCreated')}</td>
                        
                            <td>${fieldValue(bean:pageItem.current, field:'item')}</td>
                        
                            <td>${fieldValue(bean:pageItem.current, field:'lastUpdated')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pageTotal}" />
            </div>
        </div>
    </body>
</html>

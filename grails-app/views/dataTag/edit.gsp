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

<%@ page import="com.nerderg.groupie.member.DataTag" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Edit DataTag</title>
  </head>
  <body>
    <div class="nav">
      <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
      <span class="menuButton"><g:link class="user" controller="user" action="manage">User Manager</g:link></span>
      <span class="menuButton"><g:link class="list" action="list">DataTag List</g:link></span>
      <span class="menuButton"><g:link class="create" action="create">New DataTag</g:link></span>
    </div>
    <div class="body">
      <h1>Edit DataTag</h1>
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <g:hasErrors bean="${dataTagInstance}">
        <div class="errors">
          <g:renderErrors bean="${dataTagInstance}" as="list" />
        </div>
      </g:hasErrors>
      <g:form method="post" >
        <input type="hidden" name="id" value="${dataTagInstance?.id}" />
        <input type="hidden" name="version" value="${dataTagInstance?.version}" />
        <div class="dialog">
          <table>
            <tbody>

              <tr class="prop">
                <td valign="top" class="name">
                  <label for="description">Description:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:dataTagInstance,field:'description','errors')}">
                  <input type="text" id="description" name="description" value="${fieldValue(bean:dataTagInstance,field:'description')}"/>
                </td>
              </tr>

              <tr class="prop">
                <td valign="top" class="name">
                  <label for="name">Name:</label>
                </td>
                <td valign="top" class="value ${hasErrors(bean:dataTagInstance,field:'name','errors')}">
                  <input type="text" id="name" name="name" value="${fieldValue(bean:dataTagInstance,field:'name')}"/>
                </td>
              </tr>

            </tbody>
          </table>
        </div>
        <div class="buttons">
          <span class="button"><g:actionSubmit class="save" value="Update" /></span>
          <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
        </div>
      </g:form>
    </div>
  </body>
</html>

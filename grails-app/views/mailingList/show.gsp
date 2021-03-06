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

<%@ page import="com.nerderg.groupie.mail.MailingList" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
  <g:set var="entityName" value="${message(code: 'mailingList.label', default: 'MailingList')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
    <span class="menuButton">
      <g:link class="list" controller="mailAccount" action="list">Mail Accounts</g:link>
    </span>
  </div>
  <div class="body">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>
    <div class="dialog">
      <table>
        <tbody>

          <tr class="prop">
            <td valign="top" class="name"><g:message code="mailingList.id.label" default="Id" /></td>

        <td valign="top" class="value">${fieldValue(bean: mailingListInstance, field: "id")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="mailingList.name.label" default="Name" /></td>

        <td valign="top" class="value">${fieldValue(bean: mailingListInstance, field: "name")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="mailingList.rxMailServer.label" default="Rx Mail Server" /></td>

        <td valign="top" class="value"><g:link controller="mailAccount" action="show" id="${mailingListInstance?.rxMailServer?.id}">${mailingListInstance?.rxMailServer?.encodeAsHTML()}</g:link></td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="mailingList.users.label" default="Users" /></td>

        <td valign="top" style="text-align: left;" class="value">
          <ul>
            <g:each in="${mailingListInstance.users}" var="u">
              <li><g:link controller="user" action="manage" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
            </g:each>
          </ul>
        </td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="mailingList.params.label" default="Params" /></td>

        <td valign="top" class="value">${fieldValue(bean: mailingListInstance, field: "params")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="mailingList.txMailServer.label" default="Tx Mail Server" /></td>

        <td valign="top" class="value"><g:link controller="mailAccount" action="show" id="${mailingListInstance?.txMailServer?.id}">${mailingListInstance?.txMailServer?.encodeAsHTML()}</g:link></td>

        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <g:form>
        <g:hiddenField name="id" value="${mailingListInstance?.id}" />
        <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
        <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
      </g:form>
    </div>
  </div>
</body>
</html>

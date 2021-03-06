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

<%@ page import="com.nerderg.groupie.donate.Target" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Target</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Target List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Target</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Target</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${targetInstance}">
            <div class="errors">
                <g:renderErrors bean="${targetInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${targetInstance?.id}" />
                <input type="hidden" name="version" value="${targetInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateSubscribed">Date Subscribed:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:targetInstance,field:'dateSubscribed','errors')}">
                                    <g:datePicker name="dateSubscribed" value="${targetInstance?.dateSubscribed}" precision="minute" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="donations">Donations:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:targetInstance,field:'donations','errors')}">
                                    
<ul>
<g:each var="d" in="${targetInstance?.donations?}">
    <li><g:link controller="donation" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="donation" params="['target.id':targetInstance?.id]" action="create">Add Donation</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullySubscribed">Fully Subscribed:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:targetInstance,field:'fullySubscribed','errors')}">
                                    <g:checkBox name="fullySubscribed" value="${targetInstance?.fullySubscribed}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:targetInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:targetInstance,field:'name')}"/>
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

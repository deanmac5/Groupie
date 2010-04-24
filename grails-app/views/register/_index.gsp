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
<%@ page contentType="text/html;charset=UTF-8" %>

<div class="body">
  <h1>User Registration</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${person}">
    <div class="errors">
      <g:renderErrors bean="${person}" as="list" />
    </div>
  </g:hasErrors>

  <g:form controller="register" action="save" onsubmit="return !Groupie.isAjaxSubmit;">
    <div class="dialog">

      <g:render template="details_form" model="['person' : person]"/>

      <nerderg:inputfield label="Enter Code" field="captcha" size="8">
        <img src="${createLink(controller:'captcha', action:'index')}" align="absmiddle"/>
      </nerderg:inputfield>

    </div>

    <div class="buttons">
      <span class="formButton">
        <input class='save' type="submit" value="Register" onclick="Groupie.ajaxSubmitAndReplace(this)"/>
      </span>
    </div>

  </g:form>
</div>

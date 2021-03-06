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
<div class="dialog sponsor">
  <g:render template="trail" model="['step': '4']"/>

  <g:if test="${message}">
    <div class="message">${message}</div>
  </g:if>

  <groupie:show name="Payment Details"/>

  <div class="sponsorshipRef">Your Sponsorship Reference is "SP${sponsorship.id}"</div>

  <g:form action="child" onsubmit="return !Groupie.isAjaxSubmit;">
    <div class="buttons">
      <input id="_eventId_next" type="submit" value="Finished" name="_eventId_next" onclick="Groupie.isAjaxSubmit = false;"/>
    </div>
  </g:form>
</div>
<nerderg:cleanflowscope flow="${this}"/>

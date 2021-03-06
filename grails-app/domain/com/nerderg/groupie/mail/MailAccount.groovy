/*
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
*/

package com.nerderg.groupie.mail

class MailAccount {

    String name
    String email
    String server
    String username
    String password
    String port
    String type
    boolean ssl

    String toString() {
        return "$name - $username"
    }

    static constraints = {
        name(blank: false, unique: true, maxSize: 100)
        email(blank: false, email: true, maxSize: 100 )
        server(blank: false, maxSize: 100)
        username(blank: false, maxSize: 100)
        password(blank: false, maxSize: 255)
        port(blank: false, maxSize: 5)
        type (inList:['imap','pop'])
    }
}

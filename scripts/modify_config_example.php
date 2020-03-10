#!/usr/local/bin/php                                                            
<?php                                                                           
                                                                                
/*                                                                              
 * Copyright (C) 2018 Fabian Franz                                              
 * All rights reserved.                                                         
 *                                                                              
 * Redistribution and use in source and binary forms, with or without           
 * modification, are permitted provided that the following conditions are met:  
 *                                                                              
 *  1. Redistributions of source code must retain the above copyright notice,   
 *    this list of conditions and the following disclaimer.                     
 *                                                                              
 * 2. Redistributions in binary form must reproduce the above copyright         
 *    notice, this list of conditions and the following disclaimer in the       
 *    documentation and/or other materials provided with the distribution.      
 *                                                                              
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,   
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY     
 * AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE   
 * AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,   
 * OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF      
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS     
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)      
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   
 * POSSIBILITY OF SUCH DAMAGE.                                                  
 */                                                                             
                                                                                
require_once('config.inc');
require_once('auth.inc');

print_r($config);

$root_user = &getUserEntry("root2");
print($root_user['name']);
print("\n");
$hash_pwd = password_hash ("eole3",  PASSWORD_BCRYPT);
print($hash_pwd);
print("\n");
$root_user['password'] = $hash_pwd;
$base64_auth_keys = base64_encode ("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVWQ1sbO+EasDrJBVkTNTela7iO15qziDRLnRe8n8DAK14WHHU8h907UE20BM9Z95Y42SZ4vk738RfGxzq5WgV8fnVTQdoPObdzTx8ArdVj4lrMbpnoYWkjAb0cCAw6l0JeRztWMjW45waJ5RAP3HRvdVvgmc0yIYsZzsOpD+RjnKzNLiXQH13KnuusAhUFVvSCrAu+qoW05VJ4sWElSf++6KqPFFb6Nw5SPYsEgFPNwolyxBN3eAZC7rjhEObcfDjZw8hn43u7z+3cvHy2ME/oEznWJUiimUbJFN7plle+1mwkcnbMCNKCiu492T0Jv6dib2ARotUXZSZRgjYM247 barco@eole-barco");
print($base64_auth_keys);
print("\n");
$root_user['authorizedkeys'] = $base64_auth_keys;

write_config('Change root2 password');

# ChaosServer
Sinatra app for testing bad requests on the server.

Similar to https://github.com/kennethreitz/httpbin, but simpler. Just pass as the following params to control the response:

* sleep: time in seconds that the query will delay the reponse
* status: the status code
* response_body: the response of the request. Defaults to "response_body"
* repeat: how many times response_body will be repeated. Defaults to 1

Meta
----

Created by Daniel Ribeiro.

Released under the MIT License: http://www.opensource.org/licenses/mit-license.php

http://github.com/danielribeiro/ChaosServer

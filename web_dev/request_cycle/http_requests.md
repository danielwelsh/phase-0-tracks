#HTTP Requests Research 


1. 200 OK
Like mentioned in the video 200 is the most common and means that the request was completed without any detected erros. 

2. 204 No Conent
The server has fufilled the HTTP request but no entity-body was returned. Metainformation could be returned and updated.

3. 301 Moved Permanently
The requested resource has been assigned a new URI.

4. 302 Found
The requested reousece has been assigned a new URI only temporarily. 

5. 404 Not Found
The server has not found anything that matches the requested URI

6. 405 Method Not Allowed
The request method is not allowed for the resource identified.




#Request Methods

1. POST
Requests that a web server accept the data enclosed in the body of the request message, most likely storing it. It is used when uploading a file or when submitting a completed web form. POST requests can not be bookmarked. Post is safer than GET because the parameters are not saved in the browser history or web server logs. Used to send passwords or other sensitive information. 

2. GET
Retrieves information from the server. As part of a GET request some information can be passed to the server witin the qury string. This information can include search tersm, dates, location, etc that defines what request is being made.  GET requests can be bookmarked. GET is less secure because the data is sent as part of the URL. Therefore, it gets saved into the browser history and server logs in plain text. Used to send other non sensitive information. 

3. HEAD
Retrieves HTTP headers like GET does, but does not retrieve the document body.

4. DELETE
Deletes the specified resource. 

5. OPTIONS
Returns the HTTP methods that are supported by the server

6. CONNECT
Converts the request connection to a transparent TCP/IP tunnel

#What is a cookie?
A cookie is a peice of data that is sent over the internet and stored on a users local computer. It can then be used locally and used to increase the speed of a users online experience as they keep a large amount of data available on their local machine. 

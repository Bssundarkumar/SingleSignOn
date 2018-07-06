# SingleSignOn
Single sign on using spring boot


Single Sign On using Sprong Boot, JWT 

Here We have a Server which can run on Port 8080 and 2 Clients which can run in 8081 and 8082 respectively

1. a) Server: Single Sign On Authentication Server
   b) CLients: These are different clients which will have Single Sign On
2. Start the Server and Clients and run using localhost:8081/ or localhost:8082

	can Login in to the client Once you login with Client1 it will automatically helps in login with Client2

3. Here First the first login we are creating Json Web Token associated with the user and we are storing that in browser cookie.
4. Now for the rest of the clients they will check for the token in the cookies. If the token is available it will no required to be login.
5. To generate/parse JWT token we created class JwtUtil.java

6. To read and store in cookies we created class CookieUtil.java
    cookie.setSecure(secure): secure=true => work on HTTPS only.
	cookie.setHttpOnly(true): invisible to JavaScript.
	cookie.setMaxAge(maxAge): maxAge=0: expire cookie now, maxAge<0: expire cookiie on browser exit.
	cookie.setDomain(domain): visible to domain only.
	cookie.setPath("/"): visible to all paths.
7. JwtFilter enforces SSO. If JWT Token's not existed (unauthenticated), redirects to Authentication Service. If JWT Token's existed (authenticated), extracts user identity and forwards the request

8. For simplicity used a HashMap (credentials) as user database in LoginController.java
	
	In this Application the usernames and passwords are:
			     a)  satya        password
 			     b)  sundar       password
			     c)  kumar        password

--------------------------------------------------------------------------------------------
Technology used

JDK 1.7+
Maven 3+

Stack

Java
Single Sign On
JSON Web Token
Spring Boot
Freemarker

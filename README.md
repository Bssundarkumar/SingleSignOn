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


5L8M5U21EZ-eyJsaWNlbnNlSWQiOiI1TDhNNVUyMUVaIiwibGljZW5zZWVOYW1lIjoiRmFubmllIE1hZSIsImFzc2lnbmVlTmFtZSI6IlNhdHlhICBTdW5kYXIgS3VtYXIgQmFuZGlndXB0YXB1IiwiYXNzaWduZWVFbWFpbCI6InNhdHlhX3N1bmRhcl9rdW1hcl9iYW5kaWd1cHRhcHVAZmFubmllbWFlLmNvbSIsImxpY2Vuc2VSZXN0cmljdGlvbiI6IiIsImNoZWNrQ29uY3VycmVudFVzZSI6dHJ1ZSwicHJvZHVjdHMiOlt7ImNvZGUiOiJJSSIsImZhbGxiYWNrRGF0ZSI6IjIwMjAtMTItMDYiLCJwYWlkVXBUbyI6IjIwMjEtMTItMDUiLCJleHRlbmRlZCI6ZmFsc2V9LHsiY29kZSI6IlBEQiIsImZhbGxiYWNrRGF0ZSI6IjIwMjAtMTItMDYiLCJwYWlkVXBUbyI6IjIwMjEtMTItMDUiLCJleHRlbmRlZCI6dHJ1ZX0seyJjb2RlIjoiUFdTIiwiZmFsbGJhY2tEYXRlIjoiMjAyMC0xMi0wNiIsInBhaWRVcFRvIjoiMjAyMS0xMi0wNSIsImV4dGVuZGVkIjp0cnVlfSx7ImNvZGUiOiJQR08iLCJmYWxsYmFja0RhdGUiOiIyMDIwLTEyLTA2IiwicGFpZFVwVG8iOiIyMDIxLTEyLTA1IiwiZXh0ZW5kZWQiOnRydWV9LHsiY29kZSI6IlBQUyIsImZhbGxiYWNrRGF0ZSI6IjIwMjAtMTItMDYiLCJwYWlkVXBUbyI6IjIwMjEtMTItMDUiLCJleHRlbmRlZCI6dHJ1ZX0seyJjb2RlIjoiUFBDIiwiZmFsbGJhY2tEYXRlIjoiMjAyMC0xMi0wNiIsInBhaWRVcFRvIjoiMjAyMS0xMi0wNSIsImV4dGVuZGVkIjp0cnVlfSx7ImNvZGUiOiJQUkIiLCJmYWxsYmFja0RhdGUiOiIyMDIwLTEyLTA2IiwicGFpZFVwVG8iOiIyMDIxLTEyLTA1IiwiZXh0ZW5kZWQiOnRydWV9LHsiY29kZSI6IlBTVyIsImZhbGxiYWNrRGF0ZSI6IjIwMjAtMTItMDYiLCJwYWlkVXBUbyI6IjIwMjEtMTItMDUiLCJleHRlbmRlZCI6dHJ1ZX0seyJjb2Rl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

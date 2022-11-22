# Usage

1. Send a post request to /authenticate to get a bearer token that can be used with rest calls
  ```
  curl --location --request POST 'http://localhost:8080/authenticate' \
  --header 'Content-Type: application/json' \
  --data-raw '{"username": "javainuse", "password": "password"}'
  ```

2. Copy the Token from above command and use with /hello url
  ```
  curl --location --request POST 'localhost:8080/hello' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqYXZhaW51c2UiLCJleHAiOjE2NjkwNzgzNTIsImlhdCI6MTY2OTA2MDM1Mn0.Xd4rxqvAvv1SP_ydvwfI8yFntFY6fvHCMbaVFueeo7ysb67f8RfP0V_p0tJmwWVBjT9Le33UEvhOgQcVe5N98Q'
  ```
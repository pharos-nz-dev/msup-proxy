# msup-proxy
Dockerized OpenResty based proxy for handling document redirects  
Single endpoint API requires a `redirect` query parameter that accepts a URL in url to internally fetch. Accepts URL in clear or url encoded format.  
example: https://localhost?redirect=https%3A%2F%2Fwww.google.com%2F

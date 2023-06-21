link: [https://launchschool.com/lessons/cc97deb5/assignments/83ae67aa]
1. What are the required components of an HTTP request? What are the additional optional components?
	1. ChatGPT:   An HTTP request consists of several components, some of which are required, while others are optional. Here are the main components of an HTTP request:

1. **Request line**: This is the first line of the HTTP request and contains three parts:
    
    - **HTTP method**: Specifies the action to be performed on the resource. Common methods include GET, POST, PUT, DELETE, etc.
    - **Request target**: Represents the URL or path of the resource being requested.
    - **HTTP version**: Indicates the version of the HTTP protocol being used, such as HTTP/1.1.
2. **Headers**: Headers provide additional information about the request and are represented as key-value pairs. Some important headers include:
    
    - **Host**: Specifies the domain name or IP address of the server.
    - **Content-Type**: Describes the format of the request payload (e.g., application/json, application/x-www-form-urlencoded).
    - **Accept**: Informs the server about the preferred response format.
    - **User-Agent**: Identifies the client making the request (e.g., web browser, mobile app).
    - **Authorization**: Used for authentication and includes credentials or tokens.
    - **Cookies**: Used to maintain session state between client and server.
3. **Body**: The body of an HTTP request contains the data being sent to the server, typically for methods like POST or PUT. The body can be empty or contain data in various formats, such as JSON, XML, or form data.
    

In addition to these required components, there are optional components that can be included in an HTTP request:

1. **Query parameters**: These are appended to the URL as key-value pairs, typically used with GET requests to provide additional information or filter results.
    
2. **URL path parameters**: These are placeholders in the URL path that are replaced with actual values, often used to identify specific resources.
    
3. **Conditional headers**: Headers like If-Match, If-None-Match, If-Modified-Since, etc., allow the client to perform conditional requests based on certain conditions or timestamps.
    
4. **Request cookies**: Cookies can be included in the request header to provide session information or server-side state.
    
5. **Custom headers**: Developers can include custom headers specific to their application or requirements.
    

It's important to note that not all components are required for every HTTP request. The specific components used depend on the purpose and requirements of the request.

2. LS: The HTTP method and the path are required, and form part of what is known as the start-line or request-line. As of HTTP 1.0, the HTTP version also forms part of the request-line. The `Host` header is a required component since HTTP 1.1. Parameters, all other headers, and message body are optional.

Technically speaking the 'path' portion of the request-line is known as the 'request-URI', and incorporates the actual path to the resource and the optional parameters if present. In practice, most people simply refer to this part of the request-line as the 'path'.

LS:  A status line with a status code is required. Headers and body are optional.

3. What determines whether a request should use `GET` or `POST` as its HTTP method?

ChatGPT:

The choice between using the GET or POST HTTP method for a request depends on the semantics and intended purpose of the request. The key factors to consider when deciding between GET and POST are as follows:

1. **Purpose of the request**: GET is used for retrieving or fetching a resource from a server, typically by providing parameters in the URL. It is meant for safe, idempotent, and cacheable operations. POST, on the other hand, is used for submitting data to be processed by the server, such as submitting a form, creating a new resource, or triggering a state change on the server.
    
2. **Data handling**: GET requests should not have a request body, and all parameters are appended to the URL as query parameters. The data is visible in the URL, which means it can be bookmarked, cached, or shared easily. POST requests, however, can include a request body that carries the data to be processed by the server. The data is not visible in the URL, providing more privacy and security.

LS:  **`GET` requests should only retrieve content from the server.** They can generally be thought of as "read only" operations, however, there are some subtle exceptions to this rule. For example, consider a webpage that tracks how many times it is viewed. `GET` is still appropriate since the main content of the page doesn't change.

**`POST` requests involve changing values that are stored on the server.** Most HTML forms that submit their values to the server will use `POST`. Search forms are a noticeable exception to this rule: they often use `GET` since they are not changing any data on the server, only viewing it.
The Internet

Have a broad understanding of what the internet is and how it works

Understand the characteristics of the physical network, such as latency and bandwidth

Have a basic understanding of how lower-level protocols operate

Know what an IP address is and what a port number is

Have an understanding of how DNS works

Understand the client-server model of web interactions, and the role of HTTP as a protocol within that model

  

TCP & UDP

Have a clear understanding of the TCP and UDP protocols, their similarities and differences

Have a broad understanding of the three-way handshake and its purpose

Have a broad understanding of flow control and congestion avoidance

  

URLs

Be able to identify the components of a URL, including query strings

Be able to construct a valid URL

Have an understanding of what URL encoding is and when it might be used

  

HTTP and the Request/Response Cycle

Be able to explain what HTTP requests and responses are, and identify the components of each

Be able to describe the HTTP request/response cycle

Be able to explain what status codes are, and provide examples of different status code types

Understand what is meant by 'state' in the context of the web, and be able to explain some techniques that are used to simulate state

Explain the difference between GET and POST, and know when to choose each

  

Security

Have an understanding of various security risks that can affect HTTP, and be able to outline measures that can be used to mitigate against these risks

Be aware of the different services that TLS can provide, and have a broad understanding of each of those services


Internet is logical because IP or similar protocols are logical systems that identify the source and destination.
Link is physical because it depends on the physical transfer of data between devices
Internet and Link are point-to-point because they deal with the transfer of data across all networked devices between the source and destination (i.e., they deal with each point enroute between source and destination)
In contrast, Application and Transport are end-to-end because they deal with the connection of the end devices or applications rather than the devices enroute to them (by extension, not with the points in the route)

https://launchschool.com/posts/f8bf202a

ow does this translate to the TCP/IP chart? Is it like this:

Application => HTTP request

Transport => TCP (segment)

Internet => IP packet

Link/Data Link => Ethernet Frame => then sent via physical network

To add some more context here, at a conceptual level, IP is end to end (i.e. it only cares about the two end points in the communication, such as the client and server, not particularly about how the packets are routed through the network). With Ethernet though, there's decapsulation and re-encapsulation at every point on the journey. So when a device such as a router receives a frame that has an IP packet as its payload, it decapsulates the packet, and re-encapsulates it it into a new frame for the next 'hop' on its journey. This level of detail is really a network engineering level concern though, so I wouldn't worry about it too much.
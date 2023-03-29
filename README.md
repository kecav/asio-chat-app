# Chat App using asio

Commands :
```
make 
make clean

./build/server <port1> <port2> ..
./build/client <hostname> <port>
```

make : makes and stores .o and .exe file in ./build directory
<br/>
make clean : cleans .o and .exe files
<br/>

To run server, you can specify the listening port(s) like :
```
./build/server 5001 5002 5003
```
The above command makes server to listen on port 5001,5002 and 5003
<br/>

To run clent, it needs a hostname and a port to talk like below :
```
./build/client hostname 5001
```
Here, the client is runnning on localhost and port 5001.
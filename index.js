const http = require('http');

const PORT = 3020;

const server = http.createServer((req, res) => {
    res.end('Hello from docker + debian!');
});

server.listen(PORT, () =>{
    console.log(`server is running on http://localhost:${PORT}`);
});

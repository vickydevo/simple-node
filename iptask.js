const http = require('http');
const os = require('os');

const server = http.createServer((req, res) => {
    if (req.url === '/') {
        const ipAddress = getIPAddress();
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.write(`<html><body><p>Welcome to Host IP : ${ipAddress}. This is the page that is visible.</p></body></html>`);
        res.end();
    }
});

server.listen(3000, () => {
    console.log('Server is running on port 3000');
});

function getIPAddress() {
    const interfaces = os.networkInterfaces();
    for (const dev in interfaces) {
        for (const details of interfaces[dev]) {
            if (details.family === 'IPv4' && !details.internal) {
                return details.address;
            }
        }
    }
    return '127.0.0.1';
}

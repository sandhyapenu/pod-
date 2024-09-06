const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  if (req.url === '/'){
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('welcome to the Home page!\n');
  }else if (req.url === '/about'){
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('this is the about page!\n');
  }
  else if (req.url === '/data'){
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  const data = { key: ' value' };
  res.end(JSON.stringify(data));
	    } else {
    res.statusCode = 404;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Page not found\n');
  }
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});


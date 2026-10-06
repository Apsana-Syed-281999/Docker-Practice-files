const http = require("http");
const os = require("os");

const port = Number(process.env.PORT || 3000);

const server = http.createServer((request, response) => {
  if (request.url === "/" && request.method === "GET") {
    response.writeHead(200, { "Content-Type": "application/json" });
    response.end(JSON.stringify({
      message: "Hello from a Node.js Docker container!",
      hostname: os.hostname()
    }));
    return;
  }

  response.writeHead(404, { "Content-Type": "application/json" });
  response.end(JSON.stringify({ error: "Not found" }));
});

server.listen(port, "0.0.0.0", () => {
  console.log(`Server listening on port ${port}`);
});


import net from "node:net";
const clients = [];

const server = net.createServer((socket) => {
  // const id = `${socket.remoteAddress}:${socket.remotePort}`;
  let id = socket.remotePort;
  console.log(`Client connected: ${id}`);

  clients.push(socket);

  socket.write("************* Welcome to the TCP Chat ************* \n");
  socket.write("Type your message and press enter to broadcast.\n");

  socket.on("data", (chunk) => {
    const message = chunk.toString().trim();

    clients.forEach((cli) => {
      if (cli !== socket) {
        cli.write(`[${id}] says: ${message}\n`);
      }
    });
  });

  socket.on("end", () => {
    const index = clients.indexOf(socket);
    if (index !== -1) clients.splice(index, 1);

    console.log(`Client disconnected: ${id}`);
    console.log(`Total connected clients: ${clients.length}`);
  });

  socket.on("error", (err) => {
    console.log(`Socket error from ${id}: ${err.message}`);
  });
});

server.on("error", (err) => {
  console.log("Server error:", err.message);
});

server.listen(4000, () => console.log("Server is running on port 4000"));

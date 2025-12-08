// client code

// import readline from "node:readline/promise";
import readline from "readline/promises";
import net from "node:net";

const HOST = "localhost";
const PORT = 1337;
const host = 4000;
console.log(host, ' host' );
async function startChat() {
  //
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: ">",
  });

  const answer = await rl.question("How are you ? ");

  // open a tcp connection

  const client = net.createConnection(
    {
      host: HOST,
      port: PORT,
    },
    () => console.log(`\nListening at port ${PORT} \n`)
  );

  // Get username
  const username = await rl.question("Enter Username: ");
  // Get token || Password
  const token = await rl.question("Enter token: ");

  const authCommand = client.on("data", (data) => {
    console.log("Received: ", data.toString());
  });
}

function buildCommand(command, headers, body) {
  /**
   * CHAT/1.0 <COMMAND>
  Header1: Value1
  Header2: Value2
  Content-Length: <number>

  <body>
   */

  const startLine = `CHAT/1.0 ${command}`;
}


startChat();

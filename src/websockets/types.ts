import { Server as IOServer, Socket as IOSocket } from "socket.io";
import { ClientEvents, ServerEvents } from "../lib/websockets";

export type Server = IOServer<ClientEvents, ServerEvents>;
export type Socket = IOSocket<ClientEvents, ServerEvents>;

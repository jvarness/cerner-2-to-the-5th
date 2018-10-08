package org.jvarness.ktor
import io.ktor.application.Application
import io.ktor.application.install
import io.ktor.http.cio.websocket.Frame
import io.ktor.http.cio.websocket.readText
import io.ktor.routing.routing
import io.ktor.websocket.WebSockets
import io.ktor.websocket.webSocket
// cerner_2^5_2018
fun main(args: Array<String>): Unit = io.ktor.server.netty.DevelopmentEngine.main(args)
@kotlin.jvm.JvmOverloads
fun Application.module(testing: Boolean = false) {
    install(WebSockets)
    routing {
        webSocket("/") {
            outgoing.send(Frame.Text("Send quit to quit."))
            var done = false
            while(!done) {
                val frame = incoming.receive()
                if (frame is Frame.Text) {
                    val text = frame.readText()
                    if("quit".equals(text, true)) {
                        outgoing.send(Frame.Text("Bye-bye!"))
                        done = outgoing.close()
                    }
                    else outgoing.send(Frame.Text(text))
                }
            }
        }
    }
}

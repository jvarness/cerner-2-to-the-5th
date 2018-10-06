package org.jvarness.ktor

import io.ktor.application.*
import io.ktor.http.ContentType
import io.ktor.response.respondText
import io.ktor.routing.routing
import io.ktor.routing.*

fun main(args: Array<String>): Unit = io.ktor.server.netty.DevelopmentEngine.main(args)
// cerner_2^5_2018
@Suppress("unused") // Referenced in application.conf
@kotlin.jvm.JvmOverloads
fun Application.module(testing: Boolean = false) {
    routing {
        get("/") {
            call.respondText("{\"message\":\"Hello Kotlin!\"}", ContentType.Application.Json)
        }
    }
}


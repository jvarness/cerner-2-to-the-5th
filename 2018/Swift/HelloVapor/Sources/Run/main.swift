import Vapor

func fibonacci(term1: Int, term2: Int, iterations: Int) -> Int {
    if (iterations == 0) {
        return 1
    }
    return fibonacci(term1: term2, term2: term1 + term2, iterations: iterations - 1) + term1
}

let app = try Application()
let router = try app.make(Router.self)

router.get("fibonacci", Int.parameter) { req -> HTTPResponse in
    let iteration : Int = try req.parameters.next()
    if (iteration < 0) {
        return HTTPResponse(status: .badRequest, body: "Provide a parameter that's a positive integer.")
    }
    return HTTPResponse(status: .ok, body: String(fibonacci(term1: 0, term2: 1, iterations: iteration)))
}

try app.run()

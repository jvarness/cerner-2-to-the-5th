# hello-micro

A small microservice using [micro](https://github.com/zeit/micro) by [Zeit](https://zeit.co/).

# How to use

Just start the server:

```
npm start
```

You can then use `curl` to get a response:

```
$ curl -s http://localhost:3000
Hello, world!
```

You can even try sending down your name:

```
$ curl -s -d '{"name":"Jake"}' -H "Content-Type: application/json" localhost:3000
Hello, Jake!
```
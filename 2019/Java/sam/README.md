# sam

In Java 8, [functional interfaces](https://docs.oracle.com/javase/tutorial/java/javaOO/lambdaexpressions.html) can be replaced in code with Lambda Expressions.

Functional Interfaces are interfaces which implement a single abstract method. Java will infer the lambda as an anonymous replacement for a SAM.

In this example, we utilize a lambda expression to represent and instance of `Runnable`, construct a new instance of `Thread` with it, and immediately run the thread.

## How to run

Install at least [JDK 8](https://adoptopenjdk.net/), then run:

```
javac Sam.java
java -cp . Sam
```
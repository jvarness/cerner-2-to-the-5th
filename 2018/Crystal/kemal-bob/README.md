# kemal-bob

The same as my Go submission, but this time it's implemented as a Web Socket in [Crystal](https://crystal-lang.org/) using [Kemal](https://github.com/kemalcr/kemal).

# How to use

Make sure you have the latest Crystal version, then run the following commands on your machine:

```
crystal deps
crystal run bob.cr
```

This will open a socket at this url: `ws://localhost:3000/bob`.

You can connect to the socket and send it messages using [wscat](https://www.npmjs.com/package/wscat).

# stargazers

Gaze into the stars of any Github repository using C#!

## How to run

Install [`dotnet`](https://dotnet.microsoft.com/), and make sure to get at least 3.0, as this project depends on C# 7.1.

Then, once you have that installed, run:

```
dotnet run -- <user_name>/<repo_name>
```

Where `<user_name>` is a Github user name or organization, and `<repo_name>` is the name of a repository owned by that org/user. Examples include:

```
$ dotnet run -- facebook/react
The repo facebook/react has 136554 stargazers!

$ dotnet run -- jvarness/cerner-2-to-the-5th
The repo jvarness/cerner-2-to-the-5th has 3 stargazers!
```

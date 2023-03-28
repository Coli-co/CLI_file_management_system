# CLI application

Build command line interface by Node.js, and it's about the subject of file management system.

### Start to build CLI

- set: make run.sh file executable
- install: set project folder globally so that cli of `tim` can be run from anywhere

```
  make all
```

- Add `tim` before any STDIN, like following example

```
  tim register user1 # stdin
  Success # stdout
```

- When CLI of `tim` is no longer used, remove set of project folder and CLI globally

```
  make clean
```

### Built with

##### Make sure you have following environment.

- OS: Windows 10
- Nodejs: 14.16.0
- Git: 2.37.3.windows.1
- Bash: version 5.1.16(1)-release
- IDE: VS Code 1.76.2

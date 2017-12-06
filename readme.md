<div align="center">
	<h1>Example Factorial</h1>
	<img src="https://i.imgur.com/iQhs5C8.png" title="source: imgur.com" />
</div>

---

> This project I made to just for fun and how to setup C project and understand `Makefile`. The program using recursive function. I know there are so many different ways to implement [factorial](https://en.wikipedia.org/wiki/Factorial) design too.

## Getting Started

```console
$ git clone https://github.com/iguntur/example-c-factorial
$ cd example-c-factorial
```

### Compile

Inside of project directory, we need to compile all source files to generate the `binary` file.
The `binary` file will be generated inside of `bin` directory.

```console
$ make
```

### Usage

#### Step 1

To execute the `binary` program, we need to add `./bin` directory to the environment `PATH`

```
$ export PATH="$PATH:./bin"
```

or, change the process working directory (`pwd`) to the `./bin` directory instead.

```
$ cd bin
```

#### Step 2

```
$ factorial --help
  factorial [option] <input>

  Option
    --help        Display this messages and exit.

  Example
    $ factorial 5
```

##### Example

```console
$ factorial 5
  5! = 120
```


## License

MIT © [Guntur Poetra](https://github.com/iguntur)

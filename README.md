# Mailing List Dump

Simple Scripts for dumping Mailing lists

## Usage

`make` wraps 2 scripts, `fetch.sh` and `unzip.sh`.

Download the bitcoin-dev mailing list with:

```bash
$ make bitcoin
```

Download the lightning-dev mailing list with:

```bash
$ make lightning
```

### Further Instructions

Download all files at Gzip'd hyperlinks using `fetch.sh`.
First argument is the mailing list html page.
Save files in `archives` directory.

```bash
$ ./fetch.sh https://lists.linuxfoundation.org/pipermail/lightning-dev/
```

Unzip all files in `archives` directory using `unzip.sh`.
Works on OSX.

```bash
$ ./unzip.sh
```

Writes files to `raw` directory.

Enjoy reading!

## TODO

- Be portable

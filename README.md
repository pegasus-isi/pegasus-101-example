# Pegasus 101 Example

## Clone Repository

```sh
git clone git@github.com:pegasus-isi/pegasus-101-example.git
cd pegasus-101-example
```

## Run locally

```sh
$ ./main.sh example/human-1-dna.csv count-1.txt
$ cat count-1.txt
48

$ ./main.sh example/human-2-dna.csv count-2.txt
$ cat count-2.txt
5999149
```

## Task

1. Recreate `main.sh` with Pegasus WMS
1. Modify the workflow to replace `bin/record-mutations.sh` command with one contained in a Docker container.

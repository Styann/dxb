# dxb

## description
dxb (decimal hex binary) is a command line program written in c3 to convert numbers to decimal, hexadecimal and binary very quickly.

## install
```sh
git clone https://github.com/Styann/dxb.git
```

```sh
c3c build
```

```sh
# put path in ~/.bashrc
PATH=$PATH:/path/to/dxb/build
```

## usage
```sh
dxb <numbers...> [options]

Options:
    -h, --help
    -v, --version
```

### example
```sh
$ dxb 160 0xFF 0b1001
160  =  0xA0  =  0b10100000
255  =  0xFF  =  0b11111111
9  =  0x9  =  0b1001
```

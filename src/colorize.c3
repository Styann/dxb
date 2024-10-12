module colorize;
import std::io;

enum Color : int (String code) {
    BLACK   = "\x1B[30m",
    RED     = "\x1B[31m",
    GREEN   = "\x1B[32m",
    YELLOW  = "\x1B[33m",
    BLUE    = "\x1B[34m",
    MAGENTA = "\x1B[35m",
    CYAN    = "\x1B[36m",
    WHITE   = "\x1B[37m",
    RESET   = "\x1B[00m"
}

fn void printn(String str, Color color) {
    io::printfn("%s%s%s", color.code, str, Color.RESET.code);
}

fn void print_err(String str) {
    io::printfn("%sError: %s%s", Color.RED.code, str, Color.RESET.code);
}

fn void print_warn(String str) {
    io::printfn("%sWarning: %s%s", Color.MAGENTA.code, str, Color.RESET.code);
}

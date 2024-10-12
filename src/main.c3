module dxb;
import std::io;

import colorize;
import option;

fn void help_action() {
    io::printfn("dxb <numbers...> [options]\n");
    io::printfn("   Options:");
    io::printfn("       -h, --help");
    io::printfn("       -v, --version");
}

fn int main(String[] args) {
    Option help = { "-h", "--help" };
    Option version = { "-v", "--version" };

    for (uint i = 1; i < args.len; i++) {
        String arg = args[i];

        if (help.match(arg)) {
            help_action();
            return 0;
        }
        else if (version.match(arg)) {
            io::printfn("dxb v0.1.0");
            return 0;
        }
    }

    for (uint i = 1; i < args.len; i++) {
        String arg = args[i];

        // bool is_signed = arg.starts_with("-") || arg.ends_with("u");
        int base = 10;

        if (arg.starts_with("0x")) {
            arg = arg.strip("0x");
            base = 16;
        }
        else if (arg.starts_with("0b")) {
            arg = arg.trim("0b");
            base = 2;
        }

        uint128! x = arg.to_uint128(base);

        if (catch excuse = x) {
            io::printfn("%sError: %s%s", Color.RED.code, excuse, Color.RESET.code);
        }
        else {
            io::printfn("%d  =  0x%X  =  0b%b", x, x, x);
        }
    }

    return 0;
}

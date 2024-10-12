module option;

struct Option {
    String shortname;
    String longname;
}

fn bool Option.match(Option* this, String arg) {
    return (arg == this.shortname || arg == this.longname);
}

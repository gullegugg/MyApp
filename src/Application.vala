/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 Gustav Hagland <gustav.hagland@gmail.com>
 */
public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.gullegugg.MyApp",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World!"
        };
        var btn_hello = new Gtk.Button.with_label("Click me!") {
            margin = 12
        };
        btn_hello.clicked.connect (() => {
            btn_hello.label = "Hallow c:";
            btn_hello.sensitive = false;
        });
        var lbl_hello = new Gtk.Label("Nämen tjena");
        main_window.add(lbl_hello);
        main_window.add(btn_hello);
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        return new MyApp ().run(args);
    }
}

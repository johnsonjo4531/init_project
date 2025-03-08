use bevy::prelude::*;

fn main() {
    App::new().add_systems(Startup, greeting).run();
}

fn greeting() {
    println!("Hello Bevy!");
}

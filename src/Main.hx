import states.*;
import luxe.GameConfig;
import luxe.Input;
import luxe.States;

class Main extends luxe.Game {

    var machine : States;

    override function config(config:luxe.GameConfig) {

        if(config.user.window != null) {
            if(config.user.window.width != null) {
                config.window.width = Std.int(config.user.window.width);
            }
            if(config.user.window.height != null) {
                config.window.height = Std.int(config.user.window.height);
            }
        }

        config.window.title = config.user.window.title;

        config.preload.textures.push({ id:"assets/blue_ship.png" });

        return config;

    } //config

    override function ready() {

        connect_input();
        machine = new States({ name:'statemachine' });
        machine.add(new MenuState('menu_state'));
        machine.add(new GameState('game_state'));
        Luxe.on(init, function(_) {
            machine.set('game_state');
        });

    } //ready

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {

    } //update

    function connect_input() {

        Luxe.input.bind_key('up', Key.up);
        Luxe.input.bind_key('up', Key.key_w);
        Luxe.input.bind_key('right', Key.right);
        Luxe.input.bind_key('right', Key.key_d);
        Luxe.input.bind_key('down', Key.down);
        Luxe.input.bind_key('down', Key.key_s);
        Luxe.input.bind_key('left', Key.left);
        Luxe.input.bind_key('left', Key.key_a);
        Luxe.input.bind_key('space', Key.space);

    } //connect_input

} //Main

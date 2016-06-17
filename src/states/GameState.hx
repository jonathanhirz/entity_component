package states;
import luxe.States;

import entity.Ship;

class GameState extends State {

    public function new( _name:String ) {
        super({ name:_name });
    } //new

    override function init() {


    } //init

    override function onenter<T>( _value:T ) {

        var ship = new Ship();

    } //onenter

    override function onleave<T>( _value:T ) {


    } //onleave

    override function update(dt:Float) {


    } //update

} //GameState
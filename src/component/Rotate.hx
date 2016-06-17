package component;

import luxe.Component;
import luxe.Sprite;

class Rotate extends Component {

    var attached_entity : Sprite;

    override function init() {

        attached_entity = cast entity;

    } //init

    override function update(dt:Float) {

        attached_entity.rotation_z += 10 * dt;

    } //update
    

} //Rotate
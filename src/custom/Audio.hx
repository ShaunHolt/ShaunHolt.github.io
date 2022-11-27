package custom;

import haxe.ui.backend.html5.HtmlUtils;
import haxe.ui.containers.Box;
import js.Browser;
import js.html.SourceElement;
import js.html.AudioElement;


class Audio extends Box {
    private var _audio:AudioElement = null;
    private var _source:SourceElement = null;
    
    private override function onReady() {
        super.onReady();
        _audio = Browser.document.createAudioElement();
        _audio.style.objectFit = "fill";
        element.appendChild(_audio);
        invalidateComponentLayout();
        if (_file != null && _source == null) {
            changeSource(_file);
        }
    }
    
    public function play() {
        if (_audio != null) {
            _audio.play();
        }
    }
    
    public function pause() {
        if (_audio != null) {
            _audio.pause();
        }
    }
    
    private var _file:String;
    public var file(get, set):String;
    private function get_file() {
        return _file;
    }
    private function set_file(value:String):String {
        _file = value;
        if (_audio != null) {
            changeSource(_file);
        }
        return value;
    }
    
    private function changeSource(src:String) {
        if (_source != null) {
            HtmlUtils.removeElement(_source);
        }
        _source = Browser.document.createSourceElement();
        _source.setAttribute("src", src);
        _audio.appendChild(_source);
    }
    
    private override function validateComponentLayout():Bool {
        var b = super.validateComponentLayout();
        
        if (_audio != null && width > 0 && height > 0) {
            _audio.style.width = HtmlUtils.px(width);
            _audio.style.height = HtmlUtils.px(height);
        }
        
        return b;
    }
}

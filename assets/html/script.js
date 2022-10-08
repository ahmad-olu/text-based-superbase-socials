function submit(){
    //var delta = quill.getContents();
    var delta = quill.getContents();
    JavaScriptChannel.postMessage(delta);
}

function flutterSubmit(){
    
    var delta = quill.getContents();
    var json = JSON.stringify(delta);
    
    return json;
}

function readDelta(value){
    var deltaObject = JSON.parse(value);
    var q = quill.setContents(deltaObject);
    return q;
}

function clearEditor(){
    var length = quill.getLength();
    quill.delete(0, length);
}
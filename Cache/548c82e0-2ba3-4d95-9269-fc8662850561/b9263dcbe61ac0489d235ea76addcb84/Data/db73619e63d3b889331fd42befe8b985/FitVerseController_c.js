if (script.onAwake) {
    script.onAwake();
    return;
}
function checkUndefined(property, showIfData) {
    for (var i = 0; i < showIfData.length; i++) {
        if (showIfData[i][0] && script[showIfData[i][0]] != showIfData[i][1]) {
            return;
        }
    }
    if (script[property] == undefined) {
        throw new Error("Input " + property + " was not provided for the object " + script.getSceneObject().name);
    }
}
// @input SceneObject garmentSwitcherObject
// @input SceneObject carouselObject
// @input SceneObject confidenceScoreObject
// @input SceneObject garmentTransferContainer
// @input SceneObject bodyMeshContainer
// @input string startMode = "garment_transfer"
// @input float scoreDelay = 2
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../Modules/Src/Assets/Scripts/FitVerseController");
Object.setPrototypeOf(script, Module.FitVerseController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("garmentSwitcherObject", []);
    checkUndefined("carouselObject", []);
    checkUndefined("confidenceScoreObject", []);
    checkUndefined("garmentTransferContainer", []);
    checkUndefined("bodyMeshContainer", []);
    checkUndefined("startMode", []);
    checkUndefined("scoreDelay", []);
    if (script.onAwake) {
       script.onAwake();
    }
});

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
// @input SceneObject[] carouselItems = {}
// @input float swipeThreshold = 50
// @input float selectedScale = 1.2
// @input float defaultScale = 1
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../Modules/Src/Assets/Scripts/CarouselManager");
Object.setPrototypeOf(script, Module.CarouselManager.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("garmentSwitcherObject", []);
    checkUndefined("carouselItems", []);
    checkUndefined("swipeThreshold", []);
    checkUndefined("selectedScale", []);
    checkUndefined("defaultScale", []);
    if (script.onAwake) {
       script.onAwake();
    }
});

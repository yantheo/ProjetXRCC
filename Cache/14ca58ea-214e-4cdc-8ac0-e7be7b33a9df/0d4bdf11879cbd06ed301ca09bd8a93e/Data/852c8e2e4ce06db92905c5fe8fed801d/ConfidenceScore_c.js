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
// @input Component.Text scoreText
// @input Component.Text productLabel
// @input SceneObject scoreContainer
// @input float displayDuration = 4
// @input float[] baseScores = {92,87,95,78,88}
// @input string[] productNames = {"Zalando — T-shirt Classic","Zalando — Hoodie Urban","Puma — RS-X Sneakers","Puma — Future Rider","Zalando — Bomber Jacket"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../Modules/Src/Assets/Scripts/ConfidenceScore");
Object.setPrototypeOf(script, Module.ConfidenceScore.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("scoreText", []);
    checkUndefined("productLabel", []);
    checkUndefined("scoreContainer", []);
    checkUndefined("displayDuration", []);
    checkUndefined("baseScores", []);
    checkUndefined("productNames", []);
    if (script.onAwake) {
       script.onAwake();
    }
});

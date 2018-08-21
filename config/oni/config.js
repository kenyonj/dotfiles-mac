"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    "commandline.mode": false,
    "editor.fontFamily": "Source Code Pro",
    "editor.fontSize": "13px",
    "editor.textMateHighlighting.enabled": false,
    "oni.hideMenu": "hidden",
    "sidebar.default.open": false,
    "sidebar.enabled": false,
    "ui.animations.enabled": true,
    "ui.colorscheme": "n/a",
    "ui.fontSmoothing": "auto"
};

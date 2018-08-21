import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
  console.log("config activated")

  // Input
  //
  // Add input bindings here:
  //
  oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

  //
  // Or remove the default bindings here by uncommenting the below line:
  //
  // oni.input.unbind("<c-p>")
}

export const deactivate = (oni: Oni.Plugin.Api) => {
  console.log("config deactivated")
}

export const configuration = {
  "commandline.mode": false,
  "editor.fontFamily": "Source Code Pro",
  "editor.fontSize": "13px",
  "editor.textMateHighlighting.enabled": false,
  "oni.hideMenu": "hidden",
  "sidebar.default.open": false,
  "sidebar.enabled": false,
  "ui.animations.enabled": true,
  "ui.colorscheme": "n/a",
  "ui.fontSmoothing": "auto",
}

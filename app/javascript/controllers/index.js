// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

import { Dropdown, Modal, Tabs } from "tailwindcss-stimulus-components"
import Flatpickr from "stimulus-flatpickr"
import "flatpickr/dist/themes/light.css";
application.register('dropdown', Dropdown)
application.register('modal', Modal)
application.register('tabs', Tabs)
application.register('flatpickr', Flatpickr)

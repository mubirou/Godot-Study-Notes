# res://WebXRManager.gd
class_name WebXRManager
extends Node3D

const VERSION = "1.0.0"
const LAST_UPDATE = "2023-11-10T23:40+09:00"

var _webxr_interface
var _main
var _canvaslayer
var _canvaslayer_button

func _init(self_):
  _main = self_
  _canvaslayer = _main.get_node("CanvasLayer")
  _canvaslayer_button = _canvaslayer.get_node("Button")
  _canvaslayer.visible = false
  _canvaslayer_button.pressed.connect(self._on_button_pressed)
  _webxr_interface = XRServer.find_interface("WebXR")
  if _webxr_interface:
    _webxr_interface.session_supported.connect(self._webxr_session_supported)
    _webxr_interface.session_started.connect(self._webxr_session_started)
    _webxr_interface.session_ended.connect(self._webxr_session_ended)
    _webxr_interface.session_failed.connect(self._webxr_session_failed)
    _webxr_interface.select.connect(self._webxr_on_select)
    _webxr_interface.selectstart.connect(self._webxr_on_select_start)
    _webxr_interface.selectend.connect(self._webxr_on_select_end)
    _webxr_interface.squeeze.connect(self._webxr_on_squeeze)
    _webxr_interface.squeezestart.connect(self._webxr_on_squeeze_start)
    _webxr_interface.squeezeend.connect(self._webxr_on_squeeze_end)
    _webxr_interface.is_session_supported("immersive-vr")

func _on_button_pressed() -> void:
  _webxr_interface.session_mode = 'immersive-vr'
  _webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
  _webxr_interface.required_features = 'local-floor'
  _webxr_interface.optional_features = 'bounded-floor'
  if not _webxr_interface.initialize():
    OS.alert("Failed to initialize WebXR")
    return
  
func _webxr_session_supported(session_mode: String, supported: bool) -> void:
  if session_mode == 'immersive-vr':
    if supported:
      _canvaslayer.visible = true
    else:
      OS.alert("Your browser doesn't support VR")

func _webxr_session_started() -> void:
  _canvaslayer.visible = false
  _main.get_viewport().use_xr = true
  print ("Reference space type: " + _webxr_interface.reference_space_type)

func _webxr_session_ended() -> void:
  _canvaslayer.visible = true
  _main.get_viewport().use_xr = false

func _webxr_session_failed(message: String) -> void:
  OS.alert("Failed to initialize: " + message)

func _webxr_on_select(input_source_id: int) -> void:
  print("Select: " + str(input_source_id))

  var tracker: XRPositionalTracker = _webxr_interface.get_input_source_tracker(input_source_id)
  var xform = tracker.get_pose('default').transform
  print (xform.origin)

func _webxr_on_select_start(input_source_id: int) -> void:
  print("Select Start: " + str(input_source_id))

func _webxr_on_select_end(input_source_id: int) -> void:
  print("Select End: " + str(input_source_id))

func _webxr_on_squeeze(input_source_id: int) -> void:
  print("Squeeze: " + str(input_source_id))

func _webxr_on_squeeze_start(input_source_id: int) -> void:
  print("Squeeze Start: " + str(input_source_id))

func _webxr_on_squeeze_end(input_source_id: int) -> void:
  print("Squeeze End: " + str(input_source_id))
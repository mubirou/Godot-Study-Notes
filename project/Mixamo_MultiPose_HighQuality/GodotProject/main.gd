# main.gd
extends Node3D

var _interface : XRInterface
var _controller_R
var _rayCast_R
var _rayLine_R
var _hitPoint_R
var _selectCollider

func _ready():
	_interface = XRServer.find_interface("OpenXR")
	if _interface and _interface.is_initialized():
		var _viewport : Viewport = get_viewport()
		_viewport.use_xr = true
	_controller_R = get_node("XROrigin3D/XRController3D_Right")
	_rayCast_R = _controller_R.get_node("RayCast3D")
	_rayLine_R = _controller_R.get_node("RayLine")
	_hitPoint_R = _controller_R.get_node("HitPoint")
	_hitPoint_R.visible = false

func _on_xr_controller_3d_right_button_pressed(name):
	if name == "trigger_click":
		_selectCollider = _rayCast_R.get_collider()

func _on_xr_controller_3d_right_button_released(name):
	if name == "trigger_click":
		if _rayCast_R.get_collider() == null: return
		if _rayCast_R.get_collider() == _selectCollider:
			#print(_selectCollider.get_parent().name)
			var _name = _selectCollider.get_parent().name
			var _animationTree = $Kaya_MultiPose/AnimationTree
			if _name == "BlueBox":
				_animationTree["parameters/Transition/current"] = 0
			elif _name == "YellowBox":
				_animationTree["parameters/Transition/current"] = 1
			elif _name == "RedBox":
				_animationTree["parameters/Transition/current"] = 2

func _physics_process(delta):
	if _rayCast_R.is_colliding():
		_hitPoint_R.visible = true
		_hitPoint_R.global_transform.origin = _rayCast_R.get_collision_point()
		var _dis = (_rayCast_R.global_transform.origin - _hitPoint_R.global_transform.origin).length()
		_rayLine_R.scale.z = _dis
		_rayLine_R.position.z = -_dis / 2
	else:
		_rayLine_R.scale.z = 1000
		_rayLine_R.position.z = -500
		_hitPoint_R.visible = false

# [Godot](https://godotengine.org/) + [WebXR](https://immersive-web.github.io/webxr/) + [Quest](https://www.meta.com/jp/quest/quest-3/) の基礎研究メモ<a id="TOP"></a>

### [mubirou.com](https://mubirou.com/webxr-lab/) 👈公開サイト（Quest3対応）
### [webxr_template_240815.zip](https://github.com/mubirou/Godot/blob/main/zip/webxr_template_240815.zip) 👈自作テンプレート（4.2.2対応）
### [Godot Study Notes (2021-2023)](./study_notes.md) 👈過去の検証はこちら
* [Godotとの出会い](#encounter)  

***
## **目次（WebXR + Quest 3 対応）**
| [FPV Car](#240815) | [Thumbstick Control 3](#240608) | [Thumbstick Control 2](#240607) | [Thumbstick Control](#240604) | [Bounce 2](#240526) | [Bounce](#240516) | [Debugger](#240512) | [Hello World 2](#240507) | [Hello World](#240506) |  
***


<a id="240815"></a>

## <b>FPV Car</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  

[![image](https://github.com/mubirou/Godot/blob/main/webp/240815.webp)](https://mubirou.com/webxr-lab/240815/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡右手親指スティックの動きに合わせて一人称視点（実際には車のやや後方）で移動。右手中指トリガー＋右手親指スティックで後退。  

（移動する車にアタッチしたスクリプト）  
```gdscript
# Car.gd
extends Node3D

var _floor_size = 6.0
var _car_radius = 0.15
var _floor: Node3D

# 初期化処理を行うメソッド
func _ready() -> void:
	_floor = get_parent().get_node("Floor")

# フレームごとの更新処理を行うメソッド
func _process(delta: float) -> void:
	var half_floor_size = _floor_size / 2.0
	var floor_global_pos = _floor.global_transform.origin

	var min_x = floor_global_pos.x - half_floor_size + _car_radius
	var max_x = floor_global_pos.x + half_floor_size - _car_radius
	var min_z = floor_global_pos.z - half_floor_size + _car_radius
	var max_z = floor_global_pos.z + half_floor_size - _car_radius

	# if文を使わずにclamp()で合理化
	global_transform.origin.x = clamp(global_transform.origin.x, min_x, max_x)
	global_transform.origin.z = clamp(global_transform.origin.z, min_z, max_z)
```

（メインクラス）  
```gdscript
# Main.gd (Last update : 2024-08-14T21:54)
extends Node3D

var _car: Node3D
var _current_direction = Vector2.ZERO # 現在の移動方向（コントローラー入力に基づく）
var _is_reverse = false # 後退モードかどうかのフラグ
var _current_angle = 0.0 # 現在の車両の向き（度数法）
var _target_angle = 0.0 # 目標とする車両の向き（度数法）
var _smooth_factor = 0.1 # 現在の角度を目標角度に近づける際の補間係数
var _max_speed = 10.0 # 車両の最大速度
var _current_speed = 0.0 # 車両の現在の速度
var _target_speed = 0.0 # 目標とする速度
var _speed_up_rate = 10.0 # 加速率（大きいと急加速）
var _slow_down_rate = 20.0 # 減速率（大きいと急減速）
var _last_move_direction = 1  # 1 for forward, -1 for reverse

# 初期化処理を行うメソッド
func _ready() -> void:
	Debug.print("Hello VR World")
	Debug.print("前進：右スティック")
	Debug.print("後退：中指トリガー＋右スティック")
	_car = $Car
	_set_camera_position()

# フレームごとの更新処理を行うメソッド
func _process(delta: float) -> void:
	_current_angle += (_target_angle - _current_angle) * _smooth_factor
	
	# 速度の更新
	var speed_diff = _target_speed - abs(_current_speed)
	var speed_change = 0.0
	
	if abs(speed_diff) > 0.01:
		if speed_diff > 0:
			# 加速
			speed_change = min(speed_diff, _speed_up_rate * delta)
		else:
			# 減速
			speed_change = max(speed_diff, -_slow_down_rate * delta)
		
		_current_speed += speed_change * sign(_current_speed) if _current_speed != 0 else speed_change * _last_move_direction
	else:
		_current_speed = _target_speed * _last_move_direction

	# 進行方向の決定
	var move_direction = -1 if _is_reverse else 1
	
	if sign(_current_speed) != move_direction and _current_speed != 0:
		# 進行方向が変わる場合、現在の速度を徐々に0に近づける
		_current_speed = move_toward(_current_speed, 0, _slow_down_rate * delta)
	else:
		_last_move_direction = move_direction

	if _current_direction != Vector2.ZERO or _current_speed != 0:
		# ステアリング角度の計算
		var steering_angle = deg_to_rad(_current_angle * -45)
		if _is_reverse:
			steering_angle = -steering_angle  # バック時はステアリングを反転
		
		# 車の回転を更新
		_car.rotate_y(steering_angle * delta)
		
		# 前進方向と速度の計算
		var forward_speed = _current_speed
		var forward_vector = -_car.global_transform.basis.z * forward_speed * delta
		
		# 車を移動
		_car.global_translate(forward_vector)
		
		_set_camera_position()
	else:
		# 入力がなく、速度もゼロの場合は何もしない
		pass

# 右コントローラーのボタンが押されたときの処理を行う
func _on_right_controller_button_pressed(name: String) -> void:
	if name == "grip_click":
		_is_reverse = true
		Debug.print("後退")

# 右コントローラーのボタンが離されたときの処理を行う
func _on_right_controller_button_released(name):
	if name == "grip_click":
		_is_reverse = false
		Debug.print("前進")

# 右コントローラーの2次元入力（Vector2）が変化したときの処理を行う
func _on_right_controller_input_vector_2_changed(name: String, value: Vector2) -> void:
	if value.length() < 0.1:
		_target_angle = 0.0
		_current_direction = Vector2.ZERO
		_target_speed = 0.0  # 入力がない場合は停止を目指す
	else:
		_target_angle = value.x
		_current_direction = value
		_target_speed = _max_speed * value.length()  # スティックの傾きに応じて目標速度を設定

# カメラの位置を設定する処理を行う
func _set_camera_position() -> void:
	var car_transform = _car.global_transform
	# カメラの位置の微調整
	var camera_position = car_transform.origin + Vector3(0, -0.7, 0) + car_transform.basis.z * 4.0
	var xrorigin_pos = $XROrigin3D.transform
	xrorigin_pos.origin = camera_position
	$XROrigin3D.transform = xrorigin_pos
	$XROrigin3D.global_rotation = _car.global_rotation
```

参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[GitHub（Godot-Demo-Project/Godot/240815）](https://github.com/mubirou/Godot-Demo-Projects/tree/master/godot/240815)  
実行環境：Windows 11、Meta Quest 3（68.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年08月17日  
[[TOP]](https://bit.ly/4eiaG7p)  


<a id="240608"></a>

## <b>Thumbstick Control 3</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)

[![image](https://github.com/mubirou/Godot/blob/main/webp/240608.webp)](https://mubirou.com/webxr-lab/240608/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡右手親指スティックの動き（360°）に合わせて車の角度も変更しながら移動  

（移動する車にアタッチしたスクリプト）  
```gdscript
# Car.gd
extends Node3D

var _speed = 1.5  # 車の移動速度
var _floor_size = 6.0  # 6m x 6mの床
var _car_radius = 0.15  # 車の全長 / 2
var _floor: Node3D  # 床のノード

func _ready() -> void:
	_floor = get_parent().get_node("Floor")  # 床のノードを取得

func move(x: float, z: float) -> void:
	# 現在の位置を取得して移動量を追加
	var new_x = position.x + (x * _speed)
	var new_z = position.z + (z * _speed)

	# 床の境界計算（グローバル座標）
	var half_floor_size = _floor_size / 2.0
	var floor_global_pos = _floor.global_transform.origin

	var min_x = floor_global_pos.x - half_floor_size + _car_radius
	var max_x = floor_global_pos.x + half_floor_size - _car_radius
	var min_z = floor_global_pos.z - half_floor_size + _car_radius
	var max_z = floor_global_pos.z + half_floor_size - _car_radius

	# 移動後の位置が床の範囲内か確認
	if new_x < min_x or new_x > max_x or new_z < min_z or new_z > max_z:
		# 範囲外なら何もしない
		return

	# 車の向きを変更
	var direction = Vector3(x, 0, z).normalized()
	# atan2を使用して方向に応じた回転を計算し、90度回転させる
	rotation = Vector3(0, atan2(direction.x, direction.z) - PI / 2, 0)

	# 新しい位置を設定
	position.x = new_x
	position.z = new_z
```

（メインクラス）  
```gdscript
# Main.gd
extends Node3D

var _webxr_manager: WebXRManager
var _debugger: Label3D  # Debugger
var _car: Node3D

var _current_direction = Vector2.ZERO

func _ready() -> void:
	_webxr_manager = WebXRManager.new(self)
	
	# Debugger
	_debugger = $XROrigin3D/RightController/Debugger
	_debugger.print("Hello World")
	
	_car = $Car

func _process(delta: float) -> void:
	if _current_direction != Vector2.ZERO:
		# 車を動かす
		_car.move(_current_direction.x * delta, -_current_direction.y * delta)

func _on_right_controller_button_pressed(name: String) -> void:
	# _debugger.reset()  # Debugger（出力をクリア）
	pass

func _on_right_controller_input_vector_2_changed(name: String, value: Vector2) -> void:
	# 中央に戻っているかを確認
	if value.length() == 0:
		_debugger.print("・")
		_current_direction = Vector2.ZERO
		return

	# 方向を判断
	_current_direction = value

	_debugger.print("方向: " + str(value))
```

参考：[VRコントローラーの入力イベント](https://github.com/mubirou/Godot-Study-Notes/blob/main/study_notes.md#vr%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E3%81%AE%E5%85%A5%E5%8A%9B%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88)  
参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[GitHub（Godot-Demo-Project/Godot/240608）](https://github.com/mubirou/Godot-Demo-Projects/tree/master/godot/240608)  
実行環境：Windows 11、Meta Quest 3（65.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年06月09日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240607"></a>

## <b>Thumbstick Control 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240607.webp)](https://mubirou.com/webxr-lab/240607/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡親指スティックの動き（360°）でオブジェクトを移動  

（移動するオブジェクトにアタッチしたスクリプト）  
```gdscript
# Eye.gd
extends Node3D

var _speed = 2 # コインの移動速度
var _floor_size = 6.0  # 6m x 6mの床
var _eye_radius = 0.15  # 移動オブジェクトの半径
var _floor: Node3D  # 床のノード

func _ready() -> void:
	_floor = get_parent().get_node("Floor")  # 床のノードを取得

func move(x: float, z: float) -> void:
	# 現在の位置を取得して移動量を追加
	var new_x = position.x + (x * _speed)
	var new_z = position.z + (z * _speed)

	# 床の境界計算（グローバル座標）
	var half_floor_size = _floor_size / 2.0
	var floor_global_pos = _floor.global_transform.origin

	var min_x = floor_global_pos.x - half_floor_size + _eye_radius
	var max_x = floor_global_pos.x + half_floor_size - _eye_radius
	var min_z = floor_global_pos.z - half_floor_size + _eye_radius
	var max_z = floor_global_pos.z + half_floor_size - _eye_radius

	# 移動後の位置が床の範囲内か確認
	if new_x < min_x or new_x > max_x or new_z < min_z or new_z > max_z:
		# 範囲外なら何もしない
		return

	# 新しい位置を設定
	position.x = new_x
	position.z = new_z
```

（メインクラス）  
```gdscript
# Main.gd
extends Node3D

var _webxr_manager: WebXRManager
var _debugger: Label3D  # Debugger
var _eye: Node3D
var _move_cooldown = 0.2  # 移動のクールダウン時間（秒）
var _move_timer = 0.0

var _current_direction = Vector2.ZERO

func _ready() -> void:
	_webxr_manager = WebXRManager.new(self)
	
	# Debugger
	_debugger = $XROrigin3D/RightController/Debugger
	_debugger.print("Hello World")
	
	_eye = $Eye

func _process(delta: float) -> void:
	if _current_direction != Vector2.ZERO:
		_eye.move(_current_direction.x * delta, -_current_direction.y * delta)  # 上下反転

func _on_right_controller_button_pressed(name: String) -> void:
	# _debugger.reset()  # Debugger（出力をクリア）
	pass

func _on_right_controller_input_vector_2_changed(name: String, value: Vector2) -> void:
	# 中央に戻っているかを確認
	if value.length() == 0:
		_debugger.print("・")
		_current_direction = Vector2.ZERO
		return

	# 方向を判断
	_current_direction = value

	_debugger.print("方向: " + str(value))
```

参考：[VRコントローラーの入力イベント](https://github.com/mubirou/Godot-Study-Notes/blob/main/study_notes.md#vr%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E3%81%AE%E5%85%A5%E5%8A%9B%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88)  
参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[240607.zip](https://github.com/mubirou/Godot/blob/main/zip/240607.zip)  
実行環境：Windows 11、Meta Quest 3（65.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年06月08日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240604"></a>

## <b>Thumbstick Control</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240604.webp)](https://mubirou.com/webxr-lab/240604/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡親指スティックの上下左右でオブジェクトを移動

（コインにアタッチしたスクリプト）
```gdscript
# Coin.gd
extends Node3D

var _grid_size = 0.25  # 25cm (0.25m)
var _adjustX = -0.01 # 微調整
var _adjustY = -0.01 # 微調整

func move(x: int, z: int) -> void:
	# 現在の位置を取得して移動量を追加
	var new_x = position.x + (x * _grid_size)
	var new_z = position.z + (z * _grid_size)

	# 移動後の位置が床の範囲内か確認
	if new_x < -1.0 + (_grid_size / 2) + _adjustX or new_x > 1.0 - (_grid_size / 2) - _adjustX or new_z < -2.25 + (_grid_size / 2) + _adjustY or new_z > -0.25 - (_grid_size / 2) - _adjustY:
		# 範囲外なら何もしない
		return

	# 格子の中央にスナップ
	position.x = (floor(new_x / _grid_size) * _grid_size) + (_grid_size / 2) + _adjustX
	position.z = (floor(new_z / _grid_size) * _grid_size) + (_grid_size / 2) + _adjustY
```

（メインクラス）
```gdscript
# Main.gd
extends Node3D

var _webxr_manager: WebXRManager
var _debugger: Label3D  # Debugger
var _coin: Node3D
var _move_cooldown = 0.2  # 移動のクールダウン時間（秒）
var _move_timer = 0.0

var _current_direction = Vector2.ZERO

func _ready() -> void:
	_webxr_manager = WebXRManager.new(self)
	
	# Debugger
	_debugger = $XROrigin3D/RightController/Debugger
	_debugger.print("Hello World")
	
	_coin = $Coin

func _process(delta: float) -> void:
	_move_timer -= delta
	
	if _move_timer <= 0:
		if _current_direction != Vector2.ZERO:
			_coin.move(_current_direction.x, _current_direction.y)
			_move_timer = _move_cooldown

func _on_right_controller_button_pressed(name: String) -> void:
	# _debugger.reset()  # Debugger（出力をクリア）
	pass

func _on_right_controller_input_vector_2_changed(name: String, value: Vector2) -> void:
	# 中央に戻っているかを確認
	if value.length() == 0:
		_debugger.print("・")
		_current_direction = Vector2.ZERO
		return

	# 弧度法
	var radian_joystick = atan2(value.x, value.y)
	# 度数法
	var degree_joystick = rad_to_deg(radian_joystick)

	# 方向を判断
	var direction = ""
	var x_move = 0
	var z_move = 0
	if degree_joystick >= -45 and degree_joystick < 45:
		direction = "↑"
		z_move = -1
	elif degree_joystick >= 45 and degree_joystick < 135:
		direction = "→"
		x_move = 1
	elif degree_joystick >= 135 or degree_joystick < -135:
		direction = "↓"
		z_move = 1
	else:
		direction = "←"
		x_move = -1

	_debugger.print(direction + " " + str(round(degree_joystick)) + "°")
	
	# 新しい方向をセット
	_current_direction = Vector2(x_move, z_move)

	# タイマーがクールダウン中でない場合、すぐに動かす
	if _move_timer <= 0:
		_coin.move(_current_direction.x, _current_direction.y)
		_move_timer = _move_cooldown
```

参考：[VRコントローラーの入力イベント](https://github.com/mubirou/Godot-Study-Notes/blob/main/study_notes.md#vr%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E3%81%AE%E5%85%A5%E5%8A%9B%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88)  
参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[240604.zip](https://github.com/mubirou/Godot/blob/main/zip/240604.zip)  
実行環境：Windows 11、Meta Quest 3（65.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年06月04日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240526"></a>

## <b>Bounce 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240526.webp)](https://mubirou.com/webxr-lab/240526/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡物理エンジンを使ったアニメーション  
💡階層構造のポイント  
　  │  
　  ├ [RigidBody3D](https://docs.godotengine.org/en/stable/classes/class_rigidbody3d.html#rigidbody3d)  
　  │   ├ [CollisionShape3D](https://docs.godotengine.org/en/stable/classes/class_collisionshape3d.html#collisionshape3d)  
　  │   └ MeshInstance3D（落下物）  
　  │  
　  └ [StaticBody3D](https://docs.godotengine.org/en/stable/classes/class_staticbody3d.html#staticbody3d)  
　  　  ├ [CollisionShape3D](https://docs.godotengine.org/en/stable/classes/class_collisionshape3d.html#collisionshape3d)  
　  　  └ MeshInstance3D（床）  

（主なコード）  
```gdscript
# Main.gd
extends Node3D

const WebXRManager = preload("res://WebXRManager.gd")
var _webxr_manager: WebXRManager
var _debugger: Label3D # Debugger
var timer: Timer
var rigidbody_list = []

func _ready() -> void:
	_webxr_manager = WebXRManager.new(self)
	
	# Debugger
	_debugger = get_node("/root/Main/XROrigin3D/RightController/Debugger")
	_debugger.print("Hello World") # Debugger
	
	# タイマーの設定
	timer = Timer.new()
	add_child(timer)
	timer.wait_time = 15.0 # 15秒
	timer.connect("timeout", _on_timer_timeout)
	timer.start()
	
	# RigidBodyノードのリストを動的に生成
	for i in range(1, 8): # x1からx7までの範囲
		for j in range(1, 6): # y1からy5までの範囲
			var node_path = "DotCharacter/x%sy%s" % [i, j]
			var rigidbody = get_node(node_path)
			rigidbody_list.append(rigidbody)
	
	init()

func init() -> void:	
	var random = RandomNumberGenerator.new()
	random.randomize() # シード値の初期化
	
	# 各RigidBodyの位置を設定
	for rigidbody in rigidbody_list:
		var pos = rigidbody.position
		pos.y = 1.0 * random.randf()
		rigidbody.position = pos
		#rigidbody.sleeping = true # 速度を0にする
		#rigidbody.gravity_scale = 0.0 # 重力を0にする（初期値1.0）

func _on_timer_timeout() -> void:
	timer.stop() # タイマーを止める
	init()
	timer.start() # タイマーを再スタート

func _process(delta: float) -> void:
	pass

func _on_right_controller_button_pressed(name):
	#_debugger.reset() # Debugger（出力をクリア）
	pass
```

参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[240526.zip](https://github.com/mubirou/Godot/blob/main/zip/240526.zip)  
実行環境：Windows 11、Meta Quest 3（65.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年05月26日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240516"></a>

## <b>Bounce</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240516.webp)](https://mubirou.com/webxr-lab/240516/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡物理エンジンを使わないアニメーション  
💡三角関数 (sinカーブ) と絶対値を利用  
⚠ 床に着地するタイミングが表現ができない

（主なコード）  
```gdscript
# Main.gd
extends Node3D

const WebXRManager = preload("res://WebXRManager.gd")
var _webxr_manager: WebXRManager
var _textList = []
var _originYList = []
var _countList = []

func _ready() -> void:
	_webxr_manager = WebXRManager.new(self)
	
	# テキストオブジェクトをリストに追加
	for i in range(1, 8):
		var _theText = get_node("Text%d" % i)
		_textList.append(_theText)
		_originYList.append(_theText.position.y)
		_countList.append(-PI / 7 * (i - 1))
		var _debugger: Label3D = get_node("/root/Main/XROrigin3D/RightController/Debugger")

func _process(delta: float) -> void:
	for i in range(7):
		var _theText = _textList[i]
		var _theOriginY = _originYList[i]
		var _theCount = _countList[i]
		
		# カウントを更新
		_theCount += 0.04
		_countList[i] = _theCount
		
		# 次のY位置を計算
		var _nextY = abs(sin(_theCount)) * 1.0 + _theOriginY
		
		# 位置を更新
		var _thePos = _theText.position
		_thePos.y = _nextY
		_theText.position = _thePos
```

参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[240516.zip](https://github.com/mubirou/Godot/blob/main/zip/240516.zip)  
実行環境：Windows 11、Meta Quest 3（64.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年05月18日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240512"></a>

## <b>Debugger</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240512.webp)](https://mubirou.com/webxr-lab/240512/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡 VR空間上で簡易デバッグが可能  

1. [Label3D](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html) を任意の位置する（階層構造例）  

    Main（Node3D）  
    　  └ XROrigin3D  
    　　  ├ XRCamera3D  
    　　  └ RightController  
    　　  　 ├ MeshInstance3D（右コントローラの視覚化）  
    　　  　 └ **Debugger**（Label3D）![image](https://github.com/mubirou/Godot-Study-Notes/blob/main/png/script.png)（**Debugger.gd**）  

1. Label3D の調整例
    * [Pixel Size](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html#class-label3d-property-pixel-size)：0.0005m（初期値：0.005m）
    * [Font](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html#class-label3d-property-font)：[NotoSansJP-Bold.ttf](https://fonts.google.com/noto/specimen/Noto+Sans+JP)
    * [Outline Size](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html#class-label3d-property-outline-size)：8px（初期値：12px）
    * [Horizontal Alignment](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html#class-label3d-property-horizontal-alignment)：Left（初期値：Center）
    * [Vertical Alignment](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html#class-label3d-property-vertical-alignment)：Buttom（初期値：Center）
    * [Line Spacing](https://docs.godotengine.org/ja/4.x/classes/class_label3d.html#class-label3d-property-line-spacing)：-10px（初期値：0px）

1. Debugger.gd を Label3D にアタッチ

    ```gdscript
    # XROrigin3D/RightController/Debugger(Debugger.gd)
    extends Label3D

    var _content = [] # 内部で保持する内容

    func _ready():
      pass
      
    func reset():
      _content.clear()
      _update_display()

    func print(arg: String):
      _content.append(arg)
      if _content.size() > 10: # 最大表示行数
        _content.remove_at(0)
      _update_display()

    func _update_display():
      var _display_text = ""
      for i in range(_content.size()):
        _display_text += _content[i]
        if i < _content.size() - 1:
          _display_text += "\n"
      
      if _content.size() > 0:
        _display_text += " ←" # 最後の行に " ←" を追加

      text = _display_text
    ```

### Debugger.print() と Debugger.reset()
```gdscript
var _debugger: Label3D = get_node("/root/Main/XROrigin3D/RightController/Debugger")
_debugger.print("Something") # 文字列を出力
_debugger.reset() # 出力をクリア
```

参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[240512.zip](https://github.com/mubirou/Godot/blob/main/zip/240512.zip)  
実行環境：Windows 11、Meta Quest 3（64.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年05月15日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240507"></a>

## <b>Hello World 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240507.webp)](https://mubirou.com/webxr-lab/240507/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡 [Godot WebXR Template 3.0](https://godotengine.org/asset-library/asset/1128) より便利なテンプレート  
💡 Mainクラスがシンプルなのが〇  

```gdscript
# res://Main.gd
extends Node3D

const WebXRManager = preload("res://WebXRManager.gd")
var webxr_manager: WebXRManager

func _ready() -> void:
	webxr_manager = WebXRManager.new(self)
```

🔒 陰の立役者「WebXRManagerクラス」
```gdscript
# res://WebXRManager.gd
class_name WebXRManager
extends Node3D

const VERSION = "1.0.1"
const LAST_UPDATE = "2024-05-07T22:41+09:00"

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
```

参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[240507.zip](https://github.com/mubirou/Godot/blob/main/zip/240507.zip)  
実行環境：Windows 11、Meta Quest 3（64.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年05月07日  
[[TOP]](https://bit.ly/4eiaG7p)  



<a id="240506"></a>

## <b>Hello World</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240506.webp)](https://mubirou.com/webxr-lab/240506/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡 [Godot](https://godotengine.org/) + [Quest](https://www.meta.com/jp/quest/quest-3/) による [WebXR](https://immersive-web.github.io/webxr/) コンテンツ公開の最初の一歩  
💡 [Godot WebXR Template 3.0](https://godotengine.org/asset-library/asset/1128) 使用  

1. Web サーバの準備  
    1. お名前.com などで各種登録設定  
        * ドメイン
        * レンタルサーバ
        * SSL証明書 👈重要！
    1. .htaccess に以下を記述  
        ```
        Header set Cross-Origin-Embedder-Policy "require-corp"
        Header set Cross-Origin-Opener-Policy "same-origin"
        ```

1. WebXR コンテンツの作成

    1. [Godot WebXR Template 3.0](https://godotengine.org/asset-library/asset/1128) を [Download]（2023-11-06版）
    1. 展開して project.godot を起動
    1. [プロジェクト]-[エクスポート]-[追加]-[Web]-[HTML]-[Head Include] に以下を記述
        ```html
        <script src="https://cdn.jsdelivr.net/npm/webxr-polyfill@latest/build/webxr-polyfill.min.js"></script>
        <script>
        var polyfill = new WebXRPolyfill();
        </script>
        <script src="https://cdn.jsdelivr.net/npm/webxr-layers-polyfill@latest/build/webxr-layers-polyfill.min.js"></script>
        <script>
        var layersPolyfill = new WebXRLayersPolyfill();
        </script>
        ```
    1. 引き続き [エクスポート先のパス] を指定し [プロジェクトのエクスポート] を選択

1. 公開＆実行
    1. エクスポートした WebXR コンテンツを [FileZilla](https://github.com/mubirou/LAMP#202302121037-FileZilla) を使ってサーバにアップロード
    1. 次のいずれかでアクセス
        * [PCVR](https://www.moguravr.com/meta-quest-3-quest-link-air-link/)（Google Chrome）
        * Meta Quest 単体（[Meta Quest Browser](https://developer.oculus.com/documentation/web/browser-intro/)）

参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
実行環境：Windows 11、Meta Quest 3（64.0）、Quest Link、Oculusアプリ  
Godot 4.2.2、[Godot WebXR Template 3.0](https://godotengine.org/asset-library/asset/1128)  
作成者：夢寐郎  
作成日：2024年05月06日  
[[TOP]](https://bit.ly/4eiaG7p)  



***
<a id="encounter"></a>

## <b>Godotとの出会い</b>

* [2019年6月6日](https://twitter.com/mubirou/status/1136580509096644609) 初代 [Quest](https://ja.wikipedia.org/wiki/Oculus_Quest) 購入
* [2019年8月6日](https://twitter.com/mubirou/status/1158626565040721921)「#オープンソース の #VR #AR #MR 対応オーサリングツールとか登場してくんないかな。#Unity3D 並にプログラミングできるやつ。とりま Linux, Mac, Win 対応で」とツイート  
（当時使っていた Unity に不満）  
* [2021年12月29日](https://twitter.com/mubirou/status/1476124608093102083)「Godot ?」とツイート（Godot の存在を知る）
* 2021年12月30日～2022年9月20日 Godot の勉強（500h余）
* 2022年1月 [上級バーチャルリアリティ技術者](https://vrsj.org/events/seminar/) 資格取得
* 2023年7月 [UCアドバイザー](https://www.aft.or.jp/pages/feature/uc) 資格取得
* 2023年8月 [CG-ARTSマイスター](https://www.cgarts.or.jp/v1/kentei/meister/) 資格取得  
* [2023年10月10日](https://twitter.com/mubirou/status/1711699151879282819) [Quest 3](https://www.meta.com/jp/quest/quest-3/) 購入  
[[TOP]](https://bit.ly/4eiaG7p)  



© 2021-PRESENT 夢寐郎  

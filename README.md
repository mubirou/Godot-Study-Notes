# [Godot](https://godotengine.org/) + [WebXR](https://immersive-web.github.io/webxr/) + [Quest](https://www.meta.com/jp/quest/quest-3/) の基礎研究メモ<a id="TOP"></a>

* 公開サイト：[mubirou.com](https://mubirou.com/webxr-lab/)  
* 自作テンプレート：[WebXR Template](https://github.com/mubirou/Godot/blob/main/zip/webxr_template_240527.zip) (2024年05月27日版)  
### **Index（WebXR + Quest 3 対応）**
| [Hello World](#240506) | [Hello World 2](#240507) | [Debugger](#240512) | [Bounce](#240516) | [Bounce 2](#240526) | [Thumbstick Control](#240604) | [Thumbstick Control 2](#240607) | [Thumbstick Control 3](#240608) |
***


### [Godot Study Notes](./study_notes.md) 👈その他はこちら

***

**Godotとの出会い...✍**  
* [2019年6月6日](https://twitter.com/mubirou/status/1136580509096644609) 初代Quest購入
* [2019年8月6日](https://twitter.com/mubirou/status/1158626565040721921)「#オープンソース の #VR #AR #MR 対応オーサリングツールとか登場してくんないかな。#Unity3D 並にプログラミングできるやつ。とりま Linux, Mac, Win 対応で」とツイート（当時使っていたUnityに不満）  
* [2021年12月29日](https://twitter.com/mubirou/status/1476124608093102083)「Godot ?」とツイート（Godotの存在を知る）
* 2022年1月 [上級バーチャルリアリティ技術者](https://vrsj.org/events/seminar/) 資格取得
* 2021年12月30日～2022年9月20日 Godotの勉強（500h余）
* 2023年7月 [UCアドバイザー](https://www.aft.or.jp/pages/feature/uc) 資格取得
* 2023年8月 [CG-ARTSマイスター](https://www.cgarts.or.jp/v1/kentei/meister/) 資格取得  
* [2023年10月10日](https://twitter.com/mubirou/status/1711699151879282819) Quest3購入 
***



<a id="240608"></a>
# <b>Thumbstick Control 3</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](https://github.com/mubirou/Godot/blob/main/webp/240608.webp)](https://mubirou.com/webxr-lab/240608/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡親指スティックの動き（360°）に合わせて車の角度も変更しながら移動  

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
[[TOP]](#TOP)  



<a id="240607"></a>
# <b>Thumbstick Control 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  



<a id="240604"></a>
# <b>Thumbstick Control</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  

© 2021-2024 夢寐郎

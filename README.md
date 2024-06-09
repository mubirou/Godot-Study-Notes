# [Godot](https://godotengine.org/) + [WebXR](https://immersive-web.github.io/webxr/) + [Quest](https://www.meta.com/jp/quest/quest-3/) の基礎研究メモ<a id="TOP"></a> 🔰

* 公開サイト：[**mubirou.com**](https://mubirou.com/webxr-lab/)（[Quest](https://www.meta.com/jp/quest/quest-3/) 対応）  
* 自作テンプレート：[**webxr_template_240527.zip**](https://github.com/mubirou/Godot/blob/main/zip/webxr_template_240527.zip)（[Godot 4.2.2](https://godotengine.org/download/archive/4.2.2-stable/) 対応）  
### **Index（WebXR + Quest 3 対応）**
| [Hello World](#240506) | [Hello World 2](#240507) | [Debugger](#240512) | [Bounce](#240516) | [Bounce 2](#240526) | [Thumbstick Control](#240604) | [Thumbstick Control 2](#240607) | [Thumbstick Control 3](#240608) |
***
#### [Godot Study Notes](./study_notes.md) 👈その他はこちら

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



<a id="240526"></a>
# <b>Bounce 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  



<a id="240516"></a>
# <b>Bounce</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  



<a id="240512"></a>
# <b>Debugger</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  



<a id="240507"></a>
# <b>Hello World 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  



<a id="240506"></a>
# <b>Hello World</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
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
[[TOP]](#TOP)  



© 2021-2024 夢寐郎

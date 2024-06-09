# Godot Study Notes 🔰<a id="TOP"></a>

### [Godot](https://godotengine.org/) + [WebXR](https://immersive-web.github.io/webxr/) + [Quest](https://www.meta.com/jp/quest/quest-3/) の基礎研究メモ

* 公開サイト：[mubirou.com](https://mubirou.com/webxr-lab/)  
* [WebXR Template](https://github.com/mubirou/Godot/blob/main/zip/webxr_template_240527.zip) by MUBIROU (2024年05月27日版)🔥  
* INDEX  
| [Hello World](#240506) | [Hello World 2](#240507) | [Debugger](#240512) | [Bounce](#240516) | [Bounce 2](#240526) | [Thumbstick Control](#240604) | [Thumbstick Control 2](#240607) | [Thumbstick Control 3](#240608) |
***

### **Index（WebXR 対応）**

| [**WebXR入門**](#231029) | [WebXRテンプレート](#231107) | [**WebXRManager**](#231110) | [OpenXR→WebXR](#20231111) | [WebXR実行方法](#231112) | [フレームレート表示](#20231114) |

### **Index（Godot 4.0 対応）**

＜プログラミングあり＞  
| [**GDScript基礎文法**](https://bit.ly/3qTpnqi)  | [C#基礎文法](https://bit.ly/3BLWWkf) | [VR入門](#220702) | [VRコントローラーの入力イベント](#220703) | [レーザーポインター（RayCast）](#220704) | [RayCastからの除外](#220707) | [デジタル時計](#220708) | [360°パノラマ](#220710) | [ボタン](#220716) | [ジョイスティック角度](#220608) | [トリガー量](#220717) | [オブジェクト色](#220506) | [移動の基本3種](#220611) | [衝突判定領域](#220801) | [ボーンにアタッチ](#220802) | [テキストのスクロール](#220803) | [シーン遷移](#220804) | [共有データ](#220806) | [他人のメソッドの実行](#220807) | [外部テキストの読み書き](#220620) | [JSONの解析](#220621) | [PHP+SQLite](#220622) | [PHP+MySQL](#220623) | [Python+SQLite](#220624) | [Python+MySQL](#220625) | [機械式時計](#220808) | [洋書小説](#220809) | [追跡](#220504) | [Igaguriゲーム](#220901) | [衝突判定](#220612) | [Pachinkoゲーム](#220902) | [ドローン](#220904) |

＜ノンプログラミング＞  
| [外部スクリプトエディタ](#220630) | [プリミティブ](#220701) | [床タイル](#220705) | [パーティクル](#220709) | [鏡面仕上げボール](#220711) | [ライト3種](#220712) | [Mixamo](#220713) | [Mixamoマルチポーズ](#220714) | [フォント設定](#220715) | [Picture-in-Picture](#220613) | [動画再生](#220602) | [Oculus Air Link](#220604) | [Blender to Godot](#220609) | [背景色](#背景色) | [衝突判定領域](#220801) | [摩擦係数と反発係数](#220805) | [テレポート移動](#220706) | [ノーマルマッピング](#220903) | [三灯照明](#221018) | [マルチモニター環境](#マルチモニター環境) |
***
### **Index（Godot 3.4 対応）**
| [C#基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/C%23Godot/C%23Godot_reference.md#c-with-godot-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [Androidビルド](#Androidビルド) | [ノードの移動](#ノードの移動) | [マウス座標](#マウス座標) | [画面サイズ](#画面サイズ) | [Rouletteゲーム](#Rouletteゲーム) | [SwipeCarゲーム](#SwipeCarゲーム) | [~~Quest + Oculus Link~~](#220501) | [Questコントローラー表示](#220502) | [is_button_pressed()](#220503) | [Questビルド](#220505) | [~~RayCastボタン~~](#220601) | [VR空間に2Dシーンを表示](#220605) | [~~360°パノラマ~~](#220606) | [~~鏡面仕上げボール~~](#220607) | [物理エンジン RigidBodyとStaticBody](#220610) | [BGM･SE](#220614) | [Blender(階層構造) to Godot](#220615) | [アニメーション遷移](#220617) | [アニメーション速度変更](#220618) |
***



<a id="240608"></a>
# <b>Thumbstick Control 2</b>![image](https://github.com/mubirou/Godot/blob/main/webp/webxr_logo.webp)  
[![image](#)](https://mubirou.com/webxr-lab/240608/index.html)  
👆[Quest](https://www.meta.com/jp/quest/quest-3/)で実行して下さい  

💡親指スティックの動き（360°）に合わせて車の角度も変更しながら移動  

（移動する車にアタッチしたスクリプト）  
```gdscript
```

（メインクラス）  
```gdscript
```

参考：[VRコントローラーの入力イベント](https://github.com/mubirou/Godot-Study-Notes/blob/main/study_notes.md#vr%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E3%81%AE%E5%85%A5%E5%8A%9B%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88)  
参考：[mubirou.com](https://mubirou.com/webxr-lab/index.html)  
デモファイル：[GitHub（Godot-Demo-Project/Godot/240608）](https://github.com/mubirou/Godot-Demo-Projects/tree/master/godot/240608)  
実行環境：Windows 11、Meta Quest 3（65.0）、Quest Link、Oculusアプリ、Godot 4.2.2  
作成者：夢寐郎  
作成日：2024年06月08日  
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


<a id="Androidビルド"></a>
# <b>Androidビルド</b>

* 既にビルドを試みて問題が生じている場合は先ず以下の作業を行う [[参考サイト](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)]  
  * Android Studio のアンインストール  
  * JDKフォルダの削除
  * .keystore ファイルの削除  

1. [Godot]-[プロジェクト]-[Androidビルドテンプレートのインストール]  
  [[参考サイト](https://qiita.com/2dgames_jp/items/3d0a318d2a483ced9db1)]

1. **Android Studio** (2020.3.1) のインストール  
  （注意）Android SDK ツールではない  
  https://developer.android.com/studio?hl=ja&gclid=EAIaIQobChMI4bb4moON9QIVTkNgCh14cABREAAYASAAEgKsUvD_BwE&gclsrc=aw.ds  
  C:\Program Files\Android\Android Studio にインストール

1. **OpenJDK** をインストール  
  ➊ ダウンロード  
  https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=416&field_operating_system_target_id=436&field_architecture_target_id=391&field_java_package_target_id=396  
  JAVA VERSION : **8u262-b10**（Java 11ではない）  
  DOWNLOAD : .zip  
  ➋ 解凍(今回は C:\OpenJDK とする)  
  ➌ binフィルダを開く  
  ➍ アドレス上で cmd と入力（コマンドプロンプトが開く）  
  ➎ keytool コマンドを実行  
  C:\OpenJDK\openlogic-openjdk-8u262-b10-win-64\bin>**keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999 -deststoretype pkcs12**  
  ➏ C:\OpenJDK\openlogic-openjdk-8u262-b10-win-64\bin> フォルダに **debug.keystore** が生成されたことを確認  
  [[参考サイト](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)]

1. Godot（エディター）の設定  
  ➊ [エディター]-[エディター設定]-[Export]-[Android] を下記の通り設定  
  ・Android Sdk Path : C:/Users/XXXXX/AppData/Local/Android/**Sdk**（手打ち）  
  ・Debug Keystore : C:/Users/XXXXX/Desktop/openlogic-openjdk-8u262-b10-windows-x64/openlogic-openjdk-8u262-b10-win-64/bin/**debug.keystore**（上記➏と同じ）  
  ・Debug Keystore User : **androiddebugkey**  
  ・Debug Keystore Pass : **android**  
  [[参考サイト](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)]

1. **.apk** エクスポート  
  ➊ [プロジェクト]-[エクスポート]-[追加]-[Android]  
  ➋ エクスポート先のパス : ……/XXXXX.apk  
  ➌ [Cumtom Template] を次の通りに設定  
  ・Debug : C:/Users/XXXXX/AppData/Roaming/Godot/templates/3.4.2.stable.mono/**android_debug.apk**（手打ち）  
  ・Release : C:/Users/XXXXX/AppData/Roaming/Godot/templates/3.4.2.stable.mono/**android_release.apk**  
   [プロジェクトのエクスポート] を選択 → [ファイルを保存]-[保存]

1. スマホの開発者向け設定  
  ➊ [設定]-[デバイス情報]-[すべての仕様]-[MIMUバージョン] を8回連打  
  ➋ [設定]-[追加設定]-[開発者向けオプション]-[USBデバッグ]と[USB経由でインストール] を ON  
  ➌ [✓私は起こりうるリスクを認識し、その結果として起こりうる結果を自発的に受け入れます]-[OK]  

1. スマホと PC を接続  
  ➊ USB ケーブルで接続  
  ➋ [ファイル転送/Android Auto] を ✓  

1. アプリのインストール  
  ➊ スマホの任意のフォルダに上記で作成した XXXXX.apk をコピー  
  ➋ スマホ上で XXXXX.apk を選択してインストール

実行環境：Windows 10、Godot 3.4.2、Xiaomi Redmi Note 9T (Android 11)  
作成者：夢寐郎  
作成日：2021年12月31日  
[[TOP]](#TOP)  


<a id="ノードの移動"></a>
# <b>ノードの移動</b>

### 【GDScript版】 

* [Spatialノード](https://docs.godotengine.org/ja/stable/tutorials/3d/introduction_to_3d.html#spatial-node)（3Dモデル）の移動  
  ```gdscript
  #Main.gd
  extends Spatial # 2Dの場合はNode2D

  var _ufo

  func _ready(): # 最初に一度だけ実行される
    _ufo = get_node("UFO")

  func _process(_delta): # 繰り返し実行
    _ufo.translation.y += 0.01 # 0.01m移動
  ```
  上記を含め次の方法で可能  
  ```gdscript
  # 指定位置に移動➀
  _ufo.translation.y += 0.01
  _ufo.translation += Vector3(0, 0.01, 0)

  # 指定位置に移動➁
  _ufo.transform.origin.y += 0.01
  _ufo.transform.origin += Vector3(0, 0.01, 0)

  # 指定した値だけ移動
  _ufo.translate(Vector3(0, 0.01, 0)) # Scaleに依存
  ```

* [Node2D](https://docs.godotengine.org/ja/stable/classes/class_node2d.html#node2d)ノード（2Dスプライト）の移動
  ```gdscript
  # Main.gd
  extends Node2D

  var _ufo

  func _ready(): # 最初に一度だけ実行される
    _ufo = get_node("UFO")
    
  func _process(_delta): # 繰り返し実行
    _ufo.position.x += 1 # 1ピクセル移動
  ```
  上記を含め次の方法で可能
  ```gdscript
  # 指定位置に移動
  _ufo.position.x += 1
  _ufo.position += Vector2(1, 0)
  
  # 指定した値だけ移動
  ufo.translate(Vector2(1, 0))
  ```

### 【C#版】 
* [Spatialノード](https://docs.godotengine.org/ja/stable/tutorials/3d/introduction_to_3d.html#spatial-node)（3Dモデル）の移動  
  ```c#
  // Main.cs
  using Godot;

  public class Main : Spatial {
    private Spatial _ufo;
    
    // 最初に一度だけ実行される
    public override void _Ready() {
      _ufo = GetNode("UFO") as Spatial;
      GD.Print(_ufo.Translation.y);
    }

    // 繰り返し実行される
    public override void _Process(float _delta) {
      Vector3 _ufoPos =  _ufo.Translation;
      _ufoPos.y += 0.01f;
      _ufo.Translation = _ufoPos;
    }
  }
  ```
  上記を含め次の方法で可能  
  ```c#
  // 指定位置に移動➀
  Vector3 _ufoPos =  _ufo.Translation;
  _ufoPos.y += 0.01f;
  _ufo.Translation = _ufoPos;

  // 指定位置に移動➁
  _ufo.Translation += new Vector3(0f, 0.01f, 0f);

  // 指定した値だけ移動（Scaleに依存）
  _ufo.Translate(new Vector3(0f, 0.01f, 0f));
  ```

* [Node2D](https://docs.godotengine.org/ja/stable/classes/class_node2d.html#node2d)ノード（2Dスプライト）の移動
  ```c#
  // Main.cs
  using Godot;

  public class Main : Node2D {
    private Node2D _ufo;

    // 最初に一度だけ実行される
    public override void _Ready() {
      _ufo = GetNode("UFO") as Node2D;
    }
    
    // 繰り返し実行される
    public override void _Process(float _delta) {
      Vector2 _ufoPos = _ufo.Position;
      _ufoPos.x += 1; // 1ピクセル移動
      _ufo.Position = _ufoPos;
    }
  }
  ```
  上記を含め次の方法で可能  
  ```c#
  // 指定位置に移動➀
  Vector2 _ufoPos = _ufo.Position;
  _ufoPos.x += 1; // 1ピクセル移動
  _ufo.Position = _ufoPos;

  // 指定位置に移動➁
  _ufo.Position += new Vector2(1, 0);

  // 指定した値だけ移動
  _ufo.Translate(new Vector2(1, 0));
  ```

参考：[移動の基本3種](#220611)（Godot 4.0 対応）  
参考：[衝突判定](#220612)（Godot 4.0 対応）  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月03日  
更新日：2022年03月05日 C#版を追加  
[[TOP]](#TOP)


<a id="マウス座標"></a>
# <b>マウス座標</b>

### 【GDScript版】 

 * 3D（Spatialノード）版  
  👇マウスの位置
    ```gdscript
    #Main.gd
    extends Spatial #2Dの場合はNode2D

    func _input(_event): # 入力イベント
      if _event is InputEventMouseMotion: # マウスを動かしている時
        print(_event.position) #-> (48, 425)
        print(_event.position.x) #-> 48
        print(_event.position.y) #-> 425
    ```
    👇入力座標位置  
    ```gdscript
    #Main.gd
    extends Spatial #2Dの場合はNode2D

    func _input(_event): # 入力イベント
      if _event is InputEventMouseButton: # マウスボタンを押した時
        if _event.button_index == 1: # マウスの左ボタン
          if _event.pressed: # 押している
            print(_event.position) #-> (48, 425)
            print(_event.position.x) #-> 48
            print(_event.position.y) #-> 425
    ```

 * 2D（Node2Dノード）版  
  👇マウスの位置
    ```gdscript
    # Main.gd
    extends Node2D

    var _ufo

    func _ready(): # 最初に一度だけ実行される
      _ufo = get_node("UFO")
      
    func _input(_event): # 入力イベント
      if _event is InputEventMouseMotion: # マウスを動かしている時
        _ufo.position.x = get_viewport().get_mouse_position().x
        _ufo.position.y = get_viewport().get_mouse_position().y
    ```
    👇入力座標位置  
    ```gdscript
    # Main.gd
    extends Node2D
      
    func _input(_event): # 入力イベント
      if _event is InputEventMouseButton: # マウスボタンを押した時
        if _event.button_index == 1: # マウスの左ボタン
          if _event.pressed: # 押している
            print(_event.position) #-> (216, 232)
            print(_event.position.x) #-> 216
            print(_event.position.y) #-> 232
    ```

### 【C#版】 

 * 3D（Spatialノード）版  
  👇マウスの位置
    ```c#
    // Main.cs
    using Godot;

    public class Main : Spatial {
      public override void _Input(InputEvent _event) {
        if (_event is InputEventMouseMotion _mouseEvent) {
          GD.Print(_mouseEvent.Position); //-> (423, 281)
          GD.Print(_mouseEvent.Position); //-> 423
          GD.Print(_mouseEvent.Position); //-> 281
        }
      }
    }
    ```
    👇入力座標位置  
    ```c#
    // Main.cs
    using Godot;

    public class Main : Spatial {
      public override void _Input(InputEvent _event) {
        if (_event is InputEventMouseButton _mouseEvent) {
          if (_mouseEvent.ButtonIndex == 1) {
            if (_mouseEvent.Pressed) {
              GD.Print(_mouseEvent.Position); //-> (282, 254)
              GD.Print(_mouseEvent.Position.x); //-> 282
              GD.Print(_mouseEvent.Position.y); //-> 254
            }  
          }
        }
      }
    }
    ```

 * 2D（Node2Dノード）版  
  👇マウスの位置
    ```c#
    // Main.cs
    using Godot;

    public class Main : Node2D {
      public override void _Input(InputEvent _event) {
        if (_event is InputEventMouseMotion _mouseEvent) {
          GD.Print(_mouseEvent.Position); //-> (337, 309)
          GD.Print(_mouseEvent.Position.x); //-> 337
          GD.Print(_mouseEvent.Position.y); //-> 309
        }
      }
    }
    ```
    👇入力座標位置  
    ```C#
    // Main.cs
    using Godot;

    public class Main : Node2D {
      public override void _Input(InputEvent _event) {
        if (_event is InputEventMouseButton _mouseEvent) {
          if (_mouseEvent.ButtonIndex == 1) {
            if (_mouseEvent.Pressed) {
              GD.Print(_mouseEvent.Position); //-> (357, 277)
              GD.Print(_mouseEvent.Position.x); //-> 357
              GD.Print(_mouseEvent.Position.y); //-> 277
            }
          }
        }
      }
    }
    ```

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月06日  
[[TOP]](#TOP)


<a id="画面サイズ"></a>
# <b>画面サイズ</b>

 [プロジェクト]-[プロジェクト設定…]-[**Display**]-[**Window**]で以下の通りに設定  
  * Size
    * **Width** : 1920（初期値:1024）
    * **Height** : 1080（初期値:600）
    * Resizable : ✓オン（初期値）
    * **Fullscreen** : **✓**オン（初期値:オフ）
  * Dpi
    * **Allow Hidpi** : **✓**オン（初期値:オフ）
  * Handheld
    * Orientation : landscape（初期値）

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月07日  
[[TOP]](#TOP)


<a id="Rouletteゲーム"></a>
# <b>Rouletteゲーム</b>
[『Unityの教科書』](https://amzn.to/3hU5s5Z)のChapter3（オブジェクトの配置と動かし方）のGodot版  

### 【GDScript版】  
ルーレット画像（Sprite）に以下のスクリプトをアタッチ
```gdscript
# Roullette.gd
extends Sprite # 要注意！

var _rotSpeed = 0 # 回転速度
  
func _process(_delta): # 繰り返し実行
  # 回転速度ぶんルーレットを回転させる
  rotation += _rotSpeed
  _rotSpeed *= 0.98 # ルーレットを減速させる

# マウスが押されたら回転速度を設定する
func _input(_event): # 入力イベント
  if _event is InputEventMouseButton: # マウスを押したら
    if _event.button_index == 1: # マウスの左ボタン
      if _event.pressed: # 押している
        _rotSpeed = 3;
```

### 【C#版】  
```c#
// Roulette.cs
using Godot;

public class Roulette : Sprite { // 要注意！
    private float _rotSpeed = 0f; // 回転速度

    // 繰り返し実行される
    public override void _Process(float _delta) {
        // 回転速度ぶんルーレットを回転させる
        Rotation += _rotSpeed;
        _rotSpeed *= 0.98f; // ルーレットを減速させる
    }

    // マウスが押されたら回転速度を設定する
    public override void _Input(InputEvent _event) {
        if (_event is InputEventMouseButton _mouseEvent) {
            if (_mouseEvent.ButtonIndex == 1) { // 左ボタン
                if (_mouseEvent.Pressed) {
                    _rotSpeed = 3f;
                }
            }
        }
    }
}
```

参考ファイル：[Roulette.zip](https://github.com/mubirou/Godot/blob/main/zip/Roulette.zip)  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月10日  
[[TOP]](#TOP)


<a id="SwipeCarゲーム"></a>
# <b>SwipeCarゲーム</b>
[『Unityの教科書』](https://amzn.to/3hU5s5Z)のChapter4（UIと監督オブジェクト）のGodot版  

### 【GDScript版】  
メインシーン（Main.tscn）に以下のスクリプトをアタッチ
```gdscript
# Main.gd
extends Node2D

var _car
var _flag

func _ready():
  _car = get_node("Car")
  _flag = get_node("Flag")

func _process(_delta):
  var _distance = _flag.position.x - _car.position.x
  if _distance > 0 :
    _distance = "%10.2f" % (round(_distance)/20) # 少数点2桁表示
    $Label.text = str(_distance) + " m to the GOAL"
  else:
    $Label.text = "GAME OVER"
```

車（Sprite）に以下のスクリプトをアタッチ
```gdscript
# Car.gd
extends Sprite

var _speed = 0
var _startX
  
func _process(_delta):
  translate(Vector2(_speed, 0))
  _speed *= 0.98

func _input(_event):
  if _event is InputEventMouseButton:
    if _event.button_index == 1:
      if _event.pressed: # MouseDown
        _startX = _event.position.x
      else: # MouseUp
        var _disX = _event.position.x - _startX
        _speed = _disX / 20
        $AudioStreamPlayer2D.play() # 効果音は.wav
```

### 【C#版】  
メインシーン（Main.tscn）に以下のスクリプトをアタッチ
```c#
// Main.cs
using Godot;

public class Main : Node2D {
    private Node2D _car;
    private Node2D _flag;
    private Label _label;

    public override void _Ready() {
        _car = GetNode("Car") as Node2D;
        _flag = GetNode("Flag") as Node2D;
        _label = GetNode<Label>("Label");
    }

    public override void _Process(float _delta) {
        float _distance = _flag.Position.x - _car.Position.x;
        if (_distance > 0) {
            string _distanceText = (_distance/20).ToString("F2");
            _label.Text = _distanceText + " m to the GOAL";
        } else {
            _label.Text = "GAME OVER";
        }
    }
}
```

車（Sprite）に以下のスクリプトをアタッチ
```c#
// Car.cs
using Godot;

public class Car : Sprite {
    private float _speed = 0f;
    private float _startX;
    private AudioStreamPlayer2D _se;

    public override void _Ready() {
        _se = GetNode<AudioStreamPlayer2D>("AudioStreamPlayer2D");
    }

    public override void _Process(float _delta) {
        Translate(new Vector2(_speed, 0));
        _speed *= 0.98f;
    }

    public override void _Input(InputEvent _event) {
        if (_event is InputEventMouseButton _mouseEvent) {
            if (_mouseEvent.ButtonIndex == 1) {
                if (_mouseEvent.Pressed) { // MouseDown
                    _startX = _mouseEvent.Position.x;
                } else { // MouseUp
                    float _disX = _mouseEvent.Position.x - _startX;
                    _speed = _disX / 20;
                    _se.Play(); // SEは.wav
                }
            }
        }
    }
}
```


参考：[小数点以下2桁表示](https://docs.godotengine.org/ja/stable/tutorials/scripting/gdscript/gdscript_format_string.html#padding)、[外部フォント](https://note.com/doromaito/n/n60e16bdaa1be)、[効果音](http://blawat2015.no-ip.com/~mieki256/diary/202010211.html)  
参考ファイル：[SwipeCar.zip](https://github.com/mubirou/Godot/blob/main/zip/SwipeCar.zip)  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月23日  
更新日：2022年03月24日 C#版追加  
[[TOP]](#TOP)


<a id="220501"></a>
# <b>Quest + Oculus Link</b>

1. [Godot Standard version 64-bit(x86_64)](https://godotengine.org/download/windows) をダウンロード
1. [新規プロジェクト]（レンダラー：**OpenGL ES 2.0**）を作成
1. 最上段にある [AssetLib] から "**OpenXR Plugin**"（v.1.2.0）を [ダウンロード] ＆ [インストール]
1. [3Dシーン] を作成
1. [シーン]-[シーンを保存]
1. [ファイルシステム]-[res://]-[addons]-[godot-openxr]-[scenes]-[**first_person_controller_vr.tscn**] を上記の [シーン]-[Spatial] 上にドラッグ＆ドロップ  
1. [プロジェクト]-[プロジェクト設定]-[一般]-[Display]-[Window]-[**Use Vsync**] の ✓オン を外す（フレームレートを向上させるため）
1. [プリミティブ](#220701) など何かオブジェクトを配置（任意）し以下のような階層にする  
  Spatial  
　  ├ FPController（VR用カメラなど）  
　  └ MeshInstance（任意のオブジェクト）  
1. [**Oclus Linkの準備**](https://github.com/mubirou/Unity3D/tree/master/study-notes#oculus-link%E3%81%AE%E6%BA%96%E5%82%99) をする
1. Godot の [▶] を押して Quest + Godot が同時再生されれば成功！

参考：[framesynthesis.jp](https://framesynthesis.jp/tech/godot/vr/)  
実行環境：Windows 10、Godot 3.4.4 Standard  
Meta Quest（初代）v.39.0、Oculusアプリ v.39.0  
作成者：夢寐郎  
作成日：2022年05月01日  
[[TOP]](#TOP)


<a id="220502"></a>
# <b>Questコントローラー表示</b>

1. [Quest + Oculus Link](#220501) の設定をおこなう
1. 最上段にある [AssetLib] から "**Oculus Quest VR Toolkit**"（v.0.4.2）を [ダウンロード] ＆ [インストール]
1. [シーン]-[Main]-[**FPController**] を選択し右クリックし [編集可能な子] を [✓]
1. 同様に [ローカルにする] を選択
1. [ファイルシステム]-[res://]-[OQ_Toolkit]-[OQ_ARVRController]-[Models3d]-[**OculusQuestTouchController_Left.glft**] を上記で開いた [FPController]-[LeftHandController] 上にドラッグ＆ドロップ
1. 同様に [**OculusQuestTouchController_Right.glft**] を [RightHandController] 上にドラッグ＆ドロップ  
  Spatial  
　  ├ FPController（**ARVROrigin**）  
　  │   ├　**ARVRCamera**  
　  │   ├　LeftHandController（**ARVRController**）  
　  │   │　　└ OculusQuestTouchController_Left（.glTF）  
　  │   └　RightHandController（**ARVRController**）  
　  │　　  └ OculusQuestTouchController_Right（.glTF）  
　  └ MeshInstance（任意のオブジェクト）  
1. [Main] シーンに戻ってから [▶] を押して Quest + Godot が同時再生されコントローラーが表示されれば成功！（ボタン類は動かない）

参考：[docs.godotengine.org](https://docs.godotengine.org/ja/stable/tutorials/vr/xr_primer.html#new-ar-vr-nodes)

＜参考：Unity Asset Store の利用＞  
1. [Questコントローラー表示](https://github.com/mubirou/Unity3D/tree/master/study-notes#quest%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E8%A1%A8%E7%A4%BA)で必要な作業をおこなう
1. Unity の [Assets]-[Oculus]-[VR]-[Meshes]-[OculusTouchForQuestAndRiftS]-[**OculusTouchForQuestAndRiftS_Left.fbx**] および [**OculusTouchForQuestAndRiftS_Right.fbx**] を Godot のプロジェクトフォルダ内にコピー

実行環境：Windows 10、Godot 3.4.4  
作成者：夢寐郎  
作成日：2022年05月23日  
[[TOP]](#TOP)


<a id="220503"></a>
# <b>is_button_pressed()</b>

1. [検証用コード](#220503_1)
1. [検証結果](#220503_2)
1. [実践編](#220503_3)
1. [応用編（Down/Hold/Up）](#220503_4)

<a id="220503_1"></a>

### 検証用コード
[Questコントローラー](#220502)の LeftHandController または RightHandController にアタッチ済の controller.gd の _process(delta) 関数内に追加

```gdscript
if is_button_pressed(0): print("0")
if is_button_pressed(1): print("1")
if is_button_pressed(2): print("2")
if is_button_pressed(3): print("3")
if is_button_pressed(4): print("4")
if is_button_pressed(5): print("5")
if is_button_pressed(6): print("6")
if is_button_pressed(7): print("7")
if is_button_pressed(8): print("8")
if is_button_pressed(9): print("9")
if is_button_pressed(10): print("10")
if is_button_pressed(11): print("11")
if is_button_pressed(12): print("12")
if is_button_pressed(13): print("13")
if is_button_pressed(14): print("14")
if is_button_pressed(15): print("15")
if is_button_pressed(16): print("16")
if is_button_pressed(17): print("17")
if is_button_pressed(18): print("18")
if is_button_pressed(19): print("19")
if is_button_pressed(20): print("20")
if is_button_pressed(21): print("21")
if is_button_pressed(22): print("22")
if is_button_pressed(23): print("23")
if is_button_pressed(24): print("24")
if is_button_pressed(25): print("25")
if is_button_pressed(26): print("26")
if is_button_pressed(27): print("27")
if is_button_pressed(28): print("28")
if is_button_pressed(29): print("29")
if is_button_pressed(30): print("30")  
if is_button_pressed(31): print("31")
if is_button_pressed(32): print("32")
if is_button_pressed(64): print("64")
if is_button_pressed(71): print("71")
if is_button_pressed(128): print("128")
if is_button_pressed(256): print("256")
if is_button_pressed(512): print("512")
if is_button_pressed(1024): print("1024")
if is_button_pressed(2048): print("2048")
if is_button_pressed(4096): print("4096")
if is_button_pressed(8192): print("8192")
if is_button_pressed(16777216): print("16777216")
```
参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_@globalscope.html#globalscope)  
["is_button_pressed()" TOP](#220503)  

<a id="220503_2"></a>

### 検証結果  
  [Questコントローラー](#220502)の LeftHandController または RightHandController にアタッチ済の controller.gd の _process(delta) 関数内に追加
  ```gdscript
  if is_button_pressed(1):
    if get_controller_id() == 1: print("Yを押した")
    if get_controller_id() == 2: print("Bを押した")

  if is_button_pressed(2):
    if get_controller_id() == 1: print("左中指トリガーを押した_50％")
    if get_controller_id() == 2: print("右中指トリガーを押した_50％")
    
  if is_button_pressed(3):
    print("MENUを押した")
    
  if is_button_pressed(5):
    if get_controller_id() == 1: print("Xにタッチ")
    if get_controller_id() == 2: print("Aにタッチ")

  if is_button_pressed(6):
    if get_controller_id() == 1: print("Yにタッチ")
    if get_controller_id() == 2: print("Bにタッチ")
    
  if is_button_pressed(7):
    if get_controller_id() == 1: print("Xを押した")
    if get_controller_id() == 2: print("Aを押した")
  
  if is_button_pressed(12):
    if get_controller_id() == 1: print("左アナログスティックにタッチ")
    if get_controller_id() == 2: print("右アナログスティックにタッチ")
    
  if is_button_pressed(14):
    if get_controller_id() == 1: print("左アナログスティックを押し込んだ")
    if get_controller_id() == 2: print("右アナログスティックを押し込んだ")
    
  if is_button_pressed(15):
    if get_controller_id() == 1: print("左人差し指トリガーを押した_70％")
    if get_controller_id() == 2: print("右人差し指トリガーを押した_70％")
  
  if is_button_pressed(16):
    if get_controller_id() == 1: print("左人差し指トリガーにタッチ_10％")
    if get_controller_id() == 2: print("右人差し指トリガーにタッチ_10％")
  ```
  参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_@globalscope.html#globalscope)  
  ["is_button_pressed()" TOP](#220503)  

<a id="220503_3"></a>

### 実践編  
1. [Questコントローラー表示](#220502)の設定を行う
2. LeftHandController または RightHandController にアタッチ済の controller.gd を以下の通り変更
```gdscript
# controller.gd
extends ARVRController

signal activated
signal deactivated

signal LTriggerDown
signal RTriggerDown

func _process(delta):
  if get_is_active():
    if !visible:
      visible = true
      print("Activated " + name)
      emit_signal("activated")
  elif visible:
    visible = false
    print("Deactivated " + name)
    emit_signal("deactivated")
    
  if is_button_pressed(JOY_VR_TRIGGER): # 15
    if get_controller_id() == 1:
      emit_signal("LTriggerDown")
    if get_controller_id() == 2:
      emit_signal("RTriggerDown")
```
3. 大元の Spatial ノードの名前を Main に変更しスクリプト（Main.gd）をアタッチし以下の通りに記述  
```gdscript
# Main.gd
extends Spatial

var _LController
var _RController

func _ready():
  _LController = get_node("/root/Main/FPController/LeftHandController")
  _RController = get_node("/root/Main/FPController/RightHandController")
  # $"/root/Main/FPController/〇〇HandController" でも可
  
  _LController.connect("LTriggerDown", self, "LTriggerDownHandler")
  _RController.connect("RTriggerDown", self, "RTriggerDownHandler")

func LTriggerDownHandler():
  print("LTriggerDown")

func RTriggerDownHandler():
  print("RTriggerDown")
```
["is_button_pressed()" TOP](#220503)  


<a id="220503_4"></a>

### 応用編（Down/Hold/Up）

[Questコントローラー](#220502)の LeftHandController または RightHandController にアタッチ済の controller.gd の _process(delta) 関数内に追加

```gdscript
if is_button_pressed(JOY_VR_TRIGGER): # 15
  if get_controller_id() == 1:
    if !_isLTriggerDown:
      print("左人差し指トリガーを押した")
      _isLTriggerDown = true
    else: print("左人差し指トリガーを押し続けている") # 省略すると（downのみ）  
  if get_controller_id() == 2:
    if !_isRTriggerDown:
      print("右人差し指トリガーを押した")
      _isRTriggerDown = true
    else: print("右人差し指トリガーを押し続けている") # 省略すると（downのみ）
else:
  if _isLTriggerDown:
    _isLTriggerDown = false
    print("左人差し指トリガーを離した")
  if _isRTriggerDown:
    _isRTriggerDown = false
    print("右人差し指トリガーを離した")
```

実行環境：Windows 10、Godot 3.4.4  
作成者：夢寐郎  
作成日：2022年05月23日  
["is_button_pressed()" TOP](#220503)  
[[TOP]](#TOP)


<a id="220505"></a>
# <b>Questビルド</b>

### この項目は書きかけです

自作 .apk ファイルを [SideQuest](https://sidequestvr.com/) を使って Meta Quest にインストールする方法  

📖 [**SideQuest**](https://sidequestvr.com/) とは…  
Meta の公式ストア以外のアプリを Meta Quest にインストール･削除等の操作を簡単に行える Windows 用ツール  

1. [Androidビルド](#Androidビルド)および、[FRAME SYNTHESIS](https://framesynthesis.jp/tech/godot/vr/)の「PC･Questで動作するVRアプリを作るには」を参考に **.apk** ファイルを作成する（特に以下の点に注意）  
    * ~~[プロジェクト]-[プロジェクト設定]-[一般]-[Display]-[Window]-[Vsync]-[**Use Vsync**] の ✓ を外す~~  
    * ~~[プロジェクト]-[プロジェクト設定]-[一般]-[Rendering]-[Vram Compression]-[**Import Etc**] を ✓ する~~
    * [プロジェクト]-[エクスポート]-[追加]-[Android]-[Xr Features]-[Xr Mode]-[**OpenXR**] に変更

1. [Quest を開発モードにする](https://github.com/mubirou/Unity3D/tree/master/metaquest#%E9%96%8B%E7%99%BA%E8%80%85%E3%83%A2%E3%83%BC%E3%83%89)

1. [SideQuestを使ってOculusQuestにapkファイルをインストールしよう！](https://vracademy.jp/blog/sidequest%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6oculusquest%E3%81%ABapk%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%97%E3%82%88%E3%81%86/)の指示に従う（主な手順は以下の通り）  
    1. Windows に **SideQuest** をインストール
    1. Windows と **Quest** を接続
    1. SideQuest 上部の **Currently installed apps** アイコンを選択
    1. **Search package** の領域に上記で作成した **.apk** ファイルをドラッグ＆ドロップ
    1. **Quest** 上の [アプリ] の [**提供元不明**] の中からインストールしたアプリを選択し実行

参考：[VRアカデミー](https://vracademy.jp/blog/sidequest%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6oculusquest%E3%81%ABapk%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%97%E3%82%88%E3%81%86/)、[FRAME SYNTHESIS](https://framesynthesis.jp/tech/godot/vr/)  
実行環境：Windows 10、Godot 3.4.4、SideQuest 0.10.27  
作成者：夢寐郎  
作成日：2022年05月26日  
更新日：2022年09月01日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220601"></a>
# <b>RayCastボタン</b>

レーザーポインタの実装メモ（手作業配置編）。  
右人差し指トリガーで選択（≒Click ）すると選んだオブジェクトの名前が返る。  

📝 選択するオブジェクトの用意  
  1. [立方体](#220701)などを用意
  1. 上記を選択し [子ノードを追加]-[**KinematicBody**]
  1. KinematicBody を選択し [子ノードを追加]-[**CollisionShape**]
  1. CollisionShape を選択し [インスペクター]-[**Shape**]-[追加 BoxShape] を選ぶ（階層は以下の通り）  

　  ├ MeshInstance（選択するオブジェクト）  
　  │     └ **KinematicBody**（重要）  
　  │　　   └ **CollisionShape**（反応する領域）  

📝 RayCast の用意
  1. [[**FPController**](#220501)]-[**RightHandController**] にコントローラを視覚化させるオブジェクト（"ControllerR"）を用意
  1. RightHandController を選択し [子ノードを追加]-[**RayCast**]
  1. RayCast を選択し [インスペクター] の [**Cast To**] を [x 0、y 0、**z -1000**] に設定（階層は以下の通り）  

　  ├ FPController  
　  │   ├ Configuration  
　  │   ├ ARVRCamera  
　  │   ├ LeftHandController  
　  │   └ RightHandController  
　  │　　　 ├ ControllerR（コントローラの視覚化）  
　  │　　　 └ **RayCast**（重要）  

📝 RayCast の視覚化
  1. RightHandController を選択し [子ノードを追加]-[**MeshInstance**] を選んで名前を "MeshInstance" → "RayLine" に変更
  1. RayLine を選択し [インスペクター]-[Mesh]-[新規 **CubeMesh**] を選ぶ
  1. 引続き [インスペクター]-[Transform] で次の通りに設定  
      * **Translation**：x 0、y 0、**z -1000**
      * **Scale**：x 0.003、y 0.003、**z 1000**
  1. 半透明にする  
      1. [インスペクタ]-[Material]-[新規 **SpatialMaterial**] を選択
      1. [編集] で以下の通りに設定  
          * [**Albedo**]-[**Color**]：**#80ffffff**（白･不透明度50％）
          * [**Flags**]-[**Transparent**]：**✓**

📝 ヒットしたポイントの視覚化
  1. RightHandController を選択し [子ノードを追加]-[**MeshInstance**] を選んで名前を "MeshInstance" → "HitPoint" に変更
  1. HitPoint を選択し [インスペクター]-[Mesh]-[新規 **SphereMesh**] を選ぶ
  1. 引続き [インスペクター]-[Transform] で次の通りに設定  
      * **Scale**：x 0.02、y 0.02、z 0.02  
  1. 半透明にする  
      1. [インスペクタ]-[Material]-[新規 **SpatialMaterial**] を選択
      1. [編集] で以下の通りに設定  
          * [**Albedo**]-[**Color**]：**#ccffffff**（白･不透明度80％）
          * [**Flags**]-[**Transparent**]：**✓**

（ここまでの作業の階層は以下の通り）  
  Spatial  
　  ├ FPController  
　  │   ├ Configuration  
　  │   ├ ARVRCamera  
　  │   ├ LeftHandController  
　  │   └ RightHandController  
　  │　　　 ├ ControllerR（コントローラの視覚化）  
　  │　　　 ├ **RayCast**（重要）  
　  │　　　 ├ RayLine（RayCastの視覚化）  
　  │　　　 └ HitPoint（ヒットしたポイントの視覚化）  
　  └ MeshInstance（選択するオブジェクト）  
　　　　 └ **KinematicBody**（重要）  
　　　　　　　 └ **CollisionShape**（反応する領域）  

📝 コードの記述  

* RightHandController にアタッチ済の **controller.gd** に加筆  

```gdscript
# controller.gd
extends ARVRController

signal activated
signal deactivated
signal TriggerDownR
signal TriggerUpR

var _isTriggerDownR = false

func _process(delta):
  if get_is_active():
    if !visible:
      visible = true
      print("Activated " + name)
      emit_signal("activated")
  elif visible:
    visible = false
    print("Deactivated " + name)
    emit_signal("deactivated")

  if is_button_pressed(JOY_VR_TRIGGER): # 15
    if get_controller_id() == 2:
      if !_isTriggerDownR:
        _isTriggerDownR = true
        emit_signal("TriggerDownR")
  else:
    if _isTriggerDownR:
      _isTriggerDownR = false
      emit_signal("TriggerUpR")
```

* 大元の Spatial に新規で Main.gd をアタッチし以下の通りに記述  

```gdscript
# Main.gd
extends Spatial

var _controllerR
var _rayCastR
var _rayLineR
var _hitPointR
var _selectCollider

func _ready():
  _controllerR = get_node("FPController/RightHandController")
  _controllerR.connect("TriggerDownR", self, "TriggerDownHandlerR")
  _controllerR.connect("TriggerUpR", self, "TriggerUpHandlerR")
  _rayCastR = get_node("FPController/RightHandController/RayCast")
  _rayLineR = get_node("FPController/RightHandController/RayLine")
  _hitPointR = get_node("FPController/RightHandController/HitPoint")
  _hitPointR.visible = false

func _physics_process(delta):
  if _rayCastR.is_colliding():
    _hitPointR.visible = true
    _hitPointR.global_transform.origin = _rayCastR.get_collision_point()
    var _dis = (_rayCastR.global_transform.origin - _hitPointR.global_transform.origin).length()
    _rayLineR.scale.z = _dis/2
    _rayLineR.translation.z = -_dis/2
  else:
    _rayLineR.scale.z = 1000
    _rayLineR.translation.z = -1000
    _hitPointR.visible = false

func TriggerDownHandlerR():
  _selectCollider = _rayCastR.get_collider()

func TriggerUpHandlerR():
  if _rayCastR.get_collider() == null: return # DEBUG
  if _rayCastR.get_collider() == _selectCollider:
    print(_selectCollider.get_parent().name + " is selected")
```

実行環境：Windows 10、Godot 3.4.4 + OpenXR Plugin 1.2  
Meta Quest 40.0、Oculus Link（Oculusアプリ）  
作成者：夢寐郎  
作成日：2022年06月02日  
更新日：2022年06月03日  
[[TOP]](#TOP)


<a id="220605"></a>
# <b>VR空間に2Dシーンを表示</b>

VR 空間上に 640x480px の 2D シーン（Node2D.tscn）を表示する  

📝 諸準備  
VR コンテンツ開発の [諸準備](#220501) をする

📝 **Viewport** の作成
1. 大元の Spatial を選択し [子ノードを追加]-[**Viewport**] を選択
1. Viewport の [インスペクター] で次の通りに設定  
    * **Size**：**x 640**、**y 480**（2Dシーンのサイズに合わせる）
1. Viewport を選択し [子ノードを追加]-[**Node2D**] を選択  

📝 **2Dシーン**の作成
1. 上記で作成した Node2D を右クリック → [**ブランチをシーンとして保存**] → **Node2D.tscn** で保存（名前は任意）
1. Node2D の [**エディターで開く**] アイコン（＝カチンコ）を選択
1. 640x480 の画像（.jpg）などをステージにドラッグ＆ドロップ  
1. 配置した **Sprite** の [インスペクター] で次の通りに設定すると楽チン  
    * [Offset]-[**Centered**]：**オフ**
    * [Transform]-[**Position**]：**x 0**、**y 0**

📝 **PlaneMesh** の作成（これに2Dシーンを表示）
1. 大元の Spatial を選択し [子ノードを追加]-[**MeshInstance**] を選択
1. [インスペクター]-[Mesh]-[新規 **PlaneMesh**] を選択
1. 引続き [インスペクター]-[Transform] を次の通りに変更  
    * **Transform**：x 0、**y 1**、**z -3**  
    * **Rotation**：**x 90**、y 0、z 0
    * **Scale**：**x 1.5**、y 1、z 1（∵640:480=**1.5**:1）

（ここまでの作業の階層は以下の通り）  
  Spatial  
　  ├ FPController  
　  ├ **Viewport**  
　  │   └ **Node2D**（2Dシーン/**.tscn**）  
　  └ MeshInstance（**PlaneMesh**/これに2Dシーンを表示）  

📝 **PlaneMesh** に **Viewport** を表示する
1. 上記で作成した MeshInstance（PlaneMesh）の [インペクター] を開く
1. [**Material**]-[新規 **SpatialMaterial**] を選択
1. 表示された球型の右側にある [v]-[編集]-[**Resource**] を選択し次の通りに設定  
    * **Local Top Scene**：**✓オン**
1. 引続き [**Albedo**]-[**Texture**]-[新規 **ViewportTexture**] を選択
1. 表示された [Viewport]-[編集]-[**Viewport Path**]-[**割り当て..**] から上記で作成した **Viewport** を選択  

    💡 プログラムで表示させる場合 2～5の代わりに以下を実行…  
    1. [**Geometry**]-[**Material Override**]-[新規 **SpatialMaterial**] を選択
    1. 大元の Spatial を右クリック → [**スクリプトをアタッチ**] を選び **.gd** ファイルを作成し以下の通りに記述  
    ```gdscript
    extends Spatial

    func _ready():
      $MeshInstance.material_override.albedo_texture = $Viewport.get_texture()
    ```
参考：[GODOT Asset Libra
ry](https://godotengine.org/asset-library/asset/129)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月07日  
[[TOP]](#TOP)


<a id="220606"></a>
# <b>360°パノラマ</b>

### この項目は Godot 3.X 用です

📝 [360°画像](https://pixexid.com/search/360%20panorama)の用意  

📝 **WorldEnvironment** の作成  

1. 大元の Spatial を選択し [子ノードを追加]-[**WorldEnvironment**] を選択
1. WorldEnvironment を選択し [インスペクター] を設定  
    * Environment：[クイックロード]-[**default_env.tres**]

📝 **default_env.tres** の設定

1. [ファイルシステム]-[**default_env.tres**]-[**Background**] を次の通りに設定  
    * Mode：**Sky**
    * Sky：[新規 **PanoramaSky**]-[編集]  
        * **Panorama**：360°画像（**.jpg** [.hdr](https://ja.wikipedia.org/wiki/%E3%83%8F%E3%82%A4%E3%83%80%E3%82%A4%E3%83%8A%E3%83%9F%E3%83%83%E3%82%AF%E3%83%AC%E3%83%B3%E3%82%B8%E3%82%A4%E3%83%A1%E3%83%BC%E3%82%B8) **.png**）をドラッグ＆ドロップ
        * **Radiance Size**：**512**

参考：[**360°パノラマ（Godot 4.0 対応）**](#220710)  
参考：[GODOT Asset Library](https://godotengine.org/asset-library/asset/123)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月09日  
更新日：2022年06月10日  
[[TOP]](#TOP)


<a id="220607"></a>
# <b>鏡面仕上げボール</b>
ステンレス球･シャボン玉風なオブジェクトの作成  

1. [360°パノラマ](#220606)を設定
1. 大元の Spatial を選択し [子ノードを追加]-[**MeshInstance**] を選択
1. [インスペクター]-[Mesh]-[新規 **SphereMesh**] を選択
1. [インスペクター]-[Transform] を次の通りに変更  
    * Translation：x 0、y 0.5、z -1
    * Scale：x 0.3、y 0.3、z 0.3
1. [インスペクター]-[**Material**]-[新規 **SpatialMaterial**]-[編集]  
    * [Flags]-[**Transparent**]：[Albedo]-[Color] の不透明度と連動
    * [Albedo]-[**Color**]：不透明度の設定可能（初期値 #ffffff）
    * [Metallic]-[**Metallic**]：**1**
    * [Roughness]-[**Roughness**]：**0.02**（光沢感）

参考：[GODOT Asset Library](https://godotengine.org/asset-library/asset/123)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月10日  
[[TOP]](#TOP)


<a id="220610"></a>
# <b>物理エンジン RigidBodyとStaticBody</b>

[物理エンジン](https://docs.godotengine.org/ja/stable/tutorials/physics/physics_introduction.html?highlight=%E7%89%A9%E7%90%86%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3#physics-introduction)を使ってオブジェクトを床に落下させる  

📖 [RigidBody](https://docs.godotengine.org/ja/stable/classes/class_rigidbody.html?highlight=Rigidbody#rigidbody)：衝突時にバウンド等する  
📖 [StaticBody](https://docs.godotengine.org/ja/stable/classes/class_staticbody.html#staticbody)：衝突しても動かない（CPU負荷少ない）  

📝 諸準備  
VR コンテンツ開発の [諸準備](#220501) をする

📝 各種ノードを以下の通り配置  
  Spatial  
　  ├ FPController  
　  ├ **RigidBody**（"Cube〇"等に変更）  
　  │   └ **CollisionShape**（BoxShape型）  
　  │　　　 └ **MeshInstance**（CubeMesh型＝落下物）  
　  └ **StaticBody**（"Floor"等に変更）  
　  　  └ **CollisionShape**（BoxShape型）  
　  　　　　└ **MeshInstance**（CubeMesh型＝床）  

💡 各種設定のポイント  

* オブジェクトの**大きさ**  
    * 各 **CollisionShape** の [Transform]-[**Scale**] で設定する  
    * 〇〇Body や MeshInstance の [Scale] は全て初期値（"1"）のまま  

* オブジェクトの**位置**や**角度**  
    * 各 **〇〇Body** の [Transform]-[**Translation**] と [**Rotation Degrees**] で設定する  
    * CollisionShape や MeshInstance の [Translation] と [Rotation Degrees] は全て初期値（"0"）のまま  

* **重力加速度**の調整（ゆっくり落下させる）
    * 各 **〇〇Body** の **Gravity Scale** を「0.05」等に変更

実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月13日  
[[TOP]](#TOP)


<a id="220614"></a>
# <b>BGM･SE</b>

📖 サウンドの用意  
  1. 用途別サウンドファイルを用意  
    * **ループサウンド**：**.ogg**  
    * **効果音**：**.wav**  
  1. 上記のサウンドファイルをプロジェクトフォルダに置く  
  1. [Godot]-[ファイルシステム] の **.ogg** をＷクリック
  1. [インスペクター]-[**Loop**]-[**✓ オン**]

📖 **AudioStreamPlayer3D** の作成  
  1. [シーン]-[＋]-[**AudioStreamPlayer3D**] を選択
  1. 名前を "BGM〇" "SE〇" 等に変更
  1. [BGM〇] or [SE〇]-[インスペクター]-[**Stream**]-[クイックロード] から **.ogg** / **.wav** ファイルを選択

📖 プログラミング例  
  ```gdscript
  # Main.gd
  extends Spatial

  var _BGM1
  var _SE1

  func _ready():
    _BGM1 = get_node("BGM1")
    _SE1 = get_node("SE1")
    _BGM1.play()
  
  func _xxHandler():
    _BGM1.stop()
    _SE1.play()
  ```

参考：[GODOT Asset Library](https://godotengine.org/asset-library/asset/515)  
参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/tutorials/assets_pipeline/importing_audio_samples.html)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月20日  
[[TOP]](#TOP)


<a id="220615"></a>
# <b>Blender(階層構造) to Godot</b>

📝 Blender の作業  

1. [階層構造の設定](https://github.com/mubirou/Blender/tree/master/study-notes#%E9%9A%8E%E5%B1%A4%E6%A7%8B%E9%80%A0%E3%81%AE%E8%A8%AD%E5%AE%9A)をする  
（例：スモールセコンド付時計）  
　  ├ **watchBoard**（時計全体の文字盤）  
　  │   └ **secondBoard**（スモールセコンドの文字盤）  
　  │　　 └ **secondHand**（秒針）  
1. 上記の全てを選択する
1. [ファイル]-[エクスポート]-[**glTF 2.0 (.glb/.gltf)**] を選択
1. 以下の通り設定  
    * フォーマット：**glTFバイナリ (.glb)**
    * 内容：**✓ 選択したオブジェクト**  
1. Godot のプロジェクトフォルダー内に "Watch" フォルダを作成し "**Watch.glb**" として保存

📝 Godot の作業  

1. [ファイルシステム]-[Watch]-[**Watch.glb**] を [シーン] にドラッグ＆ドロップ  
1. [インスペクター]-[Transform] で位置やサイズを調整
1. [シーン]-[Watch] を右クリック → [**編集可能な子**] を選択

参考：[Blender to Godot](#220609)  
実行環境：Windows 10、Godot 3.4.4、Blender 3.2.0  
作成者：夢寐郎  
作成日：2022年06月21日  
[[TOP]](#TOP)


<a id="220617"></a>
# <b>アニメーション遷移</b>

[キャラクターポーズ制御](https://github.com/mubirou/Unity3D/tree/master/sample#001-%E3%82%AD%E3%83%A3%E3%83%A9%E3%82%AF%E3%82%BF%E3%83%BC9%E3%83%9D%E3%83%BC%E3%82%BA%E5%88%B6%E5%BE%A1) の Godot 版  

📝 Blender の作業  

1. Blender で[モデリング＆アニメーション](https://github.com/mubirou/Blender/tree/master/sample#001-%E3%82%AD%E3%83%A3%E3%83%A9%E3%82%AF%E3%82%BF%E3%83%BC9%E3%83%9D%E3%83%BC%E3%82%BA)  
（階層構造は以下の通り）  
　  ├ アーマチュア  
　  │   ├　アニメーション  
　  │   ├　ポーズ  
　  │   ├　アーマチュア  
　  │   └　立方体  
1. アーマチュア以下全てを選択する
1. [ファイル]-[エクスポート]-[**glTF 2.0 (.glb/.gltf)**] を選択
1. 以下の通り設定  
    * フォーマット：**glTFバイナリ (.glb)**
    * 内容：**✓ 選択したオブジェクト**  
1. Godot のプロジェクトフォルダー内に "〇〇" フォルダを作成し "〇〇.glb" として保存

📝 Godot の作業  

1. [ファイルシステム]-[〇〇]-[〇〇.glb] を [シーン] にドラッグ＆ドロップ（〇〇.glbに✖の印がついている場合はステージ上にドラッグ＆ドロップ＝原因不明･要調査）  
1. [〇〇]-[インスペクター]-[Transform] で位置やサイズを調整
1. [シーン]-[〇〇] を右クリック → [編集可能な子] を選択
1. [シーン]-[〇〇]-[**[AnimationPlayer](https://docs.godotengine.org/ja/stable/classes/class_animationtree.html#class-animationtree)**] を選択（タイムラインが表示される）
1. [保留アクション]] を変更するとポーズが切り替わるのを確認
1. ポーズを確認しながら [アニメーション]-[名前を変更] で "保留アクション〇" を [Blender で設定したポーズ](https://github.com/mubirou/Unity3D/tree/master/sample#001-%E3%82%AD%E3%83%A3%E3%83%A9%E3%82%AF%E3%82%BF%E3%83%BC9%E3%83%9D%E3%83%BC%E3%82%BA%E5%88%B6%E5%BE%A1)の名前に変更（この画面で [**アニメーションループ**] をオンにする）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202206251244.jpg)  
1. 大元の Spatial を選択し [子ノードを追加]-[**[AnimationTree](https://docs.godotengine.org/ja/stable/classes/class_animationplayer.html?highlight=AnimationPlayer#animationplayer)**] を選択  
（階層構造は以下の通り）  
  Spatial  
　  ├ FPController  
　  ├ 〇〇  
　  │   ├ アーマチュア  
　  │   │　└ Skeleton  
　  │   │　　 └ 立方体  
　  │   └ **[AnimationPlayer](https://docs.godotengine.org/ja/stable/classes/class_animationtree.html#class-animationtree)**（自動的に生成）  
　  └ **[AnimationTree](https://docs.godotengine.org/ja/stable/tutorials/animation/animation_tree.html?highlight=StateMachine#using-animationtree)**  
1. [**AnimationTree**]-[インスペクター] で各種設定  
    * **Tree Root**：**AnimationNodeBlendTree**
    * **Anim Player**：〇〇の階層下にある **[AnimationPlayer](https://docs.godotengine.org/ja/stable/classes/class_animationplayer.html?highlight=AnimationPlayer#animationplayer)**  
    * **Active**：**✓**オン（オンにすると [AnimationPlayer] でポーズの確認ができなくなります）
1. [AnimationTree]（ノード設定画面）で右クリック → [**Transition**] を選択
1. [Transition]-[インスペクター] で各種設定をする
    * [**Input Count**]：ポーズ数
    * [**Xfade Time**]：ポーズ遷移の時間（0.3秒程度）
    * [**Input 〇**]-[**Name**]：[Blender で設定したポーズ](https://github.com/mubirou/Unity3D/tree/master/sample#001-%E3%82%AD%E3%83%A3%E3%83%A9%E3%82%AF%E3%82%BF%E3%83%BC9%E3%83%9D%E3%83%BC%E3%82%BA%E5%88%B6%E5%BE%A1)の名前 
![image](https://github.com/mubirou/Godot/blob/main/jpg/202206251302.jpg)  
1. [AnimationTree]（ノード設定画面）で右クリック → [**アニメーション（Animation）**] を選択
1. 上記の [**AnimationPlayer**] で設定したポーズを指定（下図参照）
1. 同様にポーズ数だけ繰り返し、各ノードを接続（下図）<a id="220617-1"></a>  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202206261024.jpg)  
1. [**Transition**] の最下部のポーズを変更し"スムーズな遷移"を確認
1. ポーズを変更したいタイミングにコードを記述（例）  

```gdscript
func TriggerDownHandlerR():
  if _rayCastR.get_collider() == null: return
  _selectCollider = _rayCastR.get_collider()

  var _cubeName = _selectCollider.get_parent().name
  if _cubeName == "CubeR":
    $AnimationTree["parameters/Transition/current"] = 0
  elif _cubeName == "CubeY":
    $AnimationTree["parameters/Transition/current"] = 1
  elif _cubeName == "CubeB":
    $AnimationTree["parameters/Transition/current"] = 2
```

実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月25日  
[[TOP]](#TOP)


<a id="220618"></a>
# <b>アニメーション速度変更</b>

1. [各ノードの接続](#220617-1)まで作業を行う
1. [Animation] と [Transition] の間に [**TimeScale**] を追加（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202206261034.jpg)  
1. アニメーションの速度を変更したいタイミングにコードを記述（例）

```gdscrip
$AnimationTree["parameters/TimeScale/scale"] = 2
```
* 備考
"**parameters/TimeScale/scale**" の値は [AnimationTree]-[インスペクター]-[Parameters] の値と同じ（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202206261051.jpg)  

参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/tutorials/animation/animation_tree.html#using-animationtree)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月26日  
[[TOP]](#TOP)


<a id="220630"></a>
# <b>外部スクリプトエディタ</b>

1. Godot の設定
    1. [エディター]-[エディター設定]-[テキストエディター]-[外部] を開く
    1. 次の通り設定  
        * [外部エディターを使用] : **✔**
        * [実行パス] : C:/Users/XXXXX/AppData/Local/Programs/Microsoft VS Code/**Code.exe**  

1. Visual Studio Code の設定  
    1. VSCode を起動
    1. [アクティビティバー（Activity Bar）] から [**godot-tolls**](https://marketplace.visualstudio.com/items?itemName=geequlim.godot-tools) をインストール（基本的に他のGDScript関連はインストールしない）

1. Visual Studio Code のフォントの設定
    1. [**Ricty Diminished Discord（Regular）**](https://github.com/edihbrandon/RictyDiminished/blob/master/RictyDiminishedDiscord-Regular.ttf) をダウンロード＆インストール  
    1. [ファイル（File）]-[ユーザー設定（preferences）]-[設定（Settings）]-[設定の検索（Search settings）] で "**Editor font family**" を検索
    1. [**Editor: Font Family**]-[フォント ファミリを制御します。] に「**'Ricty Diminished Discord Regular'**」と入力し再起動  
    参考： [M PLUS 1 Code（Regular）](https://github.com/coz-m/MPLUS_FONTS/blob/master/fonts/otf/Mplus1Code-Regular.otf) （'M PLUS 1 Code Regular'）もあり  

参考：[フォント設定](#220715)  
実行環境：Windows 11、Godot 4.1.2、VSCode 1.83.1、godot-tools 1.3.1  
作成者：夢寐郎  
作成日：2021年12月30日  
更新日：2023年11月09日 godot-tools関連追記  
[[TOP]](#TOP)


<a id="220701"></a>
# <b>プリミティブ</b>

1. [シーン] の任意のノードを選択し [子ノードを追加]-[**MeshInstance3D**]
1. [インスペクタ]-[Mesh]を以下の中から選択
    * **Mesh**（新）
    * **[ArrayMesh](https://docs.godotengine.org/ja/stable/classes/class_arraymesh.html?highlight=ArrayMesh#arraymesh)**
    * **PlaceholderMesh**（新）
    * **ImmediateMesh**（新）
    * **PrimitiveMesh**（新）
    * **BoxMesh**（旧[CubeMesh](https://docs.godotengine.org/ja/stable/classes/class_cubemesh.html?highlight=CubeMesh#cubemesh) / 立方体＝壁･柱･箱･階段）
    * **[CapsuleMesh](https://docs.godotengine.org/ja/stable/classes/class_capsulemesh.html?highlight=CapsuleMesh#capsulemesh)**（カプセル＝物理挙動テスト）
    * **[CylinderMesh](https://docs.godotengine.org/ja/stable/classes/class_cylindermesh.html?highlight=CylinderMesh#cylindermesh)**（円柱）
    * **[PlaneMesh](https://docs.godotengine.org/ja/stable/classes/class_planemesh.html?highlight=PlaneMesh#planemesh)**（平面）
    * **[PrismMesh](https://docs.godotengine.org/ja/stable/classes/class_prismmesh.html?highlight=PrismMesh#prismmesh)**（プリズム＝三角柱）
    * **[QuadMesh](https://docs.godotengine.org/ja/stable/classes/class_quadmesh.html?highlight=QuadMesh#quadmesh)**（画像表示･動画再生用）
    * **[SphereMesh](https://docs.godotengine.org/ja/stable/classes/class_spheremesh.html?highlight=SphereMesh#spheremesh)**（球＝星･弾丸）
    * **TextMesh**（新/3Dテキスト）
    * **TubeTrailMesh**（新/角柱＝多角形柱）
    * **[PointMesh](https://docs.godotengine.org/ja/stable/classes/class_pointmesh.html?highlight=PointMesh)**

実行環境：Windows 10、Godot 4.0 alpha 10  
作成者：夢寐郎  
作成日：2022年02月28日  
更新日：2022年07月01日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220702"></a>
# <b>VR入門</b>

1. [**Quest Link（Oculus Link）の準備**](https://github.com/mubirou/Unity3D/tree/master/study-notes#oculus-link%E3%81%AE%E6%BA%96%E5%82%99) を行う
1. [新規プロジェクト]（レンダラー：**Forward+**）を作成
1. [プロジェクト]-[プロジェクト設定]-[**XR**] の設定＆再起動  
    * [**OpenXR**]-[有効]：**✓オン**
    * [**シェーダー**]-[有効]：**✓オン**
1. [保存して再起動] する
1. [3Dシーン] を選択してシーンに以下のようにノードを追加  
    Main（**Node3D**）  
  　  └ **XROrigin3D**  
  　　  └ **XRCamera3D**  

1. 大元の Node3D（Main）を選択し以下のスクリプトをアタッチ  

    ```gdscript
    # res://Main.gd
    extends Node3D

    var _interface: XRInterface

    func _ready():
      _interface = XRServer.find_interface("OpenXR")
      if _interface and _interface.is_initialized():
        get_viewport().use_xr = true
    ```

参考：C#版（Godot 4.0 beta1 で動作せず）
```csharp
// Main.cs
using Godot;

public partial class Main : Node3D {
    private OpenXRInterface _interface;
    
    public override void _Ready() {
        _interface = XRServer.FindInterface("OpenXR") as OpenXRInterface;
        if ((_interface != null) && _interface.IsInitialized()) {
            Window _viewport = GetViewport() as Window;
            _viewport.UseXr = true;
        }
        //GD.Print(_interface); //-> <OpenXRInterface#-9223372031871942494>
        //GD.Print(_interface.IsInitialized()); //-> False
        //GD.Print(GetViewport()); //-> <Window#24041750959>
        //GD.Print(GetViewport().UseXr); //-> False
    }
}
```

1. [実行] し **Quest** 上で動作確認  
（Quest で実行しても真っ暗な状態）  

デモファイル：[vr_start.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_start.zip)  
実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月02日  
更新日：2023年10月12日 Quest 4.1.2 対応  
[[TOP]](#TOP)


<a id="220703"></a>
# <b>VRコントローラーの入力イベント</b>

📝 コントローラーの視覚化（今回は右のみ）

1. [**VR入門**](#220702) の作業を行う
1. [XROriginal] を選択し [子ノードを追加]-[**XRController3D**] を選択
1. 名前を [**XRController3D_Right**] に変更
1. [**XRController3D_Right**]-[インスペクター] で次の通り設定  
    * [Tracker]：**right_hand**
    * [Pose]：**aim**
1. [**XRController3D_Right**] を選択し [子ノードを追加]-[**MeshInstance3D**]-[インスペクター] で次の通りに設定（名前は "Controller" に変更）  
    * [**Mesh**]：[新規 **SphereMesh**]-[編集]-[Material]-[新規 **StandardMaterial3D**]-[編集]-[**Albedo**]-[**Color**]-[**#ff0000**]
    * [Transform]-[**Scale**]：x 0.07、y 0.07、z 0.07  
    🖊 直径7cmの赤色の球体のコントローラー  

    Main（**Node3D**）  
    　  └ **XROrigin3D**  
    　　  ├ **XRCamera3D**  
    　　  └ **XRController3D**_Right  
    　　  　 └ Controller（右コントローラの視覚化）  

📝 入力イベントとの接続<a id="220703-1"></a>  

1. [**XRController3D_Right**] を選択し [**ノード**] タブを選ぶ
1. [ノード]-[**XRcontroller3D**]-[**button_pressed(name:String)**] を選択し [右クリック]-[**接続**]（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207040006.jpg)  
1. [**メソッドにシグナルを接続**] ダイアログが表示されたら [**接続**] ボタンを選択（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207032357.jpg)  
💡 上記の作業の意味  
[**XRController3D**_Right] の [**button_pressed(name:String)**] イベントが [**Main**] ノードにアタッチされたスクリプト内に生成される "**_on_xr_controller_3d_right_button_pressed**" という名前（変更可能）のメソッド（イベントハンドラー）で受信される  
1. [ノード] タブに **→] ../..:: _on_xr_controller_3d_right_button_pressed()** が追加され（下図上）、[シーン] の [**XRController3D**_Right] にも [接続アイコン] が追加される（下図下）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207040024.jpg)  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207040028.jpg)  
1. 同様に [ノード]-[**XRcontroller3D**]-[**button_released(name:String)**] を選択し [右クリック]-[**接続**] する  

📝 コードの確認＆変更  

1. 大元の Main（Node3D）にアタッチされたコードを確認＆変更  

    ```gdscript
    # res://Main.gd
    extends Node3D

    var _interface: XRInterface

    func _ready():
      _interface = XRServer.find_interface("OpenXR")
      if _interface and _interface.is_initialized():
        get_viewport().use_xr = true

    func _on_xr_controller_3d_right_button_pressed(name):
      print("Pressed: " + name)

    func _on_xr_controller_3d_right_button_released(name):
      print("Released: " + name)
    ```

1. 実行すると VR コントローラーの入力に応じて以下の値（String型）が出力される  

  |戻り値|内容|
  |:--|:--|
  |**ax_button**|AXを押した･離した|
  |**ax_touch**|AXにタッチ|
  |**by_button**|BYを押した･離した|
  |**by_touch**|BYにタッチ|
  |**grip_click**|中指トリガーを押した･離した|
  |**menu_button**|MENUボタンを押した･離した|
  |**primary_click**|アナログスティックを押した･離した|
  |**primary_touch**|アナログスティックにタッチ|
  |**trigger_touch**|人差し指トリガーにタッチ|
  |**trigger_click**|人差し指トリガーを押した･離した（[トリガー量](#220717) 0.5 以上）|

デモファイル：[vr_controller_events.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_controller_events.zip)  
実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月04日  
更新日：2023年10月12日 Godot 4.1.2、Quest 3 で動作確認  
[[TOP]](#TOP)


<a id="220704"></a>
# <b>レーザーポインター（RayCast）</b>

📝 **RayCast** の追加＆視覚化

1. [**VRコントローラーの入力イベント**](#220703) の作業を行う（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207041558.jpg)  
1. [**XRController3D_Right**] を選択し [子ノードを追加]-[**RayCast3D**]-[インスペクター] で次の通りに設定  
    * [**Target Position**]：x 0、y 0、**z -1000**
    * [**Transform**]-[**Scale**]：**x 0.5**、**y 0.5**、**z 0.5**  
1. [**XRController3D_Right**] を選択し [子ノードを追加]-[**MeshInstance3D**]-[インスペクター] で次の通りに設定（名前は "RayLine" に変更）  
    * [**Mesh**]：[新規 **BoxMesh**]-[編集]-[**Material**]-[新規 **StandardMaterial3D**]-[編集] で次の通りに設定  
        * [Transparency]-[**Transparency**]：**Alpha**
        * [**Albedo**]-[**Color**]：**#ff000080**（不透明度50％）
    * [Transform]-[**Position**]：x 0、y 0、**z -500**
    * [Transform]-[**Scale**]：x 0.01、y 0.01、**z 1000**  
    🖊 不透明度50％の赤いレーザー光線  

    Main（**Node3D**）  
    　  └ **XROrigin3D**  
    　　  ├ **XRCamera3D**  
    　　  └ **XRController3D**_Right  
    　　  　 ├ Controller（右コントローラの視覚化）  
    　　  　 ├ **RayCast3D**  
    　　  　 └ RayLine（RayCast3Dの視覚化）  

📝 選択するオブジェクトの用意  

  1. [立方体](#220701)などを用意
  1. 立方体を選択し [子ノードを追加]-[**StaticBody3D**]
  1. StaticBody3D を選択し [子ノードを追加]-[**CollisionShape3D**]
  1. CollisionShape3D を選択し [インスペクター]-[**Shape**]-[新規 **BoxShape3D**] を選ぶ
  1. [Main] に [**DirectionalLight3D**] を追加（設定は次の通り）  
      * [**Shadow**]-[Enabled]：**✓オン**
      * [**Transform**] を次の通りに設定  
        * [**Position**]：x 0、**y 5**、z 0
        * [**Rotation**]：**x -55**、y 0、z 0  
  
  　  ├ MeshInstance3D（選択するオブジェクト）  
  　  │     └ **StaticBody3D**  
  　  │　　   └ **CollisionShape3D**（反応する領域）  
  　  └ **DirecionalLight3D**  

📝 ヒットポイントの視覚化

  1. [**XRController3D_Right**] を選択し [子ノードを追加]-[**MeshInstance3D**]-[インスペクター] で次の通りに設定（名前は "HitPoint" に変更）  
      * [**Mesh**]：[新規 **SphereMesh**]-[編集]-[**Material**]-[新規 **StandardMaterial3D**]-[編集] で次の通りに設定  
        * [**Transparency**]-[**Transparency**]：**Alpha**
        * [**Albedo**]：[**Color**]-[**#ff0000cc**]
      * [**Transform**] を次の通りに設定
        * [**Position**]：x 0、y 0、**z -0.5**  
        * [**Scale**]：x 0.04、y 0.04、z 0.04  
      🖊 直径2cmの赤色（不透明度80％）の球体  

      ***
      Main（[**Node3D**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=Node3D#node3d)）  
    　  ├ [**XROrigin3D**](https://docs.godotengine.org/en/latest/classes/class_xrorigin3d.html?highlight=XROrigin3D#xrorigin3d)  
    　  │   ├ [**XRCamera3D**](https://docs.godotengine.org/en/latest/classes/class_xrcamera3d.html?highlight=XRCamera3D#xrcamera3d)  
    　  │   └ [**XRController3D**](https://docs.godotengine.org/en/latest/classes/class_xrcontroller3d.html?highlight=XRController3D#xrcontroller3d)_Right  
    　  │　　　 ├ Controller（コントローラの視覚化）  
    　  │　　　 ├ [**RayCast3D**](https://docs.godotengine.org/en/latest/classes/class_raycast3d.html?highlight=RayCast3D#raycast3d)  
    　  │　　　 ├ RayLine（RayCast3Dの視覚化）  
    　  │　　　 └ HitPoint（ヒットポイントの可視化）  
    　  ├ MeshInstance3D（選択するオブジェクト）  
    　  │   └ [**StaticBody3D**](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d)  
    　  │　　　 └ [**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d)（反応する領域）  
    　  └ **DirecionalLight3D**  
        ***

📝 コードの記述 <a id="code220704">  
大元の Main（Node3D）にアタッチされたコードを確認＆変更  

  ```gdscript
  # res://main.gd
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
      get_viewport().use_xr = true
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
        print(_selectCollider.get_parent().name)

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
  ```

デモファイル：[RayCast.zip](https://github.com/mubirou/Godot/blob/main/zip/RayCast.zip)  
参考：[RayCastからの除外](#220707)  
参考：[ボタン](#220716)  
実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月04日  
更新日：2023年10月12日 Godot 4.1.2、Quest 3 で動作確認  
[[TOP]](#TOP)


<a id="220705"></a>
# <b>床タイル（タイリング）</b>

📝 **床にタイルを貼る場合**  
（10x10m に 1x1m のタイルを敷き詰める）  

1. タイル（400x400px）のタイル（1m四方）用の画像を作成（例：[tile.png](https://github.com/mubirou/Godot/blob/main/png/tile.png)）
1. 大元の **Node3D** に [**MeshInstance3D**] を追加
1. 名前を "MeshInstance3D" → "Floor" に変更
1. [インスペクター]-[Mesh]-[新規 **PlaneMesh**]-[編集] で以下の通り設定  
    * [**Size**]：**x 1**、**y 1**
1. [インスペクター]-[Tranform]-[**Scale**] を次の通り設定  
    * **x**：**10**、y 1、**z**：**10**（**10m**四方の床の場合）
1. [インスペクター]-[**Surface Material Override**]-[新規 **StandardMaterial3D**]-[編集] で以下の通り設定  
    * [**Albedo**] で次の通り設定  
      * [**Color**]：#ffffff（任意）
      * [**Texture**]：[tile.png](https://github.com/mubirou/Godot/blob/main/png/tile.png)
    * [**UV1**]-[**Scale**]：**x 10**、**y 10**、z 1
1. 大元の **Node3D** に [**DirectionalLight3D**] を追加（設定は次の通り）  
    * [**Light**]-[**Energy**]：**0.75**（任意）
    * [**Shadow**]-[Enabled]：**✓オン**（オプション）
    * [**Transform**] を次の通りに設定  
      * [**Position**]：x 0、**y 5**、z 0
      * [**Rotation**]：**x -55**、y 0、z 0  

📝 **天井にタイルを貼る場合**  
💡「PaneMesh」は裏は透明になる「CubeMesh」は裏は暗くなる、という問題を回避する必要があります
1. 上記で作成した "Floor" をコピー＆ペースト  
1. 名前を "Floor" → "Ceiling（天井）" に変更
1. [Ceiling]-[インスペクター]-[**Transform**] を以下の通り変更  
    * [**Position**]：x 0、**y 2.35**、z 0
    * [**Rotation**]：**x 180**、y 0、z 0
1. 引続き [インスペクター]-[**Surface Material Override**]-[**ユニーク化**]  
1. 引続き [インスペクター]-[**Surface Material Override**]-[編集]  
    * [**Shading**]-[**Shading Mode**]：**Unshaded**
    * [**Albedo**]-[**Color**]：**#ffffff**（調整）

実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年05月28日  
更新日：2022年07月09日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220706"></a>
# <b>テレポート移動</b>

📝 [**VRコントローラーの入力イベント**](https://github.com/mubirou/Godot#vr%E3%82%B3%E3%83%B3%E3%83%88%E3%83%AD%E3%83%BC%E3%83%A9%E3%83%BC%E3%81%AE%E5%85%A5%E5%8A%9B%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88) と同様に左コントローラーを設定  

[**XRController3D_Left**]-[インスペクター]-[**Transform**]-[**Position**] で **y 1** に設定  

（これまでの作業の階層）  
  Main（**Node3D**）  
  　  └ **XROrigin3D**  
  　　  ├ **XRCamera3D**  
  　　  └ **XRController3D**_Left  
  　　  　 └ Controller（左コントローラの視覚化）  

📝 **テレポート線の作成**  

1. [**XRController3D_Left**] を選択し [子ノードを追加]-[**CharacterBody3D**] を選択
1. 名前を "CharacterBody3D" → "**Function_Teleport**" に変更
1. [**Function_Teleport**] を選択し [子ノードを追加]-[**MeshInstance3D**] を選択
1. 名前を "MeshInstance3D" → "**Teleport**" に変更
1. [**Teleport**]-[インスペクター] で各種設定  
    * [**Mesh**]-[新規 **PlaneMesh**]-[編集]  
      * [**Size**]：**x 0.05**、**y 1**
      * [**Subdivide Depth**]：**40**
    * [**Surface Material Override**]-[新規 **ShaderMaterial**]-[編集]
        * [Shader]-[**New Shader**]  
          * 型：Shader
          * Mode：Spatial
          * テンプレート：Empty
          * Built-in Shader：オフ
          * パス：res//**teleport**.gdshader  
        （以下の通り記述）  
        ```c
        shader_type spatial;
        render_mode unshaded, cull_disabled, skip_vertex_transform;

        uniform float scale_t = 0.2;
        uniform float length = 20.0;
        uniform float ws = 1.0;
        uniform vec4 mix_color : source_color;
        uniform sampler2D arrow_texture : hint_default_white;

        void vertex() {
          vec3 down = vec3(0.0, -1.0 / ws, 0.0);
          
          // offset our Z so we're projecting from our origin point
          VERTEX.z -= 0.5;
          VERTEX.z *= length;
          
          // now use that to create our arch
          float t = VERTEX.z * scale_t;
          float t2 = t * t;

          // translate to our world vector
          VERTEX = (MODEL_MATRIX * vec4(VERTEX, 1.0)).xyz; 
          
          // and now create our arch
          VERTEX += down * t2;
          
          // and apply our view matrix
          VERTEX = (VIEW_MATRIX * vec4(VERTEX, 1.0)).xyz;
        }

        void fragment() {
          // and do our color
          float offset =  (TIME * 2.0); // 矢印の速度
          vec4 col = texture(arrow_texture, vec2(UV.x, (UV.y * length * 4.0) + offset )).rgba;
          ALBEDO = col.rgb * mix_color.rgb;
          
          // need to fix up our image and add an alpha channel
          ALPHA = col.a;
        }
        ```
        ～コントローラーから黒い曲線が表示される～ 
      *  [**Shader Param**]  
          * **Arrow Texture**：[**teleport_arrow.png**](https://github.com/BastiaanOlij/godot4_openxr_demo/blob/master/addons/godot-xr-tools/images/teleport_arrow.png)  
          * **Length**：**30**  
          * **Mix Color**：**#0000ff**（アルファ値は無効）  
          * **Scale T**：**0.2**  
          * **Ws**：**1**  
          ～テレポート用の青い矢印が動きだす～  
          （"Function_Teleport" には ⚠ がついたまま）  

<a id="220706_yuka"></a>
📝 [**床の作成**](#220705)  

1. 上記の床（**MeshInstance3D** / **PlaneMesh**）に [**StaticBody3D**](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d) を加える 
1. 更に [**StaticBody3D**] に [**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d) を加える（設定は以下の通り）  
    * [**Shape**]：**BoxShape3D**（Size：x 1、**y 0.1**、z 1）
    * [**Transform**] の設定
      * [**Position**]：x 0、**y -0.05**、z 0
      * [**Scale**]：x 1、y 1、z 1  

（これまでの作業の階層）  
Main（Node3D）  
　 ├ XROrigin3D  
　 │ ├ XRCamera3D  
　 │ └ XRController3D_Left  
　 │　　├ Controller  
　 │　　└ Function_Teleport  
　 │　　　　└ Teleport  
　 ├ Floor  
　 │ └ **StaticBody3D**  
　 │　　└ **CollisionShape3D**  
　 └ DirecionalLight3D  

📝 **ターゲットの作成**  

1. [**Function_Teleport**] を選択し [子ノードを追加]-[**MeshInstance3D**] を選択
1. 名前を "MeshInstance3D" → "**Target**" に変更
1. [**Target**]-[インスペクター] で各種設定  
    * [**Mesh**]-[新規 **PlaneMesh**]-[編集]  
      * [**Size**]：**x 1**、**y 1**  
    * [**Surface Material Override**]-[新規 **StandardMaterial3D**]-[編集]  
      * [**Transparencey**]-[Transparency]：**Alpha**
      * [**Albedo**] で各種設定  
        * [**Color**]：**#0000ff**（アルファ値は無効）  
        * [**Texture**]：[**teleport_target_foot.png**](https://github.com/mubirou/Godot/blob/main/png/teleport_target_foot.png)
    * [**Transform**] で各種設定  
      * [**Position**]：x 0、**y：-1**、**z：-5**
      * [**Scale**]：**x 0.5**、**y 0.5**、**z 0.5**
1. [**Function_Teleport**] を選択し [子ノードを追加]-[**CollisionShape3D**] を選択
1. [**CollisionShape3D**]-[インスペクター] で各種設定  
    * [**Shape**]-[新規 **CapseleShape3D**]-[編集]  
      * [**Radius**]：**0.05**
      * [**Height**]：**0.1**

（これまでの作業の階層）  
Main（**Node3D**）  
　 ├ **XROrigin3D**  
　 │ ├ **XRCamera3D**  
　 │ └ **XRController3D**_Left  
　 │　　├ Controller（左コントローラの視覚化）  
　 │　　└ **Function_Teleport**（**CharacterBody3D**）  
　 │　　　　├ **Teleport**（**PlaneMesh**）  
　 │　　　　├ **Target**（**PlaneMesh**）  
　 │　　　　└ **CollisionShape3D**（**CapsuleShape3D**）  
　 ├ Floor（**PlaneMesh**）  
　 │ └ **StaticBody3D**  
　 │　　└ **CollisionShape3D**  
　 └ DirecionalLight3D  

📝 **スクリプトのアタッチ**  

1. [**Function_Teleport**] を選択しスクリプトをアタッチ（名前は **Function_Teleport.gd**）
1. **Function_Teleport.gd** の内容を Godot 4 用の [**Function_Teleport.gd**](https://github.com/BastiaanOlij/godot4_openxr_demo/blob/master/addons/godot-xr-tools/functions/Function_Teleport.gd) に書き換える（最新版 [Godot XR Tools](https://godotengine.org/asset-library/asset/214) は要検証）  
1. [実行] 時にエラーが出る箇所をコメントアウトする  

```gdscript
 96行目 #$Target/Player_figure.scale = Vector3(ws, ws, ws)
```

1. [トリガー] でテレポートを表示再生時にエラーが出る箇所をコメントアウトする  

```gdscript
247行目 #$Teleport.get_surface_override_material(0).set_shader_param("scale_t", 1.0 / strength)
248行目 #$Teleport.get_surface_override_material(0).set_shader_param("ws", ws)
249行目 #$Teleport.get_surface_override_material(0).set_shader_param("length", cast_length)

276行目 #$Teleport.get_surface_override_material(0).set_shader_param("mix_color", color)
282行目 #$Teleport.get_surface_override_material(0).set_shader_param("mix_color", no_collision_color)
```

📝 **カスタマイズ**（4.0 alpha 14 未検証）  

* **テレポートの色の変更**
    * [シーン] の [**Function_Teleport**]-[インスペクター] で設定
      * [**Can Teleport Color**]：#0000ff  
      * [**Cant Teleport Color**]：#0000ff
      * [**No Collision Color**]：#0000ff
* **テレポートの矢印の速度を一定にする**  
  **Function_Teleport.gd** を以下の通りコメントアウト  
```gdscript
249行目 #$Teleport.get_surface_override_material(0).set_shader_param("length", cast_length)
```
* **テレポート不可の場合は半透明にする**  
  1. [アルファ値 80 の矢印](https://github.com/mubirou/Godot/blob/main/png/teleport_arrow_80.png) を用意
  1. [アルファ値 10 の矢印](https://github.com/mubirou/Godot/blob/main/png/teleport_arrow_10.png) を用意
  1. [シーン] の [**Function_Teleport**]-[**Teleport**]-[インスペクター]-[**Surface Material Override**]-[編集]-[**Arrow Texture**]-[編集]-[**Load Path**]-[📁] を開く
  1. **res://.godot/imported/teleport_arrow_80.png-〇〇.ctex** と **res://.godot/imported/teleport_arrow_10.png-〇〇.ctex** をコピー（以下のコードで利用）
  1. **Function_Teleport.gd** を以下の通り追加  
```gdscript
276行目付近 var _path = "res://.godot/imported/teleport_arrow_80.png-〇〇.ctex"
277行目付近 $Teleport.get_surface_override_material(0).get_shader_param("arrow_texture").load_path = _path
...
284行目付近 var _path = "res://.godot/imported/teleport_arrow_10.png-〇〇.ctex"
285行目付近 $Teleport.get_surface_override_material(0).get_shader_param("arrow_texture").load_path = _path
```

* **ターゲット周辺をカプセルで囲む**  
  [シーン] の [**Function_Teleport**]-[**Target**] を選択し [子ノードを追加]-[**MeshInstace3D**]-[インスペクター] で次の通り設定  
    * [**Mesh**]-[新規 **SphereMesh**]
    * [**Surface Material Override**]-[新規 **StandardMaterial3D**]-[編集] で次の通り設定  
      * [**Transparency**]-[Transparency]：**Alpha**
      * [**Albedo**]-[**Color**]：**#0000ff80**（50％の青）  

* **特定の床のみにテレポートできるようにする**  

    **Function_Teleport.gd** 229行目付近  
    （変更前）  
    ```gdscript
    if dot > max_slope_cos:
      is_on_floor = true
    else:
    ```
    （変更後）  
    ```gdscript
    if dot > max_slope_cos:
      if intersects.collider == $/root/Main/Floor/StaticBody3D: 
        is_on_floor = true
      else:
        is_on_floor = false
    else:
    ```

デモファイル：[teleport.zip](https://github.com/mubirou/Godot/blob/main/zip/teleport.zip)  
参考：[Godot 4 OpenXR demo project](https://github.com/BastiaanOlij/godot4_openxr_demo)  
実行環境：Windows 10、Godot 4.0 beta 1、[Godot XR Tools](https://github.com/BastiaanOlij/godot4_openxr_demo/blob/master/addons/godot-xr-tools/functions/Function_Teleport.gd)、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月09日  
更新日：2022年09月12日 デモファイルの Godot 4.0 beta 1 対応  
[[TOP]](#TOP)


<a id="220707"></a>
# <b>RayCastからの除外</b>

[**RayCast3D.add_exception()**](https://docs.godotengine.org/en/latest/classes/class_raycast3d.html?highlight=RayCast#class-raycast3d-method-add-exception) を使っ
て [**RayCast3D**](https://docs.godotengine.org/en/latest/classes/class_raycast3d.html?highlight=RayCast3D#raycast3d) が衝突を報告しないように衝突例外を追加します  

1. [**レーザーポインター（RayCast）**](#220704) の作業を行う  
2. [**床の作成**](#220705) を行う（[参照](#220706_yuka)）  

（これまでの作業の階層）  
Main（Node3D）  
　 ├ XROrigin3D  
　 │ ├ XRCamera3D  
　 │ └ XRController3D_Right  
　 │　　　 ├ Controller（コントローラの視覚化）  
　 │　　　 ├ **RayCast3D**  
　 │　　　 ├ RayLine（RayCast3Dの視覚化）  
　 │　　　 └ HitPoint（ヒットポイントの可視化）  
　 ├ MeshInstance3D（選択するオブジェクト）  
　 │ └ StaticBody3D  
　 │　　　 └ CollisionShape3D（反応する領域）  
　 ├ **Floor**（反応させたくないオブジェクト）  
　 │ └ **StaticBody3D**  
　 │　　└ CollisionShape3D  
　 └ DirecionalLight3D  

3. [**コード**](#code220704)の変更（追加）  

```gdscript
...
func _ready():
  ...
  _rayCast_R = _controller_R.get_node("RayCast3D")
  ...
  # RayCast からの除外
  var _physicsBody  = $Floor/StaticBody3D  # 追加
  _rayCast_R.add_exception(_physicsBody)  # 追加
```

デモファイル：[RayCast.zip](https://github.com/mubirou/Godot/blob/main/zip/RayCast.zip)  
実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月09日  
更新日：2023年10月13日 Godot 4.1.2、Quest 3 で動作確認  
[[TOP]](#TOP)


<a id="220708"></a>
# <b>デジタル時計</b>

📝 デジタル時計用のフォント（[Digital Dismay](https://www.1001fonts.com/digital+clock-fonts.html) 等）を用意しプロジェクトフォルダ内に置く  

1. 大元の Node3D（Main）を選択し [子ノードを追加]-[[**Label3D**](https://docs.godotengine.org/en/latest/classes/class_label3d.html?highlight=Label3D#label3d)] を選択
1. 名前を "Label3D" → "Clock" に変更
1. [Clock] を選択し [インスペクター] を次の通り設定
    * [**Text**]  
      * [**Modulate**]：#ffffff（フォント色）
      * [**Outline Modulate**]：#000000（アウトライン色）
      * [**Text**]：**88:88:88**
      * [**Font**]：[**Digital Dismay.otf**]((https://www.1001fonts.com/digital+clock-fonts.html))（上記のフォント）
      * [**Font Size**]：400（**表示する4倍**）  
      ※[モアレ](https://ja.wikipedia.org/wiki/%E3%83%A2%E3%82%A2%E3%83%AC)が生じる場合は「2倍」にする  
    * [**Transform**]
      * [**Scale**]：**x 0.25**、**y 0.25**、z 1（**1/4倍**）  

    （階層例は以下の通り）  
    Main（Node3D）  
    　 ├ XROrigin3D  
    　 │ └ XRCamera3D  
    　 └ Node3D（位置はここで設定）  
　　      └ Clock（**Label3D**）  


* Clock（**Label3D**）を選択し新規でスクリプト（**Clock.gd**）をアタッチし以下の通り記述  

```gdscript
# res://Clock.gd
extends Label3D

func _ready():
  await loop()

func loop():
  await get_tree().create_timer(1.0).timeout

  var _now = Time.get_datetime_dict_from_system()
  var _h = _now.hour
  var _m = _now.minute
  var _s = _now.second
  if _h < 10: _h = "0" + str(_h)
  if _m < 10: _m = "0" + str(_m)
  if _s < 10: _s = "0" + str(_s)
  var _result = str(_h) + ":" + str(_m) + ":" + str(_s)
  text = _result

  await loop()
```

デモファイル：[DigitalClock.zip](https://github.com/mubirou/Godot/blob/main/zip/DigitalClock.zip)  
実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月04日  
更新日：2023年10月13日 Godot 4.1.2、Quest 3 対応  
[[TOP]](#TOP)


<a id="220709"></a>
# <b>パーティクル</b>
（例）煙の生成方法  

📝 任意の Node3D を選択し [子ノードを追加]-[[**GPUParticles3D**](https://docs.godotengine.org/en/latest/classes/class_gpuparticles3d.html?highlight=GPUParticles3D#gpuparticles3d)]-[インスペクター] で以下の通り各種設定（手順➊）  

#### Emitting（プログラミングで処理）
  * [**Emitting**]：✓オン（パーティクルのオン/オフ）
#### Amount（最終調整）
  * [**Amount**]：**10**（パーティクルの数）  
#### Time（最終調整）
  * [**Lifetime**]：1（寿命：0.01～600s）
  * [**Speed Scale**]：1（スピード：0～64）
  * [**Fixd FPS**]：30（フレームレート：0～1000fps）
#### Process Material（手順➎）
  * [**Process Material**]-[新規 [**ParticlesMaterial**](https://docs.godotengine.org/en/latest/classes/class_particlesmaterial.html?highlight=ParticlesMaterial#particlesmaterial)]-[編集]  
    * [**Gravity**]：x 0、**y 0**、z 0（重力）
    * [**Angle**]：
      * [Angle Min]：0
      * [**Angle Max**]：**360**
    * [**Scale**]：任意（下図参照）  
    ![image](https://github.com/mubirou/Godot/blob/main/jpg/202207140942.jpg)  
    * [**Color**]：両端のアルファ値は **0**（下図参照）
    ![image](https://github.com/mubirou/Godot/blob/main/jpg/202207140804.jpg)  
#### Draw Passes（手順➌）
  * [**Draw Passes**]-[**Pass1**]-[新規 [**QuadMesh**](https://docs.godotengine.org/en/latest/classes/class_quadmesh.html?highlight=QuadMesh#quadmesh)]
#### Geometry（手順➍）
  * [**Geometry**]-[**Material Override**]-[新規 [**StandardMaterial3D**](https://docs.godotengine.org/en/latest/classes/class_standardmaterial3d.html?highlight=StandardMaterial3D#standardmaterial3d)]-[編集]    
      * [**Transparency**]：
        * [**Transparency**]：**Alpha**
        * [**Blend Mode**]：**Add**（爆発系は **Mix**）
      * [**Shading**]-[**Shading Mode**]：**Unshaded**
      * [**Vertex Color**]-[**Use As Albedo**]：**✓オン**
      * [**Albedo**]：
        * [**Color**]：#ffffff（ベースカラーと不透明度）
        * [**Texture**]：[**smoke.png**](https://github.com/mubirou/Godot/blob/main/png/smoke.png)    
      ![image](https://github.com/mubirou/Godot/blob/main/png/smoke.png)  
      📝 [**KENNY "Particl Pack"**](https://www.kenney.nl/assets?s=Particle+Pack+Free) も利用可  
      * [**Billboard**]-[**Mode**]：**Particle Billboard**（向き）
#### Transform（手順➋）
  * [**Transform**]-[**Position**]：x 0、**y 1**、**z -2**（任意）

デモファイル：[Particles.zip](https://github.com/mubirou/Godot/blob/main/zip/Particles.zip)  
参考：[YouTube](https://www.youtube.com/watch?v=DkJ2jYl-ESw)   
参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_particles.html?highlight=Particles)  
実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月27日  
更新日：2022年07月14日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220710"></a>
# <b>360°パノラマ</b>

（警告） [Godot 3.X 版](#220606) の時のように [WorldEnvironment](https://docs.godotengine.org/en/latest/classes/class_worldenvironment.html?highlight=WorldEnvironment%20#worldenvironment) を利用するとパノラマ画像が歪みます（要調査）  

### 👉 空（360°パノラマ画像）の用意  
**Poly Haven**（[**polyhaven.com/hdris**](https://polyhaven.com/hdris)）の [**Skies**] から任意で画像（[**.exr**](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)）を選び [**Download**]  
* 他にも [Pixexid](https://pixexid.com/search/360)（JPEG 形式）もあり

### 👉 Godot での作業
1. [VR入門](#220702) のデモファイル（[vr_start.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_start.zip)）をダウンロード

1. 大元の Node3D を選択し [子ノードを追加]-[[**MeshInstance3D**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d)] を選択  

1. 名前を "MeshInstance3D" → "Panorama" に変更<a id="220710-panorama"></a>  

1. [Panorama]-[インスペクター]  
    * [**Mesh**]-[新規 **SphereMesh**]-[編集]  
      * [**Radius**]：**1**m
      * [**Height**]：**2**m
      * [**Material**]-[新規 **StandardMaterial3D**]-[編集]  
        * [**Transparency**]
          * [**Transparency**]：Disabled（Alphaも可）
          * [[**Cull Mode**](https://docs.godotengine.org/en/latest/classes/class_basematerial3d.html?highlight=Cull%20Mode%20BaseMaterial3D#enum-basematerial3d-cullmode)]：**Front**（外にも描画される）
        * [**Shading**]
          * [**Shading Mode**]：**Unshaded**（元画像の明るさで表示）
        * [**Albedo**]
          * [**Color**]：#ffffff（アルファ値の設定可能）
          * [**Texture**]：〇〇[**.exr**](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)（360°パノラマ画像）  
          ※JPEGでも可
    * [**Transform**]
      * [**Rotation**]：x 0、**y 0**（**初期値の水平角**）、z 0  
      * [**Scale**]：**x 500**、**y 500**、**z 500**

1. 大元の Node3D を選択し [子ノードを追加]-[**DirectionalLight3D**]-[インスペクター]  
    * [**Shadow**]-[Enabled]：**✓オン**
    * [**Transform**]
      * [**Position**]：x 0、**y 500**（0でも同じ）、z 0
      * [**Rotation**]：**x -55**（高さ）、**y 35**（向き）、z 0

（上記の階層）  
Main（Node3D）  
　 ├ XROrigin3D  
　 │ └ XRCamera3D  
　 ├ **Panorama**（MeshInstance3D-**SphereMesh**）  
　 ├ MeshInstance3D（展望台など＝オプション）  
　 └ DirectionalLight3D  

### 👉 空のみの利用（参考）
上記の作業に加え地面を設置し微調整する

1. **地面の設置**  
大元の Node3D を選択し [子ノードを追加]-[**MeshInstance3D**]-[インスペクター] で各種設定
    * [Mesh]-[新規 **PlaneMesh**]  
    * [**Surface Material Override**]-[新規 **StandardMaterial3D**]-[編集]
      * [**Albedo**]
        * [**Color**]：#ada37d（任意）
        * [**Texture**]：[パターン画像](#220710-1)（オプション）
    * [**Transform**]
      * [**Scale**]：**x 1000**、y 1、**z 1000**

1. **パノラマ画像の調整**  
    （地平線にある空以外の余計なモノを隠す）  
    1. [[Panorama](#220710-panorama)]-[インスペクター]-[Mesh]-[編集]-[**Material**]-[編集] を開く
    1. [**UV1**]-[**Offset**]：x 0、**y -0.017（微調整）**、z 0  

1. **被写界深度の設定**  
    （地平線をほんの少しぼかす）  
    1. [XROrigin3D]-[[**XRCamera3D**](https://docs.godotengine.org/en/latest/classes/class_xrcamera3d.html?highlight=XRCamera3D#xrcamera3d)]-[インスペクター]-[Attributes]-[新規 CameraAttributesPractical]-[編集] を開く
    1. [**DOF Blur**] を各種設定
        * [**Far Enabled**]：**✓オン**
        * [**Amount**]：**0.01**（初期値 0.2）
    * [プレビュー] or [シネマティックプレビュー] で PC 上でも確認可能💡

**（参考）動く雲**  

  * 上記の **Panorama** を2層（ユニーク化）にする
  * 内側（動くパノラマ）を各種調整  
    * [BaseMaterial3D]
      * [Transparency]-[**Transparency**]：**Alpha**
      * [Albedo]-[**Color**]：アルファ値を調整
  * 内側（動くパノラマ）をスクリプトで動かす  
    ```gdscript
    func _process(_delta):
      var _x = get_node("Panorama").get_mesh().material.uv1_offset.x
      get_node("Panorama").get_mesh().material.uv1_offset.x = _x + 0.000005
    ```
    ↑「[StandardMaterial3D.uv1_offset.x](https://docs.godotengine.org/en/latest/classes/class_basematerial3d.html?highlight=uv1_offset#class-basematerial3d-property-uv1-offset)」を変更  

<a id="220710-1"></a>
### 📝 パターン画像の作成方法（参考）
  1. **Poly Haven**（[**polyhaven.com/textures**](https://polyhaven.com/textures)）から画像を選び「**Windows + Shift + S**」キーで任意の範囲をスクショ → [**GIMP**](https://www.gimp.org/) 等で **.png** 保存
  1. [**画像ルーパーWeb版**](https://nodachisoft.com/common/jp/webapp/createpatternimage/) を使ってパターン画像（**.png**）を作成

デモファイル：[Panorama.zip](https://github.com/mubirou/Godot/blob/main/zip/Panorama.zip)  
デモファイル：[blue_sky.zip](https://github.com/mubirou/Godot/blob/main/zip/blue_sky.zip)（空のみ）  
実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月09日  
更新日：2023年10月16日 Godot 4.1.2、Quest 3 で主要動作確認  
[[TOP]](#TOP)


<a id="220711"></a>
# <b>鏡面仕上げボール</b>
ステンレス球･シャボン玉風なオブジェクトの作成  

👉 [**360°パノラマ**](#220710)の設定（この画像は映りこまない）  

👉 [**WorldEnvironment**](https://docs.godotengine.org/en/latest/classes/class_worldenvironment.html?highlight=WorldEnvironment%20#worldenvironment) の設定（この画像が映りこむ）  
* 大元の Node3D を選択し [子ノードを追加]-[**WorldEnvironment**]-[インスペクター]-[**Environment**]-[新規 **Environment**]-[編集]
    * [**Background**]-[**Mode**]：**Sky**
    * [**Sky**]
      * [**Sky**]-[新規 **Sky**]-[編集]  
        * [**Sky Material**]-[新規 [**PanoramaSkyMaterial**](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)]-[編集]-[**Panorama**]：〇〇.jpg 等（[**360°パノラマ画像**](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)） 
      * [**Potation**]：x 0、y（**回転角調整**）、z 0

👉 **ボールの設置**（ステンレス球･シャボン玉風）  
* 大元の Node3D を選択し [子ノードを追加]-[**MeshInstance3D**]-[インスペクター]
    * [**Mesh**]-[新規 **SphereMesh**]-[編集]  
      * [**Material**]-[新規 **StandardMaterial3D**]-[編集]
        * [**Transparency**]-[**Transparency**]：Disabled（alpha可能）
        * [**Albedo**]-[**Color**]：#ffffff（アルファ値可）
        * [**Metaric**]-[**Metaric**]：**1**
        * [**Roughness**]：**0～0.2** 程度（光沢感）

デモファイル：[MirrorBall.zip](https://github.com/mubirou/Godot/blob/main/zip/MirrorBall.zip)  
実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月17日  
[[TOP]](#TOP)


<a id="220712"></a>
# <b>ライト3種</b>

1. [**DirectionalLight3D**](https://docs.godotengine.org/en/latest/classes/class_directionallight3d.html#class-directionallight3d)
    * 太陽光（**平行光源**）/ 離れても減衰なし
    * [**Transform**]  
      * Position：x 0、y 100、z 0（どこでも同じ）
      * Rotation：x -63（**太陽高度**）、y -8（**太陽方位**）、z 0（参考：[keisan.casio.jp](https://keisan.casio.jp/exec/system/1185781259)）  

1. [**OmniLight3D**](https://docs.godotengine.org/en/latest/classes/class_omnilight3d.html?highlight=OmniLight3D#omnilight3d)
    * 電球（**全方向性**）/ 離れると減衰
    * [**Omni**]
      * [**Range**]：範囲（初期値:5）
      * [**Attenuation**]：光エネルギー減衰曲線

1. [**SpotLight3D**](https://docs.godotengine.org/en/latest/classes/class_spotlight3d.html?highlight=SpotLight3D#spotlight3d)  
    * スポットライト（**円錐状**）/ 離れると減衰 
    * [**Spot**]
      * [**Attenuation**]：光エネルギー減衰曲線
      * [**Angle**]：角度（初期値:45）
      * [**Angle Attenuation**]：角度減衰曲線

* **共通設定**
    * [**Light**]
      * [**Color**]：#ffffff
      * [**Energy**]：0～16（初期値:1）
    * [**Shadow**]
      * [**Enabled**]：**✓オン**
      * [**Blur**]：0～10（初期値:1）

実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 41.0、Quest Link、Oculusアプリ   
作成者：夢寐郎  
作成日：2022年07月18日  
[[TOP]](#TOP)


<a id="220713"></a>
# <b>Mixamo</b>

### 👉 キャラクターの用意  
  * アーマチュア（ボーン）なし  
  * Camera、Light 不要  
  * オブジェクト類は"統合"（マテリアルを設定）  
  参考ファイル：[Kyle.blend](https://github.com/mubirou/Godot/blob/main/blend/Kyle.blend)  

### 👉 [Blender](https://www.blender.org/) の作業➀  
  1. [Blender](https://www.blender.org/) で 上記ファイル（[Kyle.blend](https://github.com/mubirou/Godot/blob/main/blend/Kyle.blend)）を開く
  1. キャラクター全体を選択 → [ファイル]-[エクスポート]-[**FBX(.fbx)**] を選択
  1. [内容]-[対象]：**✓選択したオブジェクト** を選択し [FBXをエクスポート] 

### 👉 [Mixamo](https://www.mixamo.com/#/)（ミキサモ）の作業  

> Mixamo は Adobe に買収されてから更新が滞っています
同様のサービスに [Heat](https://heat.tech/) があります（無料版もあり）
Blender のプラグインとしても動作します（[紹介動画](https://www.youtube.com/watch?v=91vpV0T71bA)）

  1. [Mixamo](https://www.mixamo.com/#/)（無料･アカウント必須）を開き [**UPLOAD CHARACTER**] を選び上記の **XXX.fbx** をドラッグ＆ドロップ  
  1. 指示に従い ➀顎 ➁手首 ➂肘 ➃膝 ➄股間 を指定（画像）  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202207191132.jpg)  
  1. [**Animations**] の一覧から適当に選択（必要に応じてパラメータで調整）し [**DOWNLOAD**] を選択（設定は初期値）  
  * [Format]：FBX Binary(.fbx)
  * [Skin]：With Skin
  * [Frames per Second]：30
  * [Keyframe Reduction]：none

### 👉 [Blender](https://www.blender.org/) の作業➁  
  1. [Blender](https://www.blender.org/) を起動（Camera、Light、Cube は削除）
  1. [ファイル]-[インポート]-[**FBX(.fbx)**] を選択し [Mixamo](https://www.mixamo.com/#/) から DOWNLOAD した **XXX.fbx** を開く
  1. [シーンコレクション]-[Collection]-[Armature]-[**▽〇〇〇**] を選択した状態で"3Dビューポート"の右端の **<** を選択  
  1. [トランスフォーム]-[**スケール**] が **100.000** になっているのを確認  
  1. [**▽〇〇〇**] を選択した状態で [オブジェクト]-[適用]-[**全トランスフォーム**] を選択  
  1. 上記の **<** で開いた [トランスフォーム]-[**スケール**] が **1.000** になったことを確認
  1. 必要に応じて [Decimate](https://3dcg-school.pro/blender-polygon-reduction/) 機能を使ってポリゴンを削除
  1. [**Armature**] 以下全体を選択（**要確認**）した状態で [ファイル]-[エクスポート]-[**glTF 2.0(.glb/.gltf)**] を選択
  1. **Godot** のプロジェクトフォルダ内にエクスポート（設定は以下の通り）  
  * [フォーマット]：**glTFバイナリ(.glb)**  
  * [内容]-[対象]：**✓選択したオブジェクト**  

### 👉 **Godot** の作業
  1. 上記の **XXX.glb** をシーンに配置
  1. シーン上の XX を選択し右クリック → [ローカルにする]
  1. [シーン]-[シーンを保存]（重要）
  1. XXX 内の MeshInstance3D を探して選択
  1. [インスペクター]-[**Geometry**]
      * [**LOD Bias**]：**20～40** 程度（[Level Of Detail](https://docs.unity3d.com/ja/2018.4/Manual/LevelOfDetail.html)）
  1. マテリアルを設定（オプション）
  1. XXX 内の **AnimationPlayer** を選択
  1. 表示されたタイムラインの [**アニメーションループ🔁**] と [**読み込み後、自動再生**] ボタンを選択
  1. Quest と接続して再生

デモファイル：[Mixamo.zip](https://github.com/mubirou/Godot/blob/main/zip/Mixamo.zip)  
参考：[Mixamoマルチポーズ](#220714)  
参考：[AccuRIG](https://actorcore.reallusion.com/auto-rig)（自動リギング他）  
実行環境：Windows 11、Godot 4.1.2、Blender 3.6.4、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月20日  
更新日：2023年11月11日 Heatに関する情報を追加  
[[TOP]](#TOP)


<a id="220714"></a>
# <b>Mixamoマルチポーズ</b>

* [**Mixamo**](#220713) の複数ポーズ版  
* 例として ➀Idle、➁Kick、➂Punch の３ポーズを作成  

### 👉 [Mixamo](https://www.mixamo.com/#/)（ミキサモ）の作業  
  [**Mixamo**](#220713) を参考に ➀Idle.fbx、➁Kick.fbx、➂Punch.fbx を作成  

### 👉 [Blender](https://www.blender.org/) の作業  
  1. ➀Idle.fbx、➁Kick.fbx、➂Punch.fbx をインポート（Camera、Light、Cube は削除）
  1. [シーンコレクション]-[Collection]-[**Armature〇**] とその下層の各所を**ポーズ名**（"Idle"、"Kick"、"Punch"）に合わせて変更（下図）  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202310171146.jpg)  
  1. [タイムライン] → [**ノンリニアアニメーション**] に変更
  1. [アクションをストリップ化] ボタンを押してトラックを作成（"Kick"、"Punch"も同様に行う）（下図）  
   ![image](https://github.com/mubirou/Godot/blob/main/jpg/202310180841.jpg)  
  1. 再生ヘッドを **0** に移動
  1. [**Idle.Anim**]トラックを選択し（上記のように "Idle.Anim" タイムラインを朱色にフォーカス） [追加]-[**ストリップを追加**]-[**Kick**] を選択、同様に [**Punch**] も追加（下図）
  1. "**NLAトラック〇**"（[Non Linear Animation](https://blender-cg.net/nla-editor/) の略）という名前を "**ポーズ名 + Track**" に変更（判りやすいように）  
   ![image](https://github.com/mubirou/Godot/blob/main/jpg/202310180854.jpg)  
  💡[ドープシート]-[アクション] 等でポーズの確認可  
  1. [シーンコレクション]-[Collection] の [**Idle**] 以外を全て削除  
   ![image](https://github.com/mubirou/Godot/blob/main/jpg/202207211106.jpg)  
  1. [**Idle**] の全てを選択しエクスポート（[**参考**](#220713)）  

### 👉 **Godot** の作業
  1. 上記の **.glb** ファイルをシーンに配置し [**編集可能な子**] 
  1. [MeshInstance3D]-[Geometry]-[**LOD Bias**] を調整（20～35程度）
  1. 以降、[**アニメーション遷移**](#220617) と同様  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202207211157.jpg)  
  参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/tutorials/animation/animation_tree.html?highlight=StateMachine#using-animationtree)  

参考：[Mixamo](#220713)  
デモファイル：[Mixamo_MultiPose.zip](https://github.com/mubirou/Godot/blob/main/zip/Mixamo_MultiPose.zip)  
高画質版デモ：[Mixamo_MultiPose_HighQuality.zip](https://github.com/mubirou/Godot/blob/main/zip/Mixamo_MultiPose_HighQuality.zip)  
実行環境：Windows 10、Godot 4.0 alpha 12、Blender 3.2.1、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月21日  
更新日：2022年07月23日 高画質版デモファイル追加  
[[TOP]](#TOP)


<a id="220715"></a>
# <b>フォント設定</b>
内部テキストエディターのフォント設定  

1. プログラミング用フォントを検討
    * [M PLUS 1 Code（Regular）](https://github.com/coz-m/MPLUS_FONTS/blob/master/fonts/otf/Mplus1Code-Regular.otf)
    * [**Ricty Diminished Discord（Regular）**](https://github.com/edihbrandon/RictyDiminished/blob/master/RictyDiminishedDiscord-Regular.ttf)  
    * 「**1lI0O**」はもちろん「**Dz**」「**全角スペース**」が見分けやすい後者を推奨
1. ダウンロード＆インストール  
1. [Godot]-[エディター]-[エディター設定]-[エディター]-[**コードのフォント**] を以下の通りに設定
    * **M PLUS 1 Code** の場合  
    C:/Users/XXX/appdata/Local/Microsoft/Windows/Fonts/Mplus1Code-Regular.otf  
    * **Ricty Diminished Discord** の場合  
    C:/Users/XXX/appdata/Local/Microsoft/Windows/Fonts/RictyDiminishedDiscord-Regular.ttf  

参考：[外部スクリプトエディタ](#220630)  
実行環境：Windows 10、Godot 4.0 alpha 12
作成者：夢寐郎  
作成日：2022年07月23日  
[[TOP]](#TOP)


<a id="220716"></a>
# <b>ボタン</b>

#### 👉 フォントの用意  
1. [Google Fonts（Oswald）](https://fonts.google.com/specimen/Oswald) 等をダウンロード  
1. プロジェクトフォルダに保存  

#### 👉 Godot の作業  
1. [**レーザーポインター**](#220704)の準備   
1. 「選択するオブジェクト」を以下の構造に変更  
  Main（[Node3D](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=Node3D#node3d)）   
  　├ Blue_Center（[**Node3D**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=Node3D#node3d)）（💡**スケール変更時の中心**）  
  　│　└ Blue（[MeshInstance3D](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d)）（ボタンの見た目）   
  　│　　└ [StaticBody3D](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d)  
  　│　　　└ [CollisionShape3D](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d)（反応する領域）  
  　└ [Label3D](https://docs.godotengine.org/en/latest/classes/class_label3d.html?highlight=Label3D#label3d)（表示する文字）  
1. なお [**Label3D**](https://docs.godotengine.org/en/latest/classes/class_label3d.html?highlight=Label3D#label3d) は以下の通りに設定  
    * [**Text**]
      * [**Modulate**]：**#ffffff**
      * [**Outline Modulate**]：**#000000cc**
      * [**Text**]：〇〇（ボタン名）
      * [**Font**]：**Oswald-Regular.ttf**（上記参照）
      * [**Font Size**]：80（任意）
      * [**Outline Size**]：8（Font Sizeの1/10程度）
    * [**Transform**]  
      * [**Position**]：x 0、y 0、z 0.61（**ボタンの厚さ+💡0.01**）
      * [**Scale**]：**x 0.1**、**y 0.1**、**z 0.1**（💡高画質化）
1. 「サイズ変更時の中心点」である [**Blue_Center**] の [**Transform**] の値を以下の通りに変更  
    * **Position**：x -0.5、y 0.5、z -2（**表示したい位置**）  
1. 「ボタンの見た目」である [**Blue**] の [**Transform**] の値を以下の通りに変更  
    * **Position**：x 0、y 0、**z 0.03**（💡**ボタンの厚さの1/2**）
    * **Scale**：x 0.3、y 0.3、**z 0.06**（**ボタンの厚さ**）
1. 同様に全てのボタンを設定  

#### 👉 効果音の用意  
1. [無料効果音](https://taira-komori.jpn.org/game01.html) 等からダウンロード（.mp3）  
1. [Sound Forge Pro](https://www.sourcenext.com/product/vegas/sound/soundforge-pro/) で長さを調整し以下の設定でプロジェクトフォルダに保存  
    * ファイルの種類：**Wave(Microsoft)(*.wav)**
    * テンプレート：**44.100Hz, 16ビット, ステレオ, PCM(*)**
1. 大元の Node3D（Main）を選択し [子ノードを追加]-[[**AudioStreamPlayer3D**](https://docs.godotengine.org/en/latest/classes/class_audiostreamplayer3d.html?highlight=AudioStreamPlayer3D#audiostreamplayer3d)] を追加（名前は "AudioStreamPlayer3D" → "SE1" に変更
1. [SE1] を選択し [インスペクター] を次の通り設定  
    * [**Stream**]：**button04a.wav**（上記参照）

#### 👉 コードの記述    
1. [**レーザーポインター**](#220704)の[**コード**](#code220704)を開く  
1. 修正箇所のポイントは次の通り    
* **_ready** 時の処理  
  * **get_node("SE1")**（[**AudioStreamPlayer3D**](https://docs.godotengine.org/en/latest/classes/class_audiostreamplayer3d.html?highlight=AudioStreamPlayer3D#audiostreamplayer3d) ノード取得）
* [**button_pressed**](https://docs.godotengine.org/en/latest/classes/class_xrcontroller3d.html?highlight=xrcontroller#xrcontroller3d) 時の処理  
  * Node3D.**scale.z = 0.7**（ボタンを凹ませる）
* [**button_released**](https://docs.godotengine.org/en/latest/classes/class_xrcontroller3d.html?highlight=xrcontroller#xrcontroller3d) 時の処理  
  * Node3D.**scale.z = 1**（凹んだボタンを元に戻す）
  * AudioStreamPlayer3D.**play()**（効果音を鳴らす）
* [**_physics_process**](https://docs.godotengine.org/en/latest/classes/class_mainloop.html?highlight=_physics_process#class-mainloop-method-physics-process) 時の処理（RollOver時の色変更）  
  * MeshInstance3D.**get_mesh().material**
  * StandardMaterial3D.**get_albedo()**
  * StandardMaterial3D.**set_albedo(Color(〇,〇,〇,1))**
```gdscript
# main.gd
extends Node3D

var _interface : XRInterface
var _controller_R
var _rayCast_R
var _rayLine_R
var _hitPoint_R
var _selectCollider
var _se1
var _isRollOver = false

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
  _se1 = get_node("SE1")

func _on_xr_controller_3d_right_button_pressed(name):
  if name == "trigger_click":
    _selectCollider = _rayCast_R.get_collider()
    if _selectCollider != null:
      var _selectButton = _selectCollider.get_parent().get_parent()
      _selectButton.scale.z = 0.7

func _on_xr_controller_3d_right_button_released(name):
  if name == "trigger_click":
    if _selectCollider != null:
      var _selectButton = _selectCollider.get_parent().get_parent()
      _selectButton.scale.z = 1
    if _rayCast_R.get_collider() == null: return
    if _rayCast_R.get_collider() == _selectCollider: # Select!
      var _selectButton = _selectCollider.get_parent().get_parent()
      _selectButton.scale.z = 1
      _se1.play()
      print(_selectCollider.get_parent().name)

func _physics_process(delta):
  if _rayCast_R.is_colliding():
    _hitPoint_R.visible = true
    _hitPoint_R.global_transform.origin = _rayCast_R.get_collision_point()
    var _dis = (_rayCast_R.global_transform.origin - _hitPoint_R.global_transform.origin).length()
    _rayLine_R.scale.z = _dis
    _rayLine_R.position.z = -_dis / 2
    _selectCollider = _rayCast_R.get_collider()
    if !_isRollOver: # RollOver
      changeColor(true) 
      _isRollOver = true
  else:
    if _isRollOver: # RollOut
      changeColor(false) 
      _isRollOver = false
    _rayLine_R.scale.z = 1000
    _rayLine_R.position.z = -500
    _hitPoint_R.visible = false

func changeColor(_bool):
  if _selectCollider == null: return
  #var _theMaterial = _selectCollider.get_parent().get_surface_override_material(0)
  var _theMaterial = _selectCollider.get_parent().get_mesh().material
  if _bool:
    _theMaterial.set_albedo(_theMaterial.get_albedo()*4/3) # RollOver
  else:
    _theMaterial.set_albedo(_theMaterial.get_albedo()*3/4) # RollOut
```

デモファイル：[Button.zip](https://github.com/mubirou/Godot/blob/main/zip/Button.zip)  
デモファイル２：[Button_MultiPose.zip](https://github.com/mubirou/Godot/blob/main/zip/Button_MultiPose.zip)  
実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月25日  
更新日：2022年07月26日 デモファイル２を追加  
[[TOP]](#TOP)


<a id="220608"></a>
# <b>ジョイスティック角度</b>

1. [VRコントローラーの入力イベント](#220703)のデモファイル（[vr_controller_events.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_controller_events.zip)）を開く  

1. [VRコントローラーの入力イベント](#220703) と同様に…  
  [**XRController3D_Right**] を選択し [**ノード**] タブを選ぶ
1. [ノード]-[**XRcontroller3D**]-[**input_axis_changed(name: String, value: Vector2)**] を選択し [右クリック]-[**接続...**]（大元のNode3Dにアタッチされたスクリプト＝ **main.gd** に接続）  
* コードのポイントは次の通り  
```gdscript
func _〇〇_input_axis_changed(name, value):
  # 弧度法
  var _radianJoyStick = atan2(value.x, value.y)
  # 度数法
  var _degreeJoyStick = rad2deg(_radianJoyStick)
```
* 以下はデモファイルのサンプルコード  
```gdscript
# main.gd
extends Node3D

var _interface : XRInterface
var _plate
var _arrow

func _ready():
  _interface = XRServer.find_interface("OpenXR")
  if _interface and _interface.is_initialized():
    var _viewport : Viewport = get_viewport()
    _viewport.use_xr = true
  _plate = get_node("Node3D/plate")
  _arrow = get_node("Node3D/plate/Sprite3D")

func _on_xr_controller_3d_right_button_pressed(name):
  print("Pressed: " + name)

func _on_xr_controller_3d_right_button_released(name):
  print("Released: " + name)

func _on_xr_controller_3d_right_input_axis_changed(name, value):
  var _radianJoyStick = atan2(value.x, value.y)
  if _radianJoyStick != 0:
    _arrow.visible = true
    _plate.rotation.y = -_radianJoyStick
  else:
    _arrow.visible = false
```

デモファイル：[JoystickAngle.zip](https://github.com/mubirou/Godot/blob/main/zip/JoystickAngle.zip)  
参考：[GODOT DOCS](https://docs.godotengine.org/en/latest/classes/class_xrcontroller3d.html?highlight=axis_changed#signals)  
実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月11日  
更新日：2022年07月27日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220717"></a>
# <b>トリガー量</b>

1. [VRコントローラーの入力イベント](#220703)のデモファイル（[vr_controller_events.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_controller_events.zip)）を開く 

1. [VRコントローラーの入力イベント](#220703) と同様に…    
  [**XRController3D_Right**] を選択し [**ノード**] タブを選ぶ
1. [ノード]-[**XRcontroller3D**]-[**input_value_changed(name: String, value: float)**] を選択し [右クリック]-[**接続...**]（大元のNode3Dにアタッチされたスクリプト＝ **main.gd** に接続）  
1. コードを変更（**_〇_input_value_changed()** 関数内） 
```gdscript
# main.gd
extends Node3D

var _interface : XRInterface

func _ready():
  _interface = XRServer.find_interface("OpenXR")
  if _interface and _interface.is_initialized():
    var _viewport : Viewport = get_viewport()
    _viewport.use_xr = true

func _on_xr_controller_3d_right_input_value_changed(name, value):
  print(name + " : " + str(value))
```
* 取得値  
**trigger** : **0～1.0**（少数点第14位まで取得）  
**grip** : **0～1.0**（ 〃 ）  

デモファイル：[TriggerAmount.zip](https://github.com/mubirou/Godot/blob/main/zip/TriggerAmount.zip)  
参考：[GODOT DOCS（Signals）](https://docs.godotengine.org/en/latest/classes/class_xrcontroller3d.html?highlight=axis_changed#signals)  
実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
更新日：2022年07月27日  
[[TOP]](#TOP)


<a id="220613"></a>
# <b>Picture-in-Picture</b>
カメラの映像を空間上に表示する  

### 👉 [**Sprite3D**](https://docs.godotengine.org/en/latest/classes/class_sprite3d.html?highlight=Sprite3D#sprite3d) の用意  

1. 大元の **Node3D** に [**Sprite3D**] を追加
1. [**Sprite3D**]-[インスペクター] で各種設定  
    * **Translation**：x 1.75、y 1、z -2（ディスプレイ位置）
    * **Rotation**：x 0、y -40、z 0（ディスプレイの角度）
    * **Scale**：**0.25**、**0.25**、1（ピクセルアスペクト比･サイズ調整）

### 👉 [**SubViewport**](https://docs.godotengine.org/en/latest/classes/class_subviewport.html?highlight=SubViewport#subviewport) の用意  

1. [**Sprite3D**] を選び [子ノードを追加]-[**SubViewport**] を選択
1. [**SubViewport**]-[インスペクター] を設定  
    * Size：**x 640**、**y 360**（カメラの映像サイズ）  
    * Render Target：**When Parent Visible**  
    **注意**：編集中に限り **Always** を選択すると再生可能  
1. [**Sprite3D**]-[インスペクター] の [**Texture**]-[新規 **ViewportTexture**] で上記で作成した **SubViewport** を選択

### 👉 [**Camera3D**](https://docs.godotengine.org/en/latest/classes/class_camera3d.html?highlight=Camera3D#camera3d) の用意

1. [**SubViewport**] を選び [子ノードを追加]-[**Camera3D**] を選択
1. [**Camera3D**]-[インスペクター] で各種設定  
    * **Fov**（視野角）：1～179（初期値75°）
    * [**Transform**]  
      * **Position**：x -1、y 0.9、z -1（カメラの位置）
      * **Rotation**：x 0、y -65、z 0（カメラの角度）

### 👉 **Camera3D** の可視化  

1. [**Camera3D**] の下層に 3D オブジェクト（.glb）を配置
1. [**Camera3D**]-[インスペクター]-[**Transform**] で位置･角度･スケールを調整

### 👉 ディスプレイ（本体）の可視化  

1. [**Sprite3D**] の下層に 3D オブジェクトを配置
1. [インスペクター]-[**Transform**] で位置･スケールを調整  

（階層は以下の通り）  
　├ **Sprite3D**（ディスプレイ表示位置･映像サイズ調整）  
　│　└ **SubViewport**（映像サイズ）  
　│　　└ **Camera3D**（カメラ位置･画角）  
　│　　　└ **MeshInstance3D**（Camera3Dの可視化）  
　└ **MeshInstance3D**（ディスプレイ本体）  

デモファイル：[PictureInPicture.zip](https://github.com/mubirou/Godot/blob/main/zip/PictureInPicture.zip)  
参考：[動画再生](#220602)  
実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月20日  
作成日：2022年07月28日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220602"></a>
# <b>動画再生</b>

### 👉 動画ファイルの準備  

1. [無料動画素材](https://www.studio-lab01.com/freebies/)などで映像を準備  
1. [Convertio](https://convertio.co/ja/) などで [**OGV（.ogv）**](https://www.theora.org/) に変換  
 **注意**：[**サポートされている再生形式**](https://docs.godotengine.org/en/latest/tutorials/animation/playing_videos.html?）highlight=Video#supported-playback-formats)
1. 上記 **.ogv** ファイルを Godot プロジェクトフォルダに置く  

### 👉 [**Sprite3D**](https://docs.godotengine.org/en/latest/classes/class_sprite3d.html?highlight=Sprite3D#sprite3d) の用意  

1. 大元の **Node3D** に [**Sprite3D**] を追加
1. [**Sprite3D**]-[インスペクター] で各種設定  
    * **Translation**：x 0、y 1.5、z -3（ディスプレイ位置）
    * **Rotation**：x 0、y 0、z 0（ディスプレイの角度）
    * **Scale**：**0.25**、**0.25**、1（ピクセルアスペクト比･サイズ調整）

### 👉 [**SubViewport**](https://docs.godotengine.org/en/latest/classes/class_subviewport.html?highlight=SubViewport#subviewport) の用意  

1. [**Sprite3D**] を選び [子ノードを追加]-[**SubViewport**] を選択
1. [**SubViewport**]-[インスペクター] を設定  
    * Size：**x 854**、**y 360**（映像の元サイズ）  
    * Render Target：**When Parent Visible**
1. [**Sprite3D**]-[インスペクター] の [**Texture**]-[新規 **ViewportTexture**] で上記で作成した **SubViewport** を選択

### 👉 [**VideoStreamPlayer**](https://docs.godotengine.org/en/latest/classes/class_videostreamplayer.html?highlight=VideoStreamPlayer#videostreamplayer) の用意

1. [**SubViewport**] を選び [子ノードを追加]-[**VideoStreamPlayer**] を選択
1. [**VideoStreamPlayer**]-[インスペクター] で各種設定  
    * [**Stream**]：（**.ogv**ファイルをドラッグ＆ドロップ）  
    * **Autoplay**：**✓**

（階層は以下の通り）  
　├ **Sprite3D**（ディスプレイ表示位置･映像サイズ調整）  
　│　└ **SubViewport**（映像サイズ）  
　│　　└ **VideoStreamPlayer**（.ogv を指定）  

デモファイル：[VideoPlayer.zip](https://github.com/mubirou/Godot/blob/main/zip/VideoPlayer.zip)  
参考：[Picture-in-Picture](#220613)  
参考：[GODOT DOCS](https://docs.godotengine.org/en/latest/classes/class_videostreamplayer.html#class-videostreamplayer)  
実行環境：Windows 10、Godot 3.4.4 + OpenXR Plugin 1.2  
Meta Quest 40.0、Oculus Link（Oculusアプリ）  
作成者：夢寐郎  
作成日：2022年06月04日  
作成日：2022年07月28日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220604"></a>
# <b>Oculus Air Link</b>

### 👉 **Oculus アプリ**の用意  
  1. Windows 上で [oculus.com/setup](https://www.oculus.com/setup/) から [OCULUS QUEST]（初代の場合）の [**ソフトウェアをダウンロード**] を選択  
    【注意】"**Quest 2**"の場合は [QUEST 2] の [QUEST2 PCアプリをダウンロード] を選択します
  1. ダウンロードした **OculusSetup.exe** をダブルクリックしインストール  
    ～しばらく時間がかかります☕～

### 👉 **Oculus Air Link** の起動   
  * Quest コントローラーの [MENU] ボタンを押しメニューを表示し、時間が表示されている部分をトリガーで選択
  * [**Quest Link**] ボタンを選択
  * [**Air Linkを使用**] をオンにして [**起動**]
  📝 初めて接続する場合 [**ペアリング**]作業が必要です

### 👉 **Godot Engine** の実行  
  * Godot の [▶] を押して Quest + Godot が同時再生されれば成功！

### 📝 [接続要件](https://www.moguravr.com/oculus-air-link/)  
1. Oculus Air Linkの有効範囲：Wi-Fiルーターから20フィート（約6m）以内
1. ルーターの設置場所：ヘッドセットと直線上で遮るものがなく、床から1m以上の高さ
1. Wi-Fiの帯域：5GHz（acもしくはax）
1. Oculus Linkの動作要件を満たすスペックのPC
1. PCとWi-FiルーターがLANケーブルで接続されている（有線接続である）こと

実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月05日  
更新日：2022年07月29日  Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220609"></a>
# <b>Blender to Godot</b>

💡 **.blend** ファイルも読込可能ですが "[マルチポーズ](#220714)" はうまくインポートできません（要調査）   

### 👉 [Blender](https://www.blender.org/) の作業

1. 書き出したいオブジェクト（階層内全て含む）を選択
1. [ファイル]-[エクスポート]-[**[glTF 2.0](https://docs.godotengine.org/en/latest/about/faq.html#what-3d-model-formats-does-godot-support) (.glb/.gltf)**] を選択
1. 以下の通り設定
    * フォーマット：**glTFバイナリ (.glb)**
    * 内容：**✓ 選択したオブジェクト**
1. フォルダを Godot のプロジェクト内に指定し [**glTF 2.0のエクスポート**] を選択

### 👉 Godot の作業

1. [ファイルシステム] 内に表示される **.glb** を [シーン] の任意のノード上にドラッグ＆ドロップ
1. 配置したオブジェクトの [インスペクター] で位置やスケールを調整
1. [シーン] 上で上記のオブジェクトを選択し [右クリック]-[**編集可能な子**] を選択
1. 表示された階層から [**MeshInstance3D**] を選択し [インスペクター]-[**Geometry**]-[**LOD Bias**] を 20～40 程度に調整（[**Level Of Detail**](https://docs.unity3d.com/ja/2018.4/Manual/LevelOfDetail.html)）

参考：[Blender（階層構造）to Godot](#220615)  
実行環境：Windows 10、Godot 4.0 alpha 13、Blender 3.2.1  
作成者：夢寐郎  
作成日：2022年06月11日  
更新日：2022年07月29日  
[[TOP]](#TOP)


<a id="220506"></a>
# <b>オブジェクト色</b>

着色したい [**MeshInstance3D**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d) の [インスタンス] を開く

### ➀ [**Mesh**](https://docs.godotengine.org/en/latest/classes/class_mesh.html#mesh) プロパティを使う方法  

* [[**Mesh**](https://docs.godotengine.org/en/latest/classes/class_mesh.html#mesh)]-[編集]-[[**Material**](https://docs.godotengine.org/en/latest/classes/class_material.html?highlight=Material#material)]-[新規 [**StandardMaterial3D**](https://docs.godotengine.org/en/latest/classes/class_standardmaterial3d.html?highlight=StandardMaterial3D#standardmaterial3d)]-[編集]  
  * **着色**：[**Albedo**]-[**Color**]（アルファ値設定可）
  * **半透明**：[**Transparency**]
  * **光沢**：[**Metallic**] + [**Roughness**]

```gdscript
var _obj = get_node("MeshInstance3D")

# オブジェクトの色（不透明度）を調べる
print(_obj.get_mesh().material.get_albedo())
#-> (1, 1, 1, 1)

# オブジェクトの色を白→赤に変更
_obj.get_mesh().material.set_albedo(Color(1,0,0,1))
```

### ➁ [**Surface Material Override**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=Surface%20Material%20Override#class-meshinstance3d-method-get-surface-override-material) を使う方法  

* [[**Surface Material Over…**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=Surface%20Material%20Override#class-meshinstance3d-method-get-surface-override-material)]-[新規 [**StandardMaterial3D**](https://docs.godotengine.org/en/latest/classes/class_standardmaterial3d.html?highlight=StandardMaterial3D#standardmaterial3d)]-[編集]  
  * **Mesh** プロパティを使う場合と同じ（上記参照）    

```gdscript
var _obj = get_node("MeshInstance3D")

# オブジェクトの色（不透明度）を調べる
print(_obj.get_surface_override_material(0).get_albedo())
#-> (1, 1, 1, 1)

# オブジェクトの色を白→赤に変更
var _material = _obj.get_surface_override_material(0)
_material.set_albedo(Color(1,0,0,1))
_obj.set_surface_override_material(0, _material)
```

実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年05月28日  
更新日：2022年07月31日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="背景色"></a>
# <b>背景色</b>

* [プロジェクト]-[プロジェクト設定]-[**レンダリング**]-[**Environment**] で以下の通りに設定
  * **Default Clear Color** : bfbfbf（初期値:4d4d4d）

（注意）オブジェクトの色に影響するためグレー系が好ましい  

参考： [360°パノラマ](#220710)、[鏡面仕上げボール](#220711)  
実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年03月07日  
更新日：2022年07月31日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220611"></a>
# <b>移動の基本3種</b>

### 📝 物理ボディ３種の継承構造<a id="220611-1"></a>  
[Node3D](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=Node3D#node3d)  
　└ [CollisionObject3D](https://docs.godotengine.org/en/latest/classes/class_collisionobject3d.html?highlight=CollisionObject3D#collisionobject3d)  
　　├ [PhysicsBody3D](https://docs.godotengine.org/en/latest/classes/class_physicsbody3d.html?highlight=PhysicsBody3D#physicsbody3d)  
　　│├ [**StaticBody3D**](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d)（壁･床用）   
　　│├ [**CharacterBody3D**](https://docs.godotengine.org/en/latest/classes/class_characterbody3d.html?highlight=CharacterBody3D#characterbody3d)（キャラクター用）    
　　│├ [**RigidBody3D**](https://bit.ly/3Q7KSgX)（力を加えられる物理ボディ）  
　　│└ [PhysicalBone3D](https://docs.godotengine.org/en/latest/classes/class_physicalbone3d.html?highlight=PhysicalBone3D#physicalbone3d)  
　　└ [Area3D](https://docs.godotengine.org/en/latest/classes/class_area3d.html?highlight=get_overlapping_bodies#area3d)  
  
### **➀指定位置に移動**  
 
  * [**Node3D.set_position(Vector3)**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=position%20Node3D#class-node3d-property-position)   
  ```gdscript
  var _Node3D = get_node("〇〇")
  _Node3D.set_position(Vector3(0, 0, 0))
  ```

  * [**Node3D.set_global_position(Vector3)**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=set_global_position)  

  ```gdscript
  var _Node3D = get_node("XXXBody3D")
  _Node3D.set_global_position(Vector3(0, 0, 0))
  ```

### **➁値だけ移動**<a id="220611-2"></a>  

  * [**PhysicsBody3D.move_and_collide(Vector3)**](https://docs.godotengine.org/en/latest/classes/class_physicsbody3d.html#class-physicsbody3d-method-move-and-collide)  

    * [CollisionShape3D](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d) に衝突すると止まる  
    * 衝突時に関連情報（[KinematicCollision3D](https://docs.godotengine.org/en/latest/classes/class_kinematiccollision3d.html#class-kinematiccollision3d)）を返す  
  
  ```gdscript
  var _PhysicsBody3D = get_node("〇〇")
  var _KinematicCollision3D = _PhysicsBody3D.move_and_collide(Vector3(-0.1, 0, 0))
  if _KinematicCollision3D != null:
    print(_KinematicCollision3D.get_collider().name)
  ```

### **➂力を加える**  

  * [**RigidBody3D.apply_force(Vector3)**](https://bit.ly/3B6mTdO)  
    参考：[GODOT DOCS（RigidBody3D）](https://bit.ly/3Q7KSgX)    

  ```gdscript
  var _RigidBody3D:RigidBody3D = get_node("〇〇")
  _RigidBody3D.apply_force(Vector3(-100, 100, 0))
  ```

実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月15日  
作成日：2022年09月02日 RigidDynamicBody3D → RigidBody3D  
[[TOP]](#TOP)


<a id="220801"></a>
# <b>衝突判定領域</b>
さまざまな衝突判定領域（[**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d)）について  

### ➀プリミティブ型  
1. [**SphereShape3D**](https://docs.godotengine.org/en/latest/classes/class_sphereshape3d.html?highlight=SphereShape3D#sphereshape3d)（球）
1. [**BoxShape3D**](https://docs.godotengine.org/en/latest/classes/class_boxshape3d.html?highlight=BoxShape3D#boxshape3d)（直方体）
1. [**CapsuleShape3D**](https://docs.godotengine.org/en/latest/classes/class_capsuleshape3d.html?highlight=CapsuleShape3D#capsuleshape3d)（カプセル薬）
1. [**CylinderShape3D**](https://docs.godotengine.org/en/latest/classes/class_cylindershape3d.html?highlight=CylinderShape3D#cylindershape3d)（円柱）

### ➁自動作成型  
[MeshInstance3D](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d) を選び [**メッシュ**] ボタンから作成
1. [**ConcavePolygonShape3D**](https://docs.godotengine.org/en/latest/classes/class_concavepolygonshape3d.html?highlight=ConcavePolygonShape3D#concavepolygonshape3d) 💡
    * **[三角形メッシュ…]**（超高精細）を選び作成  
    * 頂点数の省略不可
    * 両方が ConcavePolygonShape3D の場合は無効
    * 本来は StaticBody3D（不動の物理ボディ）用
1. [**ConvexPolygonShape3D**](https://docs.godotengine.org/en/latest/classes/class_convexpolygonshape3d.html?highlight=ConvexPolygonShape3D)  
    * **[単一の凸型……]**（中レベル）を選び作成  
    * **[簡略化された凸型…]**（低レベル）を選び作成  
    * **頂点数の省略可**（[CollisionShape3D]-[インスペクター]-[Shape]-[ConvexPolygonShape3D]-[編集]-[Points]-[Array (size 〇〇)]-[サイズ]）

### 📝 デモファイル  
  * [CollisionShape3D.zip](https://github.com/mubirou/Godot/blob/main/zip/CollisionShape3D.zip)  
  * 右ジョイスティックでミサイルの前後左右
  * 左ジョイスティックでミサイルの上下
  * 衝突時に背面の壁が赤に変更
  * 階層構造  
　├ mubirou（**CharacterBody3D**）  
　│　├ Body（**MeshInstance3D**）  
　│　└ **CollisionShape3D**（[**ConcavePolygonShape3D**](https://docs.godotengine.org/en/latest/classes/class_concavepolygonshape3d.html?highlight=ConcavePolygonShape3D#concavepolygonshape3d)）  
　├ missile（**CharacterBody3D**）  
　│　├ missile（**MeshInstance3D**）  
　│　└ **CollisionShape3D**（[**ConvexPolygonShape3D**](https://docs.godotengine.org/en/latest/classes/class_convexpolygonshape3d.html?highlight=ConvexPolygonShape3D)）  

参考：[YouTube](https://www.youtube.com/watch?v=Mq-_FffB2eE)  
参考：[GODOT DOCS](https://docs.godotengine.org/en/latest/tutorials/physics/collision_shapes_3d.html?highlight=collision%20detection%20area#collision-shapes-3d)  
参考：[物理ボディ３種](#220611-1)  
参考：[衝突判定](#220612)  
実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成日：2022年08月03日  
[[TOP]](#TOP)


<a id="220802"></a>
# <b>ボーンにアタッチ</b>
任意の[ボーン](https://harkerhack.com/3dcg-what-is-born/)に [MeshInstance3D](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d) 等をアタッチする  

### 📝 手順  
1. [Mixamo](#220713) を利用してアーマチュア含むオブジェクトを配置  
1. [シーン] 内の [**AnimationPlayer**] を選択しポーズを取ってない状態にする
1. [シーン] 内の [[**Skeleton3D**](https://docs.godotengine.org/en/latest/classes/class_skeleton3d.html?highlight=Skeleton3D#skeleton3d)]-[インスペクター] で各ボーンの位置を確認
1. [**Skeleton3D**] を選び [子ノードを追加]-[[**BoneAttachment3D**](https://docs.godotengine.org/en/latest/classes/class_boneattachment3d.html?highlight=BoneAttachment3D#boneattachment3d)] を選択
1. [**BoneAttachment3D**]-[インスペクター]-[**Use External Skeleton**] を **✓オン** にして上記の [**Skeleton3D**] を割り当て
1. 引続き [**Bone Name**] でオブジェクトをアタッチしたいボーンを選択（ボーンの位置に[マニュピレーター](https://blender-cg.net/manipyure-ta/#toc2)が表示）
1. [**BoneAttachment3D**] を選び [子ノードを追加]-[**MeshInstance3D**]-[インスペクター]-[**Mesh**] から任意のメッシュを選択し位置、サイズを調整
1. 上記の [**MeshInstance3D**] を選び [子ノードを追加]-[[**Area3D**](https://docs.godotengine.org/en/latest/classes/class_area3d.html?highlight=get_overlapping_bodies#area3d)] を追加
1. 引続き [**Area3D**] を選び [子ノードを追加]-[[**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionobject3d.html?highlight=CollisionObject3D#collisionobject3d)] を選択（[インスペクター]-[**Shape**] は上記の [**MeshInstance3D**] に合わせる）
1. 必要に応じて衝突検知させるオブジェクトとスクリプトを記述（以下のデモファイルを参照）

### 📝 デモファイル  
  * [BoneAttachment.zip](https://github.com/mubirou/Godot/blob/main/zip/BoneAttachment.zip)  
  * 階層構造  
　├ Wall（**MeshInstance3D**）←壁  
　│　└ **StaticBody3D**  
　│　　└ **CollisionShape3D** ←衝突判定領域  
　├ Player（**Node3D**）  
　│　├ **AnimationPlayer**  
　│　└ **Skeleton3D**  
　│　　├ Body（**MeshInstance3D**）←キャラクター  
　│　　└ [**BoneAttachment3D**](https://docs.godotengine.org/en/latest/classes/class_boneattachment3d.html?highlight=BoneAttachment3D#boneattachment3d)  
　│　　　└ Hand（**MeshInstance3D**）←追加したモノ  
　│　　　　└ [**Area3D**](https://docs.godotengine.org/en/latest/classes/class_area3d.html?highlight=get_overlapping_bodies#area3d)  
　│　　　　　└ **CollisionShape3D** ←衝突判定領域  
  * コードのポイント  
    ```gdscript
    var _hand : Area3D

    func _ready():
      ……
      _hand = get_node("Player/…/Hand/Area3D")
      
    func _physics_process(delta):
      var _theList = _hand.get_overlapping_bodies()
      ……
      for _tmp in _theList:
        var _mesh = _tmp.get_parent()
        _mesh.get_mesh().material.set_albedo(Color(…))
    ```
    👆 [**Area3D.get_overlapping_bodies()**](https://docs.godotengine.org/en/latest/classes/class_area3d.html?highlight=get_overlapping_bodies#methods)  
  （[Area3D](https://docs.godotengine.org/en/latest/classes/class_area3d.html?highlight=get_overlapping_bodies#area3d) 領域にある [PhysicsBody3D](#220611-1) の配列を返す）
  * 衝突判定領域を含む [CollisionObject3D](#220611-1) が [Area3D](https://docs.godotengine.org/en/latest/classes/class_area3d.html?highlight=get_overlapping_bodies#area3d) ではなく [PhysicsBody3D](#220611-1) の何れかの場合は [**PhysicsBody3D.move_and_collide(Vector3)**](#220611-2) が利用可能  

参考：[YouTube](https://www.youtube.com/watch?v=A2JMYQBWeig)  
参考：[衝突判定](#220612)  
実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成日：2022年08月06日  
[[TOP]](#TOP)


<a id="220803"></a>
# <b>テキストのスクロール</b>
[右ジョイスティック](#220608)の上下でテキストをスクロール、[A･Bボタン](#220703-1)で頁送りをする  

* 階層構造  
　├ **Sprite3D**  
　│　└ **SubViewport**  
　│　　└ **RichTextLabel**  

### 👉 Sprite3D の設定
  * **Texture**：ViewportTexture（下記の **SubViewport**） 
  * **Transform**：
    * **Position**：x 0、y 0.55、z -1.5（表示位置）
    * **Rotation**：x -15、y 0、z 0（表示角度）
    * **Scale**：x 0.15、y 0.15、z 0.15（サイズ調整）

### 👉 SubViewport の設定
  * **Size**：
    * **x**：649（RichTextLabelのSizeに合わせる）
    * **y**：662（同上）
  * **Render Target**：
    * **Update Mode**：Always（編集時）

### 👉 RichTextLabel の設定  
  （要検証）SubViewport 階層から外すとテキスト内容が確認可   
  * **Text**：[注文の多い店/宮沢賢治](https://www.aozora.gr.jp/cards/000081/card43754.html#download) のテキストファイル（[chumonno_oi_ryoriten.txt](https://github.com/mubirou/Godot/blob/main/txt/chumonno_oi_ryoriten.txt)）から本文をコピペ（最初にタイトル等、最終行に「完」を入れる）
  * **BiDi**：
    * **Text Direction**：Left-to-Right
  * **Layout**
    * **Transform**：
      * **Size**：x 649、y 662（調整）  
    * **Theme Override**：
      * **Fonts**：
        * **Normal Font**：[Kosugi Maru](https://fonts.google.com/specimen/Kosugi+Maru#type-tester)
      * **Fonts sizes**：
        * **Normal Font Size**：32

### 👉 コードの記述  
  ```gdscript
  # main.gd
  extends Node3D

  var _interface : XRInterface
  var _richText : RichTextLabel
  var _lineCount = 0

  func _ready():
    _interface = XRServer.find_interface("OpenXR")
    if _interface and _interface.is_initialized():
      var _viewport : Viewport = get_viewport()
      _viewport.use_xr = true
    _richText = get_node("Sprite3D/SubViewport/RichTextLabel")

  # ジョイスティックの上下でスクロール
  func _on_xr_controller_3d_right_input_axis_changed(name, value):
    _lineCount -= value.y
    __changeLine(_lineCount)

  # B、Aボタンで頁送り
  func _on_xr_controller_3d_right_button_pressed(name):
    if name == "by_button":
      _lineCount -= _richText.get_visible_line_count() - 1
    if name == "ax_button": 
      _lineCount += _richText.get_visible_line_count() - 1
    __changeLine(_lineCount)

  # 汎用関数  
  func __changeLine(arg):
    if arg < 0: _lineCount = 0
    if arg > _richText.get_line_count() - _richText.get_visible_line_count() + 1:
      _lineCount = _richText.get_line_count() - _richText.get_visible_line_count() + 1
    _richText.scroll_to_line(round(_lineCount))
  ```
  参考：[入力イベントの接続](#220703-1)  
  参考：[ジョイスティック角度](#220608)  

デモファイル：[TextScroll.zip](https://github.com/mubirou/Godot/blob/main/zip/TextScroll.zip)  
実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年08月08日  
更新日：2022年08月10日 スクロールバー表示に対応  
[[TOP]](#TOP)


<a id="220804"></a>
# <b>シーン遷移</b>

1. **〇.tscn** を複数用意
1. [ボタン](#220716)を追加
1. コードのポイント  
    * [**get_tree().change_scene("res://〇.tscn")**](https://docs.godotengine.org/en/latest/tutorials/scripting/scene_tree.html?highlight=get_tree().change_scene#changing-current-scene)
    * [タイマー](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#%E3%82%BF%E3%82%A4%E3%83%9E%E3%83%BC)を使い[効果音](#220614)が終了してから遷移  
      ```gdscript
        AudioStreamPlayer3D.play()
        await __loop()
        ……
      func __loop():
        await get_tree().create_timer(0.1).timeout
        if ! AudioStreamPlayer3D.is_playing():
          get_tree().change_scene("res://〇.tscn")
        await __loop()
      ```

デモファイル：[ChangeScene.zip](https://github.com/mubirou/Godot/blob/main/zip/ChangeScene.zip)   
実行環境：Windows 10、Godot 4.0 alpha 13、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年08月11日  
[[TOP]](#TOP)


<a id="220805"></a>
# <b>摩擦係数と反発係数</b>

[**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d) 同士が衝突した際に影響する「[**摩擦係数**](https://d-engineer.com/Mechanics/masatu.html)」と「[**反発係数**（**はね返り係数**）](https://hujiblog.com/archives/2468)」の設定

### 👉 各種ノードを以下の通り配置  
　├ Box（**[RigidBody3D](https://docs.godotengine.org/en/latest/classes/class_rigidbody3d.html?highlight=RigidBody3D#rigidbody3d)**）  
　│　└ [**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d)（BoxShape3D 型）  
　│　　└ [**MeshInstance3D**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d)（BoxMesh 型＝落下物）  
　└ Slope（[**StaticBody3D**](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d)）  
　　　└ [**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d)（BoxShape3D 型）  
　　　　└ [**MeshInstance3D**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d)（BoxMesh 型＝斜めの床）  

### 👉 摩擦係数と反発係数を設定  

* 上記の Slope（[**StaticBody3D**](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d)）の [インスペクター]-[**Physics Material Override**]-[新規 **PhysicsMaterial**]-[編集]    
  * **Friction**（[**摩擦係数**](https://d-engineer.com/Mechanics/masatu.html)）：0～1（初期値：1）
  * **Bounce**（[**反発係数**](https://hujiblog.com/archives/2468)）：0～1（初期値：0）  

💡 [**重力加速度**](https://www.eps.sci.kyoto-u.ac.jp/research/introduction/07/index.html) は [プロジェクト]-[プロジェクト設定]-[一般]-[Physics]-[3D]-[**Default Gravity**] で設定（初期値：**9.8**）  

デモファイル：[FrictionBounce.zip](https://github.com/mubirou/Godot/blob/main/zip/FrictionBounce.zip)（右トリガーで落下、Bボタンでリセット）  
📖 **摩擦力**：高校『物理基礎の力学』（力のつり合い）  
📖 **はね返り係数**：高校『物理の力学』（力積と運動量）  
実行環境：Windows 10、Godot 4.0 alpha 15、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年08月12日  
更新日：2022年09月04日 RigidDynamicBody3D → RigidBody3D  
[[TOP]](#TOP)


<a id="220806"></a>
# <b>共有データ</b>

### 📝 特徴
  * Unity の [staticクラス](https://github.com/mubirou/Unity3D/tree/master/study-notes#static%E3%82%AF%E3%83%A9%E3%82%B9) の Godot 版
  * 複数の .gd から利用可能な共有データが作れる＝変更可能
  * シーン遷移時でもデータを渡すことが可能

### 👉 グローバル変数の準備  
  1. [ファイルシステム] 上で右クリック→[新規スクリプト]
  2. [パス] は "res://**Global.gd**" にしてコードを記述  
  ```gdscript
  # Global.gd
  extends Node
  var SCORE = 100
  func Welcome(arg):
    return "Welcome," + arg + "!"
  ```
  3. [プロジェクト]-[プロジェクト設定]-[**Autoload**（自動読み込み）]を選択
  1. [パス]-[📁] から上記の **Global.gd** を選択し [追加]  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202208131844.jpg)  
  
### 👉 利用方法  
  複数のシーンで利用可能  
  ```gdscript
  func _ready():
    ……
    Global.SCORE -= 1
    print(Global.SCORE)
    print(Global.Welcome("〇〇"))
  ```

参考：[グローバル変数](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#%E3%82%B0%E3%83%AD%E3%83%BC%E3%83%90%E3%83%AB%E5%A4%89%E6%95%B0)  
実行環境：Windows 10、Godot 4.0 alpha 14、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年08月13日  
[[TOP]](#TOP)


<a id="220807"></a>
# <b>他人のメソッドの実行</b>

* 階層構造（サンプル）  

  **Main**（Node3D）![image](https://github.com/mubirou/Godot-Study-Notes/blob/main/png/script.png)（**Main.gd**）  
　├ XROrigin3D  
　├ **Box**（MeshInstance3D）![image](https://github.com/mubirou/Godot-Study-Notes/blob/main/png/script.png)（**Box.gd**）  
　└ **Sphere**（MeshInstance3D）![image](https://github.com/mubirou/Godot-Study-Notes/blob/main/png/script.png)（**Sphere.gd**） 

* **Main** にアタッチしたスクリプト（**Main.gd**）
  ```gdscript
  # /root/Main(Main.gd)
  extends Node3D
  ……
  func _ready():
    ……
    var _box = get_node("/root/Main/Box")
    var _sphere = get_node("/root/Main/Sphere")
    _box.some_method(self)
    #-> Box/some_method() from Main:[…
    _sphere.some_method(self)
    #-> Sphere/some_method() from Main:[…
  ```
* **Box** にアタッチしたスクリプト（**Box.gd**）
  ```gdscript
  # /root/Main/Box(Box.gd)
  extends MeshInstance3D

  func _ready():
    var _main = get_node("/root/Main")
    var _sphere = get_node("/root/Main/Sphere")
    _main.some_method(self)
    #-> Main/some_method() from Box:[…
    _sphere.some_method(self)
    #-> Sphere/some_method() from Box:[…

  func some_method(arg:Object):
    print("Box/some_method() from " + str(arg))
  ```
* **Sphere** にアタッチしたスクリプト（**Sphere.gd**）
  ```gdscript
  # /root/Main/Sphere(Sphere.gd)
  extends MeshInstance3D

  func _ready():
    var _main = get_node("/root/Main")
    var _box = get_node("/root/Main/Box")
    _main.some_method(self)
    #-> Main/some_method() from Sphere:[…
    _box.some_method(self)
    #-> Box/some_method() from Sphere:[…

  func some_method(arg:Object):
    print("Sphere/some_method() from " + str(arg))
  ```

参考：[ノードにアタッチしたスクリプト内の self について](https://bit.ly/3dMF9Qp)  
実行環境：Windows 10、Godot 4.0 alpha 14、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年08月22日  
[[TOP]](#TOP)


<a id="220620"></a>
# <b>外部テキストの読み書き</b>
VRコントローラーのＢボタンでデータ（現在の時間）を保存、Ａボタンでデータを読み込む**サンプルコード**  

```gdscript
# /root/Main(Main.gd)
extends Node3D
……
# 外部テキストの「読み込み」用
func __loadText():
  var _file = File.new()
  # ファイルが無い場合は自動的に生成
  _file.open("res://save_text.dat", File.READ)
  #_file.open("user://save_text.dat", File.READ)
  var _text = _file.get_as_text()
  _file.close()
  return _text

# 外部テキストの「書き込み」用
func __saveText(arg):
  var _file = File.new()
  # ファイルが無い場合は自動的に生成
  _file.open("res://save_text.dat", File.WRITE)
  #_file.open("user://save_text.dat", File.WRITE)
  _file.store_string(str(arg))
  _file.close()

func _on_xr_controller_3d_button_pressed(_name:String):
  if _name == "by_button":
    # 外部テキストの書き込み
    var _now:Dictionary = Time.get_datetime_dict_from_system()
    var _h = _now.hour
    var _m = _now.minute
    var _s = _now.second
    if _h < 10: _h = "0" + str(_h)
    if _m < 10: _m = "0" + str(_m)
    if _s < 10: _s = "0" + str(_s)
    var _newText:String = str(_h) + ":" + str(_m) + ":" + str(_s)
    __saveText(_newText)
    print("セーブしました")
  elif _name == "ax_button":
    # 外部テキストの読み込み
    var _loadText = __loadText()
    print("読込データ: " + _loadText) #-> "読込データ: 23:26:31"
```

### 📝 保存場所  

1. **[user://](https://docs.godotengine.org/en/latest/tutorials/scripting/filesystem.html?highlight=user%3A%2F%2F#user-path)** の場合…  
  C:\Users\User name\AppData\Roaming\Godot\app_userdata\〇〇\save_text.dat  
  ※〇〇は [プロジェクト]-[プロジェクト設定]-[アプリケーション]-[構成]-[名前] に依存  

1. **[res://](https://docs.godotengine.org/en/latest/tutorials/scripting/filesystem.html?highlight=user%3A%2F%2F#resource-path)** の場合…  
  プロジェクトのルートに保存（Godot上では見えない）  

参考：[GODOT DOCS（**File**）](https://docs.godotengine.org/en/latest/classes/class_file.html?highlight=File#file)  
参考：[GODOT DOCS（**File paths in Godot projects**）](https://bit.ly/3c71OGM)  
参考：[GODOT DOCS（**Accessing persistent user data**）](https://bit.ly/3whtVd5)  
参考：[VRコントローラーの入力イベント](https://bit.ly/3T7Z2S3)  
実行環境：Windows 10、Godot 4.0 alpha 14、Meta Quest 42.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月28日  
更新日：2022年08月22日  
[[TOP]](#TOP)


<a id="220621"></a>
# <b>JSONの解析</b>

1. [**sample.json**](https://raw.githubusercontent.com/mubirou/Godot/main/json/sample.json) の準備
1. [JSON整形ツール](https://tools.m-bsys.com/development_tooles/json-beautifier.php)などで確認
1. Godot プルジェクトの **res://sample.json** として保存

#### サンプルコード

```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _ready():
  ……
  #===================
  # 外部JSONの読み込み
  #===================
  var _file = File.new()
  _file.open("res://sample.json", File.READ)
  var _load_data:String = _file.get_as_text()
  _file.close()
    
  #=================
  # JSONデータの解析
  #=================
  var _json = JSON.new()
  _json.parse(_load_data) # JSONの解析
  var _dic:Dictionary = _json.get_data() # or Array
  
  #=============================
  # 連想配列（Dictionary）の処理
  #=============================
  print(_dic["002"]["title"])
  #-> VRコンテンツ開発ガイド 2017
  print(_dic["002"]["isbn"])
  #-> 978-4-8443-6666-9
  print(_dic["002"]["price"])
  #-> 2600
  var _contents = _dic["002"]["contents"]
  for _tmp in _contents:
    var _chapter = _tmp["chapter"]
    print(str(_chapter)+":"+_tmp["content"])
    #-> 1:近代VRの基礎知識 など 
```

参考：[外部テキストの読み書き](#220620)  
参考：[GODOT DOCS（**JSON**）](https://docs.godotengine.org/en/latest/classes/class_json.html?highlight=JSON#json)  
参考：[GDScript（連想配列）](https://bit.ly/3TdtQ46)  
実行環境：Windows 10、Godot 4.0 alpha 14  
作成者：夢寐郎  
作成日：2022年06月28日  
更新日：2022年08月23日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220622"></a>
# <b>PHP+SQLite</b>

### 👉 PHP+SQLite の準備

1. [Hello,world!](https://github.com/mubirou/HelloWorld/blob/master/languages/SQLite/SQLite_win.md#sqlite-windows-) を参考に **PHP**、**SQLite** の開発環境を準備する

2. **C:\xampp\htdocs** に以下の **test.php** を作成

  ```php
  <?php
      $con = new PDO('sqlite::memory:', null, null);
      $statement = $con->prepare('SELECT sqlite_version()');
      $statement->execute();
      echo $statement->fetchColumn(); //-> 3.36.0
  ?>
  ```

3. http://localhost/test.php を実行（動作確認）

### 👉 サンプルコード
「[PHP+MySQL](#220623)」と全く同じ  
「[Python+SQLite](#220624) / [Python+MySQL](#220625)」とほぼ同じ（**.py** → **.php**） 

```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _ready():
  ……  
  var _rq = HTTPRequest.new()
  add_child(_rq)
  _rq.request_completed.connect(completed)
  _rq.request("http://127.0.0.1/test.php")

func completed(arg1, arg2, arg3, arg4):
  print(arg4.get_string_from_utf8()) #-> 3.36.0
```

参考：[GODOT DOCS (**HTTPRequest**）](https://docs.godotengine.org/en/latest/classes/class_httprequest.html?highlight=HTTPRequest)  
実行環境：Windows 10、Godot 4.0 alpha 14、Apache 2.4.53、**PHP** 8.1.6、**SQLite** 3.36.0  
作成者：夢寐郎  
作成日：2022年06月29日  
更新日：2022年08月23日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220623"></a>
# <b>PHP+MySQL</b>

### 👉 PHP+MySQL（[**MariaDB**](https://ja.wikipedia.org/wiki/MariaDB)）の準備

1. [Hello,world!](https://github.com/mubirou/HelloWorld/blob/master/languages/MySQL/MySQL_win.md) を参考に **PHP**、**MySQL** の開発環境を準備する

2. **C:\xampp\htdocs** に以下の **test.php** を作成

  ```php
  <?php
    $con = new PDO('mysql::memory:', 'root', '');
    $statement = $con->prepare("SELECT VERSION()");
    $statement->execute();
    echo $statement->fetchColumn(); //-> 10.4.24-MariaDB
  ?>
  ```

3. http://localhost/test.php を実行（動作確認）

### 👉 サンプルコード
「[PHP+SQLite](#220622)」と全く同じ  
「[Python+SQLite](#220624) / [Python+MySQL](#220625)」とほぼ同じ（**.py** → **.php**） 
```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _ready():
  ……
  var _rq = HTTPRequest.new()
  add_child(_rq)
  _rq.request_completed.connect(completed)
  _rq.request("http://127.0.0.1/test.php")

func completed(arg1, arg2, arg3, arg4):
  print(arg4.get_string_from_utf8()) #-> 3.36.0
```

実行環境：Windows 10、Godot 4.0 alpha 14、Apache 2.4.53、**PHP** 8.1.6、**[MariaDB](https://ja.wikipedia.org/wiki/MariaDB)** 10.4.24  
作成者：夢寐郎  
作成日：2022年06月29日  
更新日：2022年08月23日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220624"></a>
# <b>Python+SQLite</b>

### 👉 **Python** の動作確認
* [Hello,world!](https://github.com/mubirou/HelloWorld/blob/master/languages/Python/Python_win.md) を参考に **Python** の開発環境を準備する

### 👉 **XAMPP** のインストール（[参考](https://github.com/mubirou/HelloWorld/blob/master/languages/SQLite/SQLite_win.md#sqlite-windows-)）  

### 👉 **XAMPP** に **Python** を追加する  

1. [XAMPP]-[Apache]-[config]-[**Apache(httpd.conf)**] を開く
2. **httpd.conf** の最終行に以下を追加･動作確認する

    ```conf
    # Python Settings
    AddHandler cgi-script .py
    ScriptInterpreterSource Registry-Strict
    ```

3. [XAMPP]-[**Apache**]-[Start] で Web サーバ（**Apache**）を起動
3. **C:\xampp\htdocs** に以下の **test.py** を作成

    ```py
    #!C:\Users\User name\AppData\Local\Programs\Python\Python310\python.exe
    # -*- coding: utf-8 -*-
    print("Content-Type: text/html\n")

    import platform
    print(platform.python_version()) #-> 3.10.5
    ```
    👆 最初の3行は必須（決め打ち）  
    👆 1行目は環境に合わせて確認＆設定  
    （設定が異なると "Internal Server Error" が出る）  


4. Web ブラウザで **localhost/test.py** を開く
5. Python のバージョン（3.10.5）が表示されたら成功！

### 👉 Python + SQLite の動作確認  

1. **C:\xampp\htdocs** の **test.py** を以下の通りに記述

    ```py
    #!C:\Users\User name\AppData\Local\Programs\Python\Python310\python.exe
    # -*- coding: utf-8 -*-
    print("Content-Type: text/html\n")

    import sqlite3

    _con = sqlite3.connect(':memory:')
    _cur = _con.cursor()
    _cur.execute('SELECT sqlite_version()')
    _result = _cur.fetchall()
    print(_result[0][0]) #-> 3.37.2
    ```

4. Web ブラウザで **localhost/test.py** を開く
5. SQLite のバージョン（3.37.2）が表示されたら成功！

### 👉 サンプルコード
「[Python+MySQL](#220625)」と全く同じ  
「[PHP+SQLite](#220622) / [PHP+MySQL](#220623)」とほぼ同じ（**.php** → **.py**）   
```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _ready():
  ……
  var _rq = HTTPRequest.new()
  add_child(_rq)
  _rq.request_completed.connect(completed)
  _rq.request("http://127.0.0.1/test.py")

func completed(arg1, arg2, arg3, arg4):
  print(arg4.get_string_from_utf8()) #-> 3.37.2
```

実行環境：Windows 10、Godot 4.0 alpha 14、Apache 2.4.53、**Python** 3.10.5、**SQLite** 3.37.2  
作成者：夢寐郎  
作成日：2022年06月29日  
更新日：2022年08月24日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220625"></a>
# <b>Python+MySQL</b>

### 👉 Python と MySQL（[**MariaDB**](https://ja.wikipedia.org/wiki/MariaDB)）の準備

1. [Python+SQLite](#220624) と [PHP+MySQL](#220623) を参考に **Python** と **MySQL（MariaDB）** の動作確認をする  
⚠ [データベース](https://bit.ly/3wonu7Y)（**test_db**）を作成すること！    

1. コマンドプロンプトを起動、次のコマンドで [MySQL コネクタ](https://www.mysql.com/jp/products/connector/)をインストール  

    ```
    >pip install mysql-connector-python
    ```
### 👉 Python + MySQL（MariaDB）の動作確認

1. **C:\xampp\htdocs** の **test.py** を以下の通りに記述

  ```py
  #!C:\Users\Owner\AppData\Local\Programs\Python\Python310\python.exe
  # -*- coding: utf-8 -*-
  print("Content-Type: text/html\n")

  import mysql.connector

  _con = mysql.connector.connect(user='root', passwd='', host='localhost', db='test_db')
  _cur = _con.cursor()
  _cur.execute('SELECT VERSION()')
  _result = _cur.fetchall()
  print(_result[0][0]) #-> 10.4.24-MariaDB
  ```
  👆 最初の3行は必須（決め打ち）  
  👆 1行目は環境に合わせて確認＆設定  
  （設定が異なると "Internal Server Error" が出る）  

2. [XAMPP]-[**MySQL**]-[Start] で **MySQL（MariaDB）** を起動
3. Web ブラウザで **localhost/test.py** を開く
4. MySQL（MariaDB）のバージョンが表示されたら成功！

### 👉 サンプルコード
「[Python+SQLite](#220624)」と全く同じ  
「[PHP+SQLite](#220622) / [PHP+MySQL](#220623)」とほぼ同じ（**.php** → **.py**）
```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _ready():
  ……
  var _rq = HTTPRequest.new()
  add_child(_rq)
  _rq.request_completed.connect(completed)
  _rq.request("http://127.0.0.1/test.py")

func completed(arg1, arg2, arg3, arg4):
  print(arg4.get_string_from_utf8()) #-> 10.4.24-MariaDB
```

実行環境：Windows 10、Godot 4.0 alpha 14、Apache 2.4.53、**Python** 3.10.5、[**MariaDB**](https://ja.wikipedia.org/wiki/MariaDB) 10.4.24、[**mysql-connector-python**](https://pypi.org/project/mysql-connector-python/) 8.0.29  
作成者：夢寐郎  
作成日：2022年06月29日  
更新日：2022年08月24日  Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220808"></a>
# <b>機械式時計</b>

![image](https://github.com/mubirou/Godot/blob/main/jpg/202208301311.jpg)

（主な階層構造）  
Main（Node3D）  
　└ clock（Node3D）  
　　　├ clock_board（文字盤を含む本体）  
　　　│　├ **short_hand_center**（**Node3D**）  
　　　│　│　└ short_hand（**時針**）  
　　　│　├ **long_hand_center**（**Node3D**）  
　　　│　│　└ long_hand（**分針**）  
　　　│　├ second_hand_board（スモールセコンド文字盤）  
　　　│　│　├ **second_hand_center**（**Node3D**）  
　　　│　│　│　└ second_hand（**秒針**）  
　　　│　│　└ center_pin（秒針の中心）  
　　　│　└ center_pin（時分針の中心）  
　　　└ windshield（透明な風防）  

```gdscript
# /root/Main(Main.gd)
extends Node3D

var _interface:XRInterface
var __second_hand:Node3D
var __long_hand:Node3D
var __short_hand:Node3D
var __current_second # null or int
var __timer:Timer = Timer.new()
var __start:int
var __demical:float

func _ready():
  _interface = XRServer.find_interface("OpenXR")
  if _interface and _interface.is_initialized():
    var _viewport:Viewport = get_viewport()
    _viewport.use_xr = true
  
  __short_hand = $clock/clock_board/short_hand_center
  __long_hand = $clock/clock_board/long_hand_center
  __second_hand = $clock/clock_board/second_hand_board/second_hand_center

func _process(_delta):
  var _now = Time.get_datetime_dict_from_system()
  
  # 機械式時計風（約6振動）処理＝力技
  if (__current_second != null):
    if (__current_second != _now.second):
      # 秒が切り替わったタイミングで処理
      __start = Time.get_unix_time_from_system()
      __demical = 0
      __timer.set_wait_time(0.167) # 約6振動
      __timer.connect("timeout", loop)
      add_child(__timer)
      __timer.start()
  __current_second = _now.second

  __short_hand.rotation.y = - deg_to_rad(_now.hour * 30 + _now.minute * 0.5)
  __long_hand.rotation.y = - deg_to_rad(_now.minute * 6 + _now.second / 60.0 * 6)
  __second_hand.rotation.y = - deg_to_rad((_now.second + __demical) * 6.0)
  
  #__short_hand.rotation.y = - PI * (_now.hour * 30 + _now.minute * 0.5) / 180
  #__long_hand.rotation.y = - PI * (_now.minute * 6 + _now.second / 60.0 * 6) / 180
  #__second_hand.rotation.y = - PI * ((_now.second + __demical) * 6.0) / 180

func loop():
  __demical = Time.get_unix_time_from_system() - __start
```

デモファイル：[clock.zip](https://github.com/mubirou/Godot/blob/main/zip/clock.zip)  
参考：[フタバゼミ](https://futabazemi.net/unity/pivot_change/)  
参考：[Poly Haven（テクスチャ）](https://polyhaven.com/textures)  
実行環境：Windows 10、Godot 4.0 alpha 15、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年08月30日  
更新日：2022年09月01日 deg2rad() → deg_to_rad() に変更  
[[TOP]](#TOP)


<a id="220809"></a>
# <b>洋書小説</b>
（注意）[青空文庫](https://www.aozora.gr.jp/cards/000081/files/43754_17659.html)などマルチバイト文字は対応していません  

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209010733.jpg)

### 👉 小説の用意

1. [**TheRestaurantOfManyOrders.html**](https://github.com/mubirou/Godot-Study-Notes/blob/main/html/TheRestaurantOfManyOrders.html) を用意
1. 上記のファイルを Web 上に置く（今回は **C:\xampp\htdocs** 内に配置し **http://localhost/TheRestaurantOfManyOrders.html** で閲覧できるようにする） 

### 👉 Python 側の準備

1. [**Hello,world!**](https://github.com/mubirou/HelloWorld/blob/master/languages/Python/Python_win.md) を参考に [**Python**]((https://www.python.jp/)) の開発環境を準備する
1. [**Python+SQLite**](#220624) を参考に **XAMPP** + **Python** の開発環境を準備する
1. **C:\xampp\htdocs** に以下の Python ファイル（**sample.py**）を作成する  
    👇 最初の3行は必須（決め打ち）  
    👇 1行目は環境に合わせて確認＆設定  
    （設定が異なると "Internal Server Error" が出る）
    ```python
    #!C:\Users\mubirou\AppData\Local\Programs\Python\Python310\python.exe
    # -*- coding: utf_8 -*-
    print("Content-Type: text/html\n")

    import urllib.request
    from bs4 import BeautifulSoup # 事前に "pip install bs4" が必要

    _url = "http://127.0.0.1/TheRestaurantOfManyOrders.html"

    _request = urllib.request.Request(_url)
    _response = urllib.request.urlopen(_request)
    _html = _response.read()
    _html = _html.decode("utf-8") # "shift_jis" etc...

    # Webスクレイピング
    _soup = BeautifulSoup(_html, "html.parser")

    # データの抽出
    print(_soup.find("body").text) # "title" etc...
    ```
    #### もしくは…
    ```python
    #!C:\Users\mubirou\AppData\Local\Programs\Python\Python310\python.exe
    # -*- coding: utf-8 -*-
    print("Content-Type: text/html\n")

    import requests # 事前に "pip install requests" を行う
    from bs4 import BeautifulSoup # 事前に "pip install bs4" を行う

    _url = "https://www.aozora.gr.jp/cards/000081/files/43754_17659.html"

    _response = requests.get(_url)
    _response.encoding = _response.apparent_encoding
    _html = _response.text

    # Webスクレイピング
    _soup = BeautifulSoup(_html, "html.parser")

    # データの抽出
    #print(_soup.find("title").text)
    print(_soup.find("body").text)
    ```  
1. "**http://localhost/sample.py**" にアクセスして本文が表示されれば成功！  

### 👉 Godot 側の処理

1. [**テキストのスクロール**](#220803) のデモファイル（[**TextScroll.zip**](https://github.com/mubirou/Godot/blob/main/zip/TextScroll.zip)）をダウンロード  
1. コードの前半部分（_ready() メソッドまで）を以下の通りに書き換える
    ```gdscript
    # /root/Main(Main.gd)
    extends Node3D

    var _interface : XRInterface
    var _richText : RichTextLabel
    var _lineCount = 0

    func _ready():
      _interface = XRServer.find_interface("OpenXR")
      if _interface and _interface.is_initialized():
        var _viewport : Viewport = get_viewport()
        _viewport.use_xr = true

      _richText = get_node("Sprite3D/SubViewport/RichTextLabel")
      var _rq = HTTPRequest.new()
      add_child(_rq)
      _rq.request_completed.connect(completed)
      _rq.request("http://127.0.0.1/sample.py")

    func completed(arg1, arg2, arg3, arg4:PackedByteArray):
      var _text:String = arg4.get_string_from_utf8()
      _richText.text = _text
    ```
1. 実行すると [**テキストのスクロール**](#220803) では日本語表示だった内容が英語に置き換わっていたら成功！

参考：[**テキストのスクロール**](#220803)  
実行環境：Windows 10、Godot 4.0 alpha 14、Meta Quest 43.0、Quest Link、Oculusアプリ、Apache 2.4.53、[**Python**](https://www.python.jp/) 3.10.5、[**beautifulsoup4**](https://pypi.org/project/beautifulsoup4/) 4.11.1、[**requests**](https://pypi.org/project/requests/) 2.28.1  
作成者：夢寐郎  
作成日：2022年08月31日  
[[TOP]](#TOP)


<a id="220504"></a>
# <b>追跡</b>
Unity版の「[001 追跡](https://bit.ly/3pUYB0f)」のGodot版  

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209010744.jpg)

```gdscript
# /root/Main(Main.gd)
extends Node3D

var _interface:XRInterface
var _rightHand:MeshInstance3D
var _piece0:Node3D
var _pieceArray = []
var _pieceNum = 50
var _isRTriggerHold = false

func _ready():
  _interface = XRServer.find_interface("OpenXR")
  if _interface and _interface.is_initialized():
    var _viewport : Viewport = get_viewport()
    _viewport.use_xr = true
  
  _rightHand = get_node("XROrigin3D/XRController3D_Right/Controller")
  _piece0 = get_node("piece")
  _pieceArray.append(_piece0)
  for i in range(1, _pieceNum):
    var _thePiece = _piece0.duplicate()
    add_child(_thePiece)
    _pieceArray.append(_thePiece)
  _piece0.hide()

func _process(delta):
  if !_isRTriggerHold: return
  _piece0.position = _rightHand.global_transform.origin
  for i in range(0, _pieceNum):
    var _thePiece  = _pieceArray[i]
    var _frontPiece = _pieceArray[i-1]
    var _disX = _frontPiece.position.x - _thePiece.position.x
    var _disY = _frontPiece.position.y - _thePiece.position.y
    var _disZ = _frontPiece.position.z - _thePiece.position.z
    _thePiece.look_at(_frontPiece.position)
    var _thePos = _thePiece.position
    _thePos.x += _disX / 8
    _thePos.y += _disY / 8
    _thePos.z += _disZ / 8
    _thePiece.position = _thePos

func _on_xr_controller_3d_right_button_pressed(name):
  if name == "trigger_click":
    _isRTriggerHold = true
  
func _on_xr_controller_3d_right_button_released(name):
  if name == "trigger_click":
    _isRTriggerHold = false
```

デモファイル：[pursuit.zip](https://github.com/mubirou/Godot/blob/main/zip/pursuit.zip)  
実行環境：Windows 10、Godot 4.0 alpha 15、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年05月24日  
更新日：2022年09月01日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220901"></a>
# <b>Igaguriゲーム</b>
[『Unityの教科書/北村愛実著』](https://amzn.to/3Bcx7cL)（Chapter 7 3Dゲームの作り方）の Godot VR 版  

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209051252.jpg)

### 👉 主なポイント  

#### ◆主な階層構造
Main（Node3D）  
　├ XROrigin3D  
　│　├ XRController3D_Left（XRNode3D）  
　│　│　└ **Controller**（左コントローラーの可視化）  
　│　└ XRController3D_Right（XRNode3D）  
　│　　　└ **Controller**（右コントローラーの可視化）  
　├ Target（MeshInstance3D＝的の可視化）  
　│　└ **StaticBody3d_Stick**（**StaticBody3D**）  
　│　　　└ CollisionShape3d  
　└ **Igaguri**（**RigidBody3D**）  
　　　└ CollisionShape3d  
　　　　　└ Body（MeshInstance3D＝イガグリの可視化）  

#### ◆主な役目
* 左右のコントローラー
  * 左トリガーを押す + 右トリガーを離す ＝ **投てき**
  * 左右のコントローラーの位置の差 ＝ **投てきの力**
* **StaticBody3d_Stick**＝**イガグリがくっつく領域**
* **Igaguri**（RigidBody3D）＝**イガグリ**（投げるもの）

### 👉 全スクリプト

```gdscript
# /root/Main(Main.gd)
extends Node3D # 決め打ち（3Dに必須）

var _interface:XRInterface # 決め打ち（VRに必須）
var _leftHand:Node3D # 左コントローラー（可視化）
var _rightHand:MeshInstance3D # 右コントローラー（可視化）
var _igaguri:RigidBody3D # イガグリ（親）
var _isLTriggerHold = false # 左の人差し指トリガーを押しているか
var _isRTriggerHold = false # 右の人差し指トリガーを押しているか

func _ready():
  # 決め打ち（VRに必須）
  _interface = XRServer.find_interface("OpenXR")
  if _interface and _interface.is_initialized():
    var _viewport : Viewport = get_viewport()
    _viewport.use_xr = true

  # 各ノードの取得
  _leftHand = get_node("XROrigin3D/XrController3d_Left/Controller")
  _rightHand = get_node("XROrigin3D/XRController3D_Right/Controller")
  _igaguri = get_node("Igaguri")
  
  # 衝突判定用（RigidBody3D.body_entered()と連動）
  _igaguri.contact_monitor = true 
  _igaguri.max_contacts_reported = 1

# 繰り返し実行（フレームレートに依存）
func _process(delta):
  if _isRTriggerHold: # 右の人差し指トリガーを押している場合
    # イガグリを右コントローラーの位置に配置
    _igaguri.position = _rightHand.global_transform.origin

# 右の人差し指トリガーを押し込んだ時の処理
func _on_xr_controller_3d_right_button_pressed(name):
  if name == "trigger_click":
    _isRTriggerHold = true

# 右の人差し指トリガーを離した時の処理
func _on_xr_controller_3d_right_button_released(name):
  if name == "trigger_click":
    _isRTriggerHold = false
    
    if _isLTriggerHold: # 投てきの際 左の人差し指トリガーを押しているか
      # 左右のコントローラーの位置の差を調べる
      var _leftHandPos = _leftHand.global_transform.origin
      var _rightHandPos = _rightHand.global_transform.origin
      var _disPos:Vector3 = _leftHandPos - _rightHandPos
      
      # 重力のリセット
      _igaguri.freeze = true
      _igaguri.freeze = false
      
      # 微調整
      var _powerX:float = _disPos.x * 3000
      var _powerY:float = _disPos.y * 2500
      var _powerZ:float = _disPos.z * 2500 
      
      # 投てき（イガグリに力を加える）
      _igaguri.apply_force(Vector3(_powerX, _powerY, _powerZ))

# 左の人差し指トリガーを押し込んだ時の処理
func _on_xr_controller_3d_left_button_pressed(name):
  if name == "trigger_click":
    _isLTriggerHold = true

# 左の人差し指トリガーを離した時の処理
func _on_xr_controller_3d_left_button_released(name):
  if name == "trigger_click":
    _isLTriggerHold = false

# イガグリが別のPhysicsBody3Dに衝突した時の処理
func _on_igaguri_body_entered(_body):
  # イガグリが的に命中したらくっつける
  if _body == $Target/StaticBody3d_Stick:
    _igaguri.freeze = true
```

デモファイル：[igaguri.zip](https://github.com/mubirou/Godot/blob/main/zip/igaguri.zip)  
デモファイル：[arrow.zip](https://github.com/mubirou/Godot/blob/main/zip/arrow.zip)（弓矢バージョン）  
実行環境：Windows 10、Godot 4.0 alpha 16、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年09月04日  
更新日：2022年09月11日 弓矢バージョン追加  
[[TOP]](#TOP)


<a id="220612"></a>
# <b>衝突判定</b>

### 👉 衝突オブジェクトの継承<a id="220612-1"></a>
**Node3D**  
　└ CollisionObject3D  
　　　├ [**PhysicsBody3D**](https://bit.ly/3RLyKnj)  
　　　│　├ ➊[**StaticBody3D**](https://bit.ly/3RFtVvM)  
　　　│　├ ➋[**CharacterBody3D**](https://bit.ly/3D0xCbh)  
　　　│　├ ➌[**RigidBody3D**](https://bit.ly/3x10AnC)  
　　　│　└ PhysicalBone3D  
　　　└ ➍[**Area3D**](https://bit.ly/3KP38Lj)  

***

### 👉 各衝突オブジェクトの実用例（階層構造）<a id="220612-2"></a>

**1. PhysicsBody3D の場合…**  

>[**PhysicsBody3D**](https://bit.ly/3RLyKnj)（➊➋➌）  
>　└ [**CollisionShape3D**](https://bit.ly/3cPefHm)（衝突判定する領域）  
>　　└ **MeshInstance3D**（可視化）  

**2. Area3D の場合…**  

>**MeshInstance3D**（可視化）  
>　└ ➍[**Area3D**](https://bit.ly/3KP38Lj)  
>　　└ [**CollisionShape3D**](https://bit.ly/3cPefHm)（衝突判定する領域）  

***

#### 以下の実験のおもな階層構造

Node3D  
　├ XROrigin  
　├ Floor（**StaticBody3D**）  
　│　└ **CollisionShape3d**（**WorldBoundaryShape3D** 型）  
　│　　　└ MeshInstance3d（PlaneMesh 型）  
　├ **Player**（[**PhysicsBody3D** or **Area3D**](#220612-2)）  
　└ **Enemy**（[**PhysicsBody3D** or **Area3D**](#220612-2)）  

***

### 👉 ➀指定位置に移動 x 衝突

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209092045.jpg)
📝 **RigidBody3D** x **PhysicsBody3D**（➊➋➌）の接触は避ける！  
📝 [**StaticBody3D**](#220612-1) → [**Area3D**](#220612-1) の衝突判定ができない（逆は可能＝要調査）  
📝 **_on_area_3d_area_entered()**（＝**Area3D**同士の衝突判定）や  **_on_area_3d_body_entered()**（＝**Area3D**と**PhysicsBody3D**の衝突判定）は[**イベントの接続**](#220703-1) を参照  

* [**Node3D.position = Vector3**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=position%20Node3D#class-node3d-property-position)  
* [**Node3D.set_position(Vector3)**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=position%20Node3D#class-node3d-property-position)  
* [**Node3D.global_position = Vector3**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=position%20Node3D#class-node3d-property-global-position)  
* [**Node3D.set_global_position(Vector3)**](https://docs.godotengine.org/en/latest/classes/class_node3d.html?highlight=position%20Node3D#class-node3d-property-global-position)  

```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _on_xr_controller_3d_button_pressed(_name):
  if _name == "trigger_click":
    #$Player.set_position($Enemy.position) 
    #$Player.set_position($Enemy.position + Vector3(0.1,0,0.1))
    #$Player.set_position($Player.position + Vector3(-0.1,0,0))
    $Player.set_position($Player.position + Vector3(-0.05,0,0))

# Player(＝Area3D)の[ノード]-[シグナル]で接続
func _on_area_3d_area_entered(_area):
  if _area.get_parent() == $Enemy:
    print("Area3D が Area3D に衝突")

# Player(＝Area3D)の[ノード]-[シグナル]で接続
func _on_area_3d_body_entered(_body):
  if _body == $Enemy: # or $Player
    print("Area3D と PhysicsBody3D が衝突")
```

***

### 👉 ➁ベクトルの値だけ移動 x 衝突判定

* [**PhysicsBody3D.move_and_collide(Vector3)**](https://docs.godotengine.org/en/latest/classes/class_physicsbody3d.html?highlight=PhysicsBody3D#class-physicsbody3d-method-move-and-collide)  
戻り値：[KinematicCollision3D](https://bit.ly/3Bh7hEq)＝衝突データ  

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209081436.jpg)
📝 [**PhysicsBody3D**](#220612-1) 同士が衝突すると重ならずに止まる   
📝 [**PhysicsBody3D**](#220612-1) → [**Area3D**](#220612-1) が "重ならずに通過した場合" は衝突判定できない  
📝 [**StaticBody3D**](#220612-1) → [**Area3D**](#220612-1) の衝突判定ができない（[衝突判定できる場合あり](#220802)＝要検証）  
📝 **_on_area_3d_body_entered()**（＝**Area3D**の衝突判定）は [**イベントの接続**](#220703-1) を参照  

```gdscript
# /root/Main(Main.gd)
extends Node3D
……

func _on_xr_controller_3d_button_pressed(_name):
  if _name == "trigger_click":
    ……
    var _kc:KinematicCollision3D
    #var _dis = $Enemy.position - $Player.position
    #_kc = $Player.move_and_collide(_dis)
    #_kc = $Player.move_and_collide(Vector3(-0.1,0,0))
    _kc = $Player.move_and_collide(Vector3(-0.05,0,0))
    #_kc = $Player.move_and_collide(Vector3(-1,0,0))
    if _kc != null:
      if _kc.get_collider() == $Enemy:
        print("Physics...が Physics..に衝突")

# Enemy(＝Area3D)の[ノード]-[シグナル]で接続
func _on_area_3d_body_entered(_body):
  if _body == $Player:
    print("Charactor...or Rigid...が Area3D に衝突")
```
***

### 👉 ➂物理エンジンによる移動 x 衝突判定<a id="220612-3"></a>

* [**RigidBody3D.apply_force(Vector3)**](https://bit.ly/3BmO9F0)

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209081343.jpg)
📝 [**反発係数**](#220805) の設定で「一部重なる」ことがなくなる  
📝 **apply_force()** の引数が大きいとすり抜ける場合有＝要調査  
📝 **_on_player_body_entered()**（＝**PhysicsBody3D**の衝突判定）や **_on_area_3d_body_entered()**（＝**Area3D**の衝突判定）は [**イベントの接続**](#220703-1) を参照  

```gdscript
# /root/Main(Main.gd)
extends Node3D
……
func _ready():
  ……
  # 衝突判定用（RigidBody3D.body_entered()と連動）
  $Player.contact_monitor = true 
  $Player.max_contacts_reported = 1

func _on_xr_controller_3d_button_pressed(_name):
  if _name == "trigger_click":
    $Player.apply_force(Vector3(-200, 0, 0))
    #$Player.apply_force(Vector3(-500, 0, 0))
    #$Player.apply_force(Vector3(-1500, 0, 0))

# Player(＝PhysicsBody3D)の[ノード]-[シグナル]で接続
func _on_player_body_entered(_body):
  if _body == $Enemy:
    print("Enemy(=PhysicsBody3D)と衝突")

# Enemy(＝Area3D)の[ノード]-[シグナル]で接続
func _on_area_3d_body_entered(_body):
  if _body == $Player:
    print("Enemy(=Area3D)と衝突")
```

参考：[HatenaBlog](https://ore2wakaru2.hatenablog.com/entry/2018/03/02/233000)  
参考：[衝突判定領域](#220801)  
実験用ファイル：[CollisionDetection.zip](https://github.com/mubirou/Godot/blob/main/zip/CollisionDetection.zip)  
実行環境：Windows 10、Godot 4.0 alpha 16、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月17日  
更新日：2022年09月11日 apply_force()を再調査  
[[TOP]](#TOP)  


<a id="220902"></a>
# <b>Pachinkoゲーム</b>
右人差し指トリガーでボールを打つパチンコのサンプル  
（トリガー量で打つ力を調整）  

![image](https://github.com/mubirou/Godot/blob/main/jpg/202209151551.jpg)

### 👉 主な階層構造  
参考：[各衝突オブジェクトの実用例（階層構造）](#220612-2)  

**1. ボール（Ball）**  

>Ball（[**RigidBody3D**](https://bit.ly/3RLyKnj)）  
>　└ [**CollisionShape3d**](https://bit.ly/3cPefHm)＝衝突判定する領域  
>　　└ SphereMesh（**MeshInstance3D** / 可視化）  

**2. ピン（Pin_0X）**  

>01（[**StaticBody3D**](https://bit.ly/3qFSGfW)）  
>　└ [**CollisionShape3d**](https://bit.ly/3cPefHm)＝衝突判定する領域  
>　　└ **MeshInstance3D**（CylinderMesh / 可視化）  

**3. 壁など**  

>Pachinko（**Node3D**）  
>　├ StaticBody3d_WorldBoundary（[**StaticBody3D**](https://bit.ly/3qFSGfW)）  
>　│　├ Top（💡[**WorldBoundaryShape3D**](https://bit.ly/3BFlrQ6)）＝衝突判定面  
>　│　├ Left（💡[**WorldBoundaryShape3D**](https://bit.ly/3BFlrQ6)）＝衝突判定面  
>　│　│  
>　├ MeshInstance3d_Body（**Node3D**）  
>　│　├ Back**（**MeshInstance3D** / 可視化）  
>　│　├ Top**（**MeshInstance3D** / 可視化）  
>　│　│  

* [**RigidBody3D.apply_force(Vector3)**](#220612-3) は薄い壁を通過してしまうため 💡[**WorldBoundaryShape3D**](https://bit.ly/3LhylqL)（無限平面）を利用  

**4. スタート地点（StartPoint）**  

>StartPoint（**MeshInstance3D**）  
>　└ Area3d_startpoint（[**Area3D**](https://bit.ly/3KP38Lj)）＝💡シグナル接続    
>　　└ [**CollisionShape3D**](https://bit.ly/3cPefHm)（衝突判定する領域） 

* [Area3D]-[ノード]-[シグナル]-[Area3D] の "body_entered(…" および "body_exited(…" →[右クリック]→[接続] から「**メソッドにシグナルを接続**」して次のメソッドを作成する  
（参照：[イベントの接続](#220703-1)）  
    ```gdscript
    _on_area_3d_startpoint_body_entered(_body) 
    _on_area_3d_startpoint_body_exited(_body)
    ```

**5. チェックポイント（Checkpoint_X）**  
Ball が通過すると得点になるエリア（[**Area3D**](https://bit.ly/3KP38Lj)）

>Checkpoint_1（**MeshInstance3D**）  
>　└ Area3d_checkpoint（[**Area3D**](https://bit.ly/3KP38Lj)）＝💡シグナル接続  
>　　└ [**CollisionShape3D**](https://bit.ly/3cPefHm)（衝突判定する領域）  

* スタート地点と同様「**メソッドにシグナルを接続**」する事に加え「**高度な設定**」から int 型の「**呼び出し引数を追加**」して次のメソッド作成する  
    ```gdscript
    _on_area_3d_checkpoint_body_entered(_body, _int)
    ```

### 👉 全スクリプト

```gdscript
# /root/Main(Main.gd)
extends Node3D

var _interface:XRInterface

var _ball:RigidBody3D
var _checkPoint:MeshInstance3D
var _checkPointNum:int
var _isFall = false
var _isPrepared = true
var _startPoint:MeshInstance3D
var _triggerValue:float = 0.0

func _ready():
  _interface = XRServer.find_interface("OpenXR")
  if _interface and _interface.is_initialized():
    var _viewport:Viewport = get_viewport()
    _viewport.use_xr = true
  
  _ball = $Pachinko/Ball
  _startPoint = $Pachinko/StartPoint

#=========================================================
# 右コントローラーのトリガー量のリセット
# [XRController3D_Right]-[ノード]-[button_pressed()]で接続
#=========================================================
func _on_xr_controller_3d_right_button_pressed(_name):
  if (_name == "trigger_click") or (_name == "trigger_touch"):
    _triggerValue = 0.0

#==============================================================
# 右コントローラーのトリガー量の取得
# [XRController3D_Right]-[ノード]-[input_value_changed()]で接続
#==============================================================
func _on_xr_controller_3d_right_input_value_changed(name, _value):
  if _triggerValue < _value:
    _triggerValue = _value # トリガー量の最大値

#==========================================================
# 右コントローラーのトリガーでボールを打つ
# [XRController3D_Right]-[ノード]-[button_released()]で接続
#==========================================================
func _on_xr_controller_3d_right_button_released(_name):  
  if _name == "trigger_click":
    if !_isPrepared: return # ボールを打つ準備ができているか？
    _ball.apply_force(Vector3(0, _triggerValue*89.6, 0)) # 微調整
    _isFall = false # ボールは落ちていない

#====================================================
# スタート地点（Area3D）領域にボールが入った場合の処理
# [Area3d_startpoint]-[ノード]-[body_entered()]で接続
#====================================================
func _on_area_3d_startpoint_body_entered(_body):
  if _body == _ball:
    _isPrepared = true # ボールを打つ準備完了
    _startPoint.get_mesh().material.set_albedo(Color(0.8,0,0,1))
    if _checkPoint != null: # まだ一度も打ってない場合を除く
      # Pachinko/Checkpoints/Checkpoint_X を白（不透明度20％）に変更
      _checkPoint.get_mesh().material.set_albedo(Color(1,1,1,0.2))
      # Pachinko/MeshInstance3d_Body/Glass/checkpoint_1X の非表示
      var _path = "Pachinko/MeshInstance3d_Body/Glass/checkpoint_"
      var _label_a = get_node(_path + str(_checkPointNum) + "a")
      var _label_b = get_node(_path + str(_checkPointNum) + "b")
      _label_a.visible = false
      _label_b.visible = false

#===================================================
# スタート地点（Area3D）領域からボールが出た場合の処理
# [Area3d_startpoint]-[ノード]-[body_exited()]で接続
#===================================================
func _on_area_3d_startpoint_body_exited(_body):
  if _body == _ball:
    _isPrepared = false # ボールを打つ準備はできてない
    _startPoint.get_mesh().material.set_albedo(Color(0.2,0.2,0.2,1))

#===================================================================
# チェックポイント（Area3D）の領域に入った（すり抜ける）場合の処理
# [Area3d_checkpoint]-[ノード]-[body_entered()]（"高度な設定"）で接続
#===================================================================
func _on_area_3d_checkpoint_body_entered(_body, _int):
  if _body != _ball: return # 今回はBallしか接触しないが…
  if _isFall: return # バウンドして再度接触した場合は無視
  _isFall = true # ボールが落ちた
  _checkPointNum = _int # 通過した場所（番号）

  # 通過した場所を赤（不透明度50％）で表示
  var _path = "Pachinko/Checkpoints/Checkpoint_" + str(_checkPointNum)
  _checkPoint = get_node(_path)
  _checkPoint.get_mesh().material.set_albedo(Color(1,0,0,0.5))
  
  # ガラス上の数字（1～7）の表示
  _path = "Pachinko/MeshInstance3d_Body/Glass/checkpoint_"
  var _label_a = get_node(_path + str(_checkPointNum) + "a")
  var _label_b = get_node(_path + str(_checkPointNum) + "b")
  _label_a.visible = true
  _label_b.visible = true
```

デモファイル：[pachinko.zip](https://github.com/mubirou/Godot/blob/main/zip/pachinko.zip)  
参考：[衝突判定](#220612)  
実行環境：Windows 10、Godot 4.0 alpha 16、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年09月15日  
[[TOP]](#TOP)


<a id="220903"></a>
# <b>ノーマルマッピング</b>

### この項目は書きかけです

参考：[GODOT DOCS(Normal Map)](https://bit.ly/3frSPky)  
デモファイル：[NomalMapping.zip](https://github.com/mubirou/Godot/blob/main/zip/NomalMapping.zip)  
実行環境：Windows 10、Godot 4.0 Beta 1、Meta Quest 43.0、Quest Link、Oculusアプリ   
作成者：夢寐郎  
作成日：2022年9月XX日  
[[TOP]](#TOP)


<a id="221018"></a>
# <b>三灯照明</b>

![image](https://github.com/mubirou/Godot/blob/main/jpg/202210181510.jpg)

デモファイル：[ThreePointLighting.zip](https://github.com/mubirou/Godot/blob/main/zip/ThreePointLighting.zip)  
実行環境：Windows 10、Godot 4.0 Beta 3、Meta Quest 46.0、Quest Link、Oculusアプリ   
作成者：夢寐郎  
作成日：2022年10月18日  
[[TOP]](#TOP)


<a id="220904"></a>
# <b>ドローン</b>

### この項目は書きかけです

📝 [ドローンの操作モード（Mode1 / Mode2）](https://viva-drone.com/drone-transmitter-mode1-mode2/#12)

実行環境：Windows 10、Godot 4.0 alpha 16、Meta Quest 43.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：202X年XX月XX日  
[[TOP]](#TOP)


<a id="XXXXX"></a>
# <b>XXXXX</b>

📝 **[正距円筒図法](https://en.wikipedia.org/wiki/Equirectangular_projection)（パノラマ）形式**  
[メルカトル図法](https://ja.wikipedia.org/wiki/%E3%83%A1%E3%83%AB%E3%82%AB%E3%83%88%E3%83%AB%E5%9B%B3%E6%B3%95)に似た映像を球面に表示する  

📝 **[キューブマップ](https://docs.unity3d.com/2017.2/Documentation/Manual/class-Cubemap.html)形式**  
立方体（6面）で構成 / [CAVE](https://ja.wikipedia.org/wiki/Cave_automatic_virtual_environment)、[CABIN](https://mine.place/page/9245bd60-4be4-4ac0-95f2-32ea8c7cc0f8) はこの簡易版  

1. [360°パノラマ動画](https://www.insta360.com/jp/explore)を用意

実行環境：Windows 10、Godot 4.0 alpha 14、Meta Quest 42.0、Quest Link、Oculusアプリ
作成者：夢寐郎  
作成日：202X年XX月XX日  
[[TOP]](#TOP)


<a id="231029"></a>
# <b>WebXR入門</b>

> [**WebXR**](https://developer.mozilla.org/ja/docs/Web/API/WebXR_Device_API/Fundamentals) について  
    ・[WebVR](https://ja.wikipedia.org/wiki/WebVR) を [AR](https://ja.wikipedia.org/wiki/%E6%8B%A1%E5%BC%B5%E7%8F%BE%E5%AE%9F) まで拡張させた API  
    ・[Unity + WebXR](https://tech.framesynthesis.co.jp/unity/webxr/)（フレームシンセス）  
    ・[Godot + WebXR](https://tech.framesynthesis.co.jp/godot/vr/)（フレームシンセス）  
    ・[Godot XRInterface](https://docs.godotengine.org/ja/4.x/classes/class_webxrinterface.html)（GODOT DOCS）  

### 👉 WebXRの再生テスト（Quest単体）
  1. Questを起動

 <a id="231029-MetaQuestBrowser"></a>

  1. **Meta Quest Browser**（[Chromium](https://ja.wikipedia.org/wiki/Chromium)ベース）を起動
  1. "WebXR Samples" で検索
  1. 任意のWebXRコンテンツ（.html）を起動
  1. [**ENTER VR**] を選択  
  （非対応の場合 [**VR NOT FOUND**] と表示される）
  1. 360°VRコンテンツが再生されたら成功！  
  （QuestのCPU･GPUで処理）

### 👉 WebXRの再生テスト（PCVR）
  1. QuestとWindowsPCをLinkケーブルで接続  
  （[純正](https://amzn.to/3MkzzDl)または[Anker製](https://amzn.to/40h9g6H)のCtoCケーブル）を強く推奨）
  1. [**∞**]-[クイック設定]-[**Quest Link**]-[起動]
  1. [デスクトップパネルを追加] から必要な画面を表示
  1. Chrome（79以降）を起動し "WebXR Samples" で検索
  1. 任意のWebXRコンテンツ（.html）を起動
  1. [**ENTER VR**] を選択  
  （非対応の場合 [**VR NOT FOUND**] と表示される）
  1. [バーチャルリアリティデバイスとデータの使用] を [許可] 
  1. 360°VRコンテンツが再生されたら成功！  
  （WindowsパソコンのCPU･GPUで処理＝PCVR）

### 👉 Godot + WebXR + 内蔵サーバ（PCVRのみ）  

<a id="231029-Template"></a>

  1. [Godot WebXR Template 3.0](https://godotengine.org/asset-library/asset/1128) から [Download]（2023-11-06版）
  2. 解凍し **project.godot** を起動

  <a id="231029-HeadInclude"></a>

  3. [プロジェクト]-[エクスポート]-[追加]-[**Web**]-[HTML]-[**Head Include**] に以下を記述し [閉じる]  
  ```
  <script src="https://cdn.jsdelivr.net/npm/webxr-polyfill@latest/build/webxr-polyfill.min.js"></script>
  <script>
  var polyfill = new WebXRPolyfill();
  </script>
  <script src="https://cdn.jsdelivr.net/npm/webxr-layers-polyfill@latest/build/webxr-layers-polyfill.min.js"></script>
  <script>
  var layersPolyfill = new WebXRLayersPolyfill();
  </script>
  ```
  * 注意  
  赤文字で「エクスポート テンプレートが予期されたパスに見つかりません」と表示されたら「エクスポートテンプレートの管理」を選択し「ダウンロードしてインストール」（赤文字の表示が無くなればオケ）  

  4. [Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/connect-link-with-quest-2/) でQuestとPCを接続
  5. [リモートデバッグ]-[ブラウザで実行]（下図）  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202310310620.jpg)  
  （Godot内蔵のWebサーバを利用します）  
  * 注意  
  「この接続ではプライバシーが保護されません」と表示されたら「詳細設定」を選び「localhostにアクセスする（安全ではありません）」を選択（空と地面と右下に [Enter VR] ボタンが表示されたらオケ）    
  6. Webブラウザ上で [**Enter VR**] を選択
  7. 360°VRコンテンツが再生されたら成功！  
  （空と地面とボックス＝両手のみ）  

### 👉 Godot + WebXR + [LAMP](https://github.com/mubirou/LAMP#TOP)

➀ [.htaccess](https://github.com/mubirou/LAMP#202302121037-htaccess2) の書換え  
```
# vi /var/www/html/.htaccess
Options -Indexes
Header set Cross-Origin-Embedder-Policy "require-corp" ←追加
Header set Cross-Origin-Opener-Policy "same-origin" ←追加

# systemctl reload httpd ←Apache設定のリロード
```
（注意：**WebXRはHTTPSサーバ上でのみ動作**）  
（注意：**この処理を行わないとエラーが発生し再生不可**）  
（注意：**このファイルをWebXRコンテンツと同階層に置く**）  
➁ [Godot WebXR Template](#231029-Template) の project.godot を起動  
➂ 上記と同じく [**Head Include**](#231029-HeadInclude) に各種 <script>...</script> を記述する（PCVRではなく**Meta Quest Browserから実行時に必要**）  
➂ [プロジェクト]-[エクスポート]-[追加]-[Web]-[プロジェクトのエクスポート]  
➃ 〇〇.html を [FileZilla](https://github.com/mubirou/LAMP#202302121037-FileZilla) で設定したローカルディレクトリに保存  
➄ FileZilla を使ってサーバにアップロード  
➅ [Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/connect-link-with-quest-2/) で Quest と PC を接続  
➆ [Quest]-[デスクトップ]-[モニター〇]-[Chrome] を起動  
➇ https://www.mubirou.com/.../〇〇.html 開く  
➈「...が次の許可を求めています」と表示されたら [許可する] を選択
➉ [**Enter VR**] を選択し360°VRコンテンツが再生されたら成功！  

* 注意  
    * WebXRコンテンツを複数開いている場合は砂時計が表示されたまま実行されません
    * [Meta Quest Browser](#231029-MetaQuestBrowser) を使ってルータ内のサーバにアクセスする場合は [Windows のモバイルスポットにアクセス](https://github.com/mubirou/LAMP#androidquest%E3%81%AE%E5%A0%B4%E5%90%88)する必要があります

参考：[snopekgames.com](https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4)  
参考：[フレームシンセシス（Godot4 VR開発メモ）](https://tech.framesynthesis.co.jp/godot/vr/)  
実行環境：Windows 11、Godot 4.2.1、Meta Quest 3（62.0.0）、Quest Link、Oculusアプリ、Google Chrome 122、CentOS Stream 8、Apache 2.4.37、FileZilla 3.66.0、Meta Quest Browser 28.4  
作成者：夢寐郎  
作成日：2023年10月31日  
更新日：2024年04月04日 内蔵サーバを使った実行時のアラートに対応  
[[TOP]](#TOP)


<a id="231107"></a>
# <b>WebXRテンプレート</b>

[Godot WebXR Template](https://godotengine.org/asset-library/asset/1128) を使わずに自作する方法  

1. Godot を起動し [新規] を選び、各種設定し [作成して編集] を選択  
    * プロジェクト名：webxr_template（任意）
    * プロジェクトパス：（任意）
    * レンダラー：互換性（Vulkanが有効か要調査）
1. [プロジェクト]-[プロジェクト設定]-[XR] の設定＆再起動
    * OpenXR：オフ（**注意：オンの場合[Meta Quest Browser](https://www.meta.com/ja-jp/experiences/1916519981771802/)で動作せず**）
    * シェーダー：✓オン
1. [3Dシーン] を作成（名前を"Node3D"→"Main"に変更）
1. [XROrigin3D]、[XRCamera3D]、[XRController3D] 2つを追加（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202311070520.jpg)  
1. 名前を"XRController3D"→"LeftController"に変更しインスペクタの [Tracker] を [left_hand] にする
1. 同様に"XRController3D2"→"RightController"に変更しインスペクタの [Tracker] を [right_hand] にする
1. [MeshInstance3D] を左右のコントローラーに追加（視覚化）し各種設定  
    * Mesh：BoxMesh
    * Size：x 0.1、y 0.1、z 0.1
1. [CanvasLayer] をルートに追加
1. [Button] を [CanvasLayer] に追加しインスペクタの [Text] に"Enter VR"と入力（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202311070541.jpg)  
1. [Main]（Node3D）に以下のスクリプト（Main.gd）をアタッチ  
    ```
    extends Node3D
    
    var webxr_interface
    
    func _ready() -> void:
      $CanvasLayer.visible = false
      $CanvasLayer/Button.pressed.connect(self._on_button_pressed)
    
      webxr_interface = XRServer.find_interface("WebXR")
      if webxr_interface:
        # WebXR uses a lot of asynchronous callbacks, so we connect to various
        # signals in order to receive them.
        webxr_interface.session_supported.connect(self._webxr_session_supported)
        webxr_interface.session_started.connect(self._webxr_session_started)
        webxr_interface.session_ended.connect(self._webxr_session_ended)
        webxr_interface.session_failed.connect(self._webxr_session_failed)
    
        webxr_interface.select.connect(self._webxr_on_select)
        webxr_interface.selectstart.connect(self._webxr_on_select_start)
        webxr_interface.selectend.connect(self._webxr_on_select_end)
    
        webxr_interface.squeeze.connect(self._webxr_on_squeeze)
        webxr_interface.squeezestart.connect(self._webxr_on_squeeze_start)
        webxr_interface.squeezeend.connect(self._webxr_on_squeeze_end)
    
        # This returns immediately - our _webxr_session_supported() method
        # (which we connected to the "session_supported" signal above) will
        # be called sometime later to let us know if it's supported or not.
        webxr_interface.is_session_supported("immersive-vr")
    
      $XROrigin3D/LeftController.button_pressed.connect(self._on_left_controller_button_pressed)
      $XROrigin3D/LeftController.button_released.connect(self._on_left_controller_button_released)
    
    func _webxr_session_supported(session_mode: String, supported: bool) -> void:
      if session_mode == 'immersive-vr':
        if supported:
          $CanvasLayer.visible = true
        else:
          OS.alert("Your browser doesn't support VR")
    
    func _on_button_pressed() -> void:
      # We want an immersive VR session, as opposed to AR ('immersive-ar') or a
      # simple 3DoF viewer ('viewer').
      webxr_interface.session_mode = 'immersive-vr'
      # 'bounded-floor' is room scale, 'local-floor' is a standing or sitting
      # experience (it puts you 1.6m above the ground if you have 3DoF headset),
      # whereas as 'local' puts you down at the ARVROrigin.
      # This list means it'll first try to request 'bounded-floor', then
      # fallback on 'local-floor' and ultimately 'local', if nothing else is
      # supported.
      webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
      # In order to use 'local-floor' or 'bounded-floor' we must also
      # mark the features as required or optional.
      webxr_interface.required_features = 'local-floor'
      webxr_interface.optional_features = 'bounded-floor'
    
      # This will return false if we're unable to even request the session,
      # however, it can still fail asynchronously later in the process, so we
      # only know if it's really succeeded or failed when our
      # _webxr_session_started() or _webxr_session_failed() methods are called.
      if not webxr_interface.initialize():
        OS.alert("Failed to initialize WebXR")
        return
    
    func _webxr_session_started() -> void:
      $CanvasLayer.visible = false
      # This tells Godot to start rendering to the headset.
      get_viewport().use_xr = true
      # This will be the reference space type you ultimately got, out of the
      # types that you requested above. This is useful if you want the game to
      # work a little differently in 'bounded-floor' versus 'local-floor'.
      print ("Reference space type: " + webxr_interface.reference_space_type)
    
    func _webxr_session_ended() -> void:
      $CanvasLayer.visible = true
      # If the user exits immersive mode, then we tell Godot to render to the web
      # page again.
      get_viewport().use_xr = false
    
    func _webxr_session_failed(message: String) -> void:
      OS.alert("Failed to initialize: " + message)
    
    func _on_left_controller_button_pressed(button: String) -> void:
      print ("Button pressed: " + button)
    
    func _on_left_controller_button_released(button: String) -> void:
      print ("Button release: " + button)
    
    func _process(_delta: float) -> void:
      var thumbstick_vector: Vector2 = $XROrigin3D/LeftController.get_vector2("thumbstick")
      if thumbstick_vector != Vector2.ZERO:
        print ("Left thumbstick position: " + str(thumbstick_vector))
    
    func _webxr_on_select(input_source_id: int) -> void:
      print("Select: " + str(input_source_id))
    
      var tracker: XRPositionalTracker = webxr_interface.get_input_source_tracker(input_source_id)
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
1. [シーン]-[シーンを保存] で main.tscn を指定し [保存]
1. [プロジェクト]-[エクスポート]-[追加]-[Web]-[HTML]-[Head Include] に以下を記述し [閉じる]  
    ```
    <script src="https://cdn.jsdelivr.net/npm/webxr-polyfill@latest/build/webxr-polyfill.min.js"></script>
    <script>
    var polyfill = new WebXRPolyfill();
    </script>
    <script src="https://cdn.jsdelivr.net/npm/webxr-layers-polyfill@latest/build/webxr-layers-polyfill.min.js"></script>
    <script>
    var layersPolyfill = new WebXRLayersPolyfill();
    </script>
    ```
1. 引続き各種設定して [プロジェクトのエクスポート]（index.html）をする（下図）
    * 名前：WebXR（任意）
    * エクスポート先のパス：[FileZilla](https://github.com/mubirou/LAMP#202302121037-FileZilla) で設定したローカルディレクトリ
    * VRAMテクスチャ圧縮-モバイル向け：✓オン  
      （赤い文字がメッセージが表示されたら [Fix Import] を選択）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202311070606.jpg)  
1. [エディター]-[エディター設定]-[エクスポート]-[Web] で以下を確認  
    * Use TLS：✓オン
1. WebサーバにアップロードしてからブラウザでURLを指定して実行するか、画面左上にある [リモートデバッグ]-[ブラウザで実行] で再生
1. [Enter VR] を選択し360°VRコンテンツが再生されたら成功！  

* 注意  
    * WebXRコンテンツを複数開いている場合は砂時計が表示されたまま実行されません
    * [Meta Quest Browser](#231029-MetaQuestBrowser)を使ってルータ内のサーバにアクセスする場合は[Windowsのモバイルスポットにアクセス](https://github.com/mubirou/LAMP#androidquest%E3%81%AE%E5%A0%B4%E5%90%88)する必要があります


参考ファイル：[webxr_template.zip](https://github.com/mubirou/Godot/blob/main/zip/webxr_template.zip)  
参考：[Snopek Games](https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4)（How to make a VR game for WebXR）  
実行環境：Windows 11、Godot 4.1.3
、Meta Quest 3（59.0）、Quest Link、Oculusアプリ、Chrome 118  
作成者：夢寐郎  
作成日：2023年11月07日  
[[TOP]](#TOP)  


<a id="231110"></a>
# <b>WebXRManager</b>

[WebXRInterface](https://docs.godotengine.org/ja/4.x/classes/class_webxrinterface.html#webxrinterface) の初期化はかなり複雑でメインクラス（Main.gd）を冗長にしがちです。そこでオブジェクト指向を利用してシンプルな使い勝手を目指しました。

### 👉 [WebXRManager](https://github.com/mubirou/Godot-Study-Notes/blob/main/gd/WebXRManager.gd) クラス（自作）

```gdscript
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
```

### 👉 使い方

```gdscript
# res://Main.gd
extends Node3D

const WebXRManager = preload("res://WebXRManager.gd")
var webxr_manager: WebXRManager

func _ready() -> void:
  webxr_manager = WebXRManager.new(self)
```

参考ファイル：[webxr_manager.zip](https://github.com/mubirou/Godot/blob/main/zip/webxr_manager.zip)  
実行環境：Windows 11、Godot 4.2.1、Meta Quest 3（62.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2023年11月10日  
更新日：2024年03月25日 Godot 4.2.1 で動作確認  
[[TOP]](#TOP)


<a id="20231111"></a>
# <b>OpenXR→WebXR</b>

* Godotで作成したOpenXRコンテンツをWebXR用に変換する方法です。  

* 実行環境は次の２種類。  
1. **Quest スタンドアローン**（QuestのCPU･GPUによる処理）  
[Quest 3](https://www.meta.com/jp/quest/quest-3/) 単体 + [Meta Quest Browser](https://www.meta.com/ja-jp/experiences/1916519981771802/) + [LAMP](https://github.com/mubirou/LAMP#TOP) + WebXR  
1. **PCVR**（Windows PCのCPU･GPUによる処理）  
Windows（[RTX2070](https://www.nvidia.com/ja-jp/geforce/20-series/)）+ Google Chrome + ([LAMP](https://github.com/mubirou/LAMP#TOP)) + WebXR + PCVR（[Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/)）+ [Quest 3](https://www.meta.com/jp/quest/quest-3/)  

* OpenXRコンテンツ用のプロジェクトファイル（[project.godot](https://docs.godotengine.org/ja/4.x/tutorials/best_practices/project_organization.html)）を開き以下の変更を行います。

### 👉 OpenXR･シェーダー
  * [プロジェクト]-[プロジェクト設定]-[一般]-[**XR**] で各種設定
    * [**OpenXR**]-[有効]：**オフ**（**注意：オンだと[Meta Quest Browser](https://www.meta.com/ja-jp/experiences/1916519981771802/)で動作せず**）
    * [**シェーダー**]-[有効]：オン

### 👉 Renderer
  * [プロジェクト]-[プロジェクト設定]-[一般]-[レンダリング]-[**Renderer**] で各種設定  
    * Rendering Method：forward_plus（初期値）
    * Rendering Method.mobile：mobile（初期値）
    * Rendering Method.web：**forward_plus**（初期値 gl_compatibility）  
    （PCVR環境でのパフォーマンス向上を目指すため）  

### 👉 CanvasLayer + Button
  1. [**CanvasLayer**] をルートに追加
  1. [**Button**] を [CanvasLayer] に追加しインスペクタの [Text] に"**Enter VR**"と入力（下図）  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202311111944.jpg)  

### 👉 [WebXRManager](#231110)（自作）のインストール
  1. [WebXRManager.gd](https://github.com/mubirou/Godot-Study-Notes/blob/main/gd/WebXRManager.gd) を main.gd と同じ階層にダウンロードする
  1. Godot の [ファイルシステム] に WebXRManager.gd に現れたことを確認

### 👉 メインクラス（main.gd）
  1. res://main.gd を開き以下の部分を**削除**  
      ```gdscript
      # res://main.gd
      extends Node3D

      var interface: XRInterface # 削除

      func _ready() -> void
        interface = XRServer.find_interface("OpenXR") # 削除
        if interface and interface.is_initialized(): # 削除
          get_viewport().use_xr = true # 削除
      ```
  1. 引続き以下の部分を**追加**  
      ```gdscript
      # res://Main.gd
      extends Node3D

      const WebXRManager = preload("res://WebXRManager.gd") # 追加
      var webxr_manager: WebXRManager # 追加

      func _ready() -> void:
        webxr_manager = WebXRManager.new(self) # 追加
      ```

### 👉 TLS (Transport Layer Security)
  > TLS の目的  
  ・通信の暗号化と保護  
  ・相手の認証とデータの盗聴･改ざん防止  
  ・Webサイトやサービスで安全な通信を実現  
  * [エディター]-[エディター設定]-[一般]-[エクスポート]-[Web] を開き各種設定
    * Use SSL：オフ（最新の実行環境では不要）
    * **Use TLS**：**✓オン**

### 👉 Webエクスポート
  * [プロジェクト]-[エクスポート]-[追加]-[Web] を選び各種設定（下図）
    * エクスポート先のパス：[FileZilla](https://github.com/mubirou/LAMP#202302121037-FileZilla) で設定したローカルディレクトリ
    * **VRAMテクスチャ圧縮**：
      * デスクトップ向け：✓オン（初期値）
      * **モバイル向け**：**✓オン**  
      （[プロジェクト]-[プロジェクト設定]-[レンダリング]-[テクスチャ](Advanced Settings オン)-[VRAM圧縮]-[**Import ETC2 ASTC**] をオンにする必要あり）  
    * [HTML]-[**Head Include**]  
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
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202311070606.jpg)  

実行環境：Windows 11、Godot 4.1.3、Meta Quest 3（59.0）、Quest Link、Oculusアプリ、Google Chrome 119  
作成者：夢寐郎  
作成日：2023年11月12日  
[[TOP]](#TOP)


<a id="231112"></a>
# <b>WebXR実行方法</b>

Godotで作成したWebXRプロジェクト/WebXRコンテンツの実行方法。  

### 👉 Godot の HTTP サーバ機能を利用する
1. [OpenXR→WebXR](#20231111) を参考にWebXRプロジェクトを作成
1. [Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/connect-link-with-quest-2/) でQuestとPCを接続
1. プロジェクトファイル（[project.godot](https://docs.godotengine.org/ja/4.x/tutorials/best_practices/project_organization.html)）を開く
1. [リモートデバッグ]-[ブラウザで実行]（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202310310620.jpg)  
<a id="231112-alert"></a>
1. 「この接続ではプライバシーが保護されません」と表示されたら [詳細設定]-[localhost にアクセスする（安全ではありません）] を選択（**注意**：文字が小さいので判り難い）
1. [Enter VR] を選択
1. 「localhost:8060 が次の許可を求めています（バーチャルリアリティデバイスとデータの使用）」と表示されたら [許可する] を選択
1. 360°VR コンテンツが再生されたら成功！  
**注意**：WebXR コンテンツを複数開いている場合は砂時計が表示されたまま実行されません。  

### 👉 Webサーバにコンテンツを公開する
1. Webサーバにコンテンツをアップロードする
    1. [WebXRテンプレート](#231107) や [OpenXR→WebXR](#20231111) 参考にWebXRプロジェクトを作成
    1. [プロジェクト]-[エクスポート]-[Web]-[プロジェクトのエクスポート]
    1. [FileZilla](https://github.com/mubirou/LAMP#202302121037-FileZilla) を使ってサーバにアップロード
1. Web ブラウザで URL を指定する
    * **PCVR で実行する場合**
        1. [Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/connect-link-with-quest-2/)でQuestとPCを接続
        1. Quest内に映し出されたPC画面でWebブラウザを起動する
        1. WebXRコンテンツが置かれたURL（https://〇〇〇/index.html）を指定する   
    * **Quest スタンドアローンで実行の場合**  
        1. Questを起動
        1. [Meta Quest Browser](https://www.meta.com/ja-jp/experiences/1916519981771802/) を起動
        1. WebXRコンテンツが置かれたURL（https://〇〇〇/index.html）を指定する   
1. [ENTER VR] を選択（[アラート](#231112-alert)等が表示されたらその都度対応）  

**注意**：PC（PCVR用）や Quest が Web サーバと同じルータ内にある場合 [ルーター内からドメイン名でアクセスする方法](https://github.com/mubirou/LAMP#202303262200-router) の設定が必要になります  

実行環境：Windows 11、Godot 4.1.3、Meta Quest 3（59.0）、Quest Link、Oculusアプリ、Google Chrome 119  
作成者：夢寐郎  
作成日：2023年11月12日  
[[TOP]](#TOP)


<a id="20231114"></a>
# <b>フレームレート表示</b>

1. [XRCamera3D] に [Label3D] を追加（名前を"FrameRate"に変更）
1. [FrameRate(Label3d)]-[インペクター] を各種設定
  * Text：888 fps
  * Transform
    * Position：x 0m、y 0.15m、z -1m
    * Scale：x 0.25、y 0.25、z 1
1. [FrameRate(Label3d)] にスクリプトをアタッチし以下の通り記述
    ```gdscript
    # FrameRate.gd
    extends Label3D

    func _ready():
        await loop()

    func loop():
        await get_tree().create_timer(0.5).timeout # 0.5秒毎に実行
        text = str(Engine.get_frames_per_second()) + " fps"
        await loop()
    ```
![image](https://github.com/mubirou/Godot/blob/main/jpg/202311140609.jpg)  

参考ファイル：[FrameRate.zip（WebXR対応）](https://github.com/mubirou/Godot/blob/main/zip/FrameRate.zip)  
実行環境：Windows 11、Godot 4.1.3、Meta Quest 3（59.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2023年11月14日  
[[TOP]](#TOP)


<a id="マルチモニター環境"></a>
# <b>マルチモニター環境</b>

Quest 3 + Quest Link + ノートPC を使ってクアッドモニター環境を構築する  

1. 事前準備  
    1. [**Quest Link（Oculus Link）の準備**](https://github.com/mubirou/Unity3D/tree/master/study-notes#oculus-link%E3%81%AE%E6%BA%96%E5%82%99)

    1. ダミープラグをパソコンに接続（全て1080x1920表示）  
        * DP1080P60（[Mini DP用](https://amzn.to/3RqWD6m)）
        * 28E850（[HDMI用](https://amzn.to/3T7EZWy))
        * Typec monitor（[Type-C用](https://amzn.to/3R8xXOt))

    1. [Windows]-[設定]-[システム]-[**ディスプレイ**] で [内部ディスプレイ] 以外に [**これをメインディスプレイにする**] を設定（要調査：ノートパソコンの内部ディスプレイにはタスクバーが表示されない場合がある）

    1. [Windows]-[設定]-[システム]-[**ディスプレイ**]-[関連設定]-[**グラフィック**]-[アプリのカスタムオプション]-[**アプリを追加する**]-[参照] から以下を追加（要調査）し [オプション]-[**高パフォーマンス**] を選択する（Windowsの再起動が必要）
        * **OculusClient.exe**："C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
        * **OculusDash.exe**："C:\Program Files\Oculus\Support\oculus-dash\dash\bin\OculusDash.exe"
        * **OVRRedir.exe**："C:\Program Files\Oculus\Support\oculus-runtime\OVRRedir.exe"
        * **OVRServiceLauncher.exe**："C:\Program Files\Oculus\Support\oculus-runtime\OVRServiceLauncher.exe"
        * **OVRServer_x64.exe**："C:\Program Files\Oculus\Support\oculus-runtime\OVRServer_x64.exe"

1. ノートパソコンの電源を入れる（状況に応じて以下の処理を行う）  
    * 真っ黒な画面上にカーソルが動くのを確認
    * [Enter] キーを押してパスワードを入力（ブラインドタッチ）
    * ノートパソコン画面にアイコンが現れるのを確認

1. [Linkケーブル](https://bit.ly/47EAxD0) で Quest とパソコンを接続し Quest を起動
1. [Quest Linkを有効にする] と表示されたら [オンにする]
1. [デスクトップ]-[モニター1]～[モニター4] を選択し位置調整（わかり難い）  
    * [右中指トリガー] を押しながら下に移動してから位置を調整
    * 4つのモニターを並べた後、顔を移動 + [∞] で位置調整

![image](https://github.com/mubirou/Godot/blob/main/jpg/202312021857.jpg)   
（画面はトリプルモニター）  

実行環境：Windows 11、Godot 4.1.3、Meta Quest 3（59.0）、Quest Link、Oculusアプリ、NVIDIA RTX2070  
作成者：夢寐郎  
作成日：2023年12月02日  
更新日：2023年12月04日 Type-C ダミープラグ追加  
[[TOP]](#TOP)


### この項目は書きかけです  

<a id="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```gdscript
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Windows 11、Godot 4.1.3、Meta Quest 3（59.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)

© 2021-2024 夢寐郎

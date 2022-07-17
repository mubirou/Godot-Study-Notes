# Godot Study Notes<a id="TOP"></a>

### <b>index（Godot 3.4 対応）</b>

[GDScript基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#gdscript-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [C#基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/C%23Godot/C%23Godot_reference.md#c-with-godot-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [Androidビルド](#Androidビルド) | [カメラ](#カメラ) | [ノードの移動](#ノードの移動) | [マウス座標](#マウス座標) | [画面サイズ](#画面サイズ) | [背景色](#背景色) | [Rouletteゲーム](#Rouletteゲーム) | [SwipeCarゲーム](#SwipeCarゲーム) | [~~Quest + Oculus Link~~](#220501) | [Questコントローラー表示](#220502) | [is_button_pressed()](#220503) | [追跡](#220504) | [Questビルド](#220505) | [オブジェクト色](#220506) | [~~RayCastボタン~~](#220601) | [動画再生](#220602) | [Oculus Air Link](#220604) | [VR空間に2Dシーンを表示](#220605) | [~~360°パノラマ~~](#220606) | [鏡面仕上げボール](#220607) | [ジョイスティック角度](#220608) | [Blender to Godot](#220609) | [物理エンジン RigidBodyとStaticBody](#220610) | [移動の基本3種](#220611) | [衝突判定](#220612) | [Picture-in-Picture](#220613) | [BGM･SE](#220614) | [Blender(階層構造) to Godot](#220615) | [回転軸の変更](#220616) | [アニメーション遷移](#220617) | [アニメーション速度変更](#220618) | [外部テキストの読み書き](#220620) | [JSONの解析](#220621) | [PHP+SQLite](#220622) | [PHP+MySQL](#220623) | [Python+SQLite](#220624) | [Python+MySQL](#220625) | [青空](#220626) |
***

### **index（Godot 4.0 対応）**

[外部スクリプトエディタ](#220630) | [プリミティブ](#220701) | [VR入門](#220702) | [VRコントローラーの入力イベント](#220703) | [レーザーポインター（RayCast）](#220704) | [床タイル](#220705) | [テレポート移動](#220706) | [RayCastからの除外](#220707) | [デジタル時計](#220708) | [パーティクル](#220709) | [360°パノラマ](#220710) | [鏡面仕上げボール](#220711) |
***

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


<a id="プリミティブ"></a>
# <b>プリミティブ</b>

1. [シーン]タブ-[+]で"**MeshInstance**"を検索し[作成]
1. [インスペクタ]-[Mesh]を以下の中から選択
  * ArrayMesh（？）
  * CapsuleMesh（カプセル＝物理挙動テスト）
  * CubeMesh（立方体＝壁･柱･箱･階段）
  * CylinderMesh（円柱）
  * PlaneMesh（平面）
  * PointMesh（点？）
  * PrismMesh（プリズム＝三角柱）
  * QuadMesh（画像表示･動画再生用）
  * SphereMesh（球＝星･弾丸）

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年02月28日  
[[TOP]](#TOP)


<a id="カメラ"></a>
# <b>カメラ</b>

1. [シーン]タブ-[+]で"**Camera**"を検索し[作成]
1. [インスペクタ]で各種設定  

参考：[Hatena Blog](https://ore2wakaru2.hatenablog.com/entry/2018/03/04/232635)  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年02月28日  
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

参考：[移動の基本3種](#220611)  
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


<a id="背景色"></a>
# <b>背景色</b>

* [プロジェクト]-[プロジェクト設定…]-[**Rendering**]-[**Environment**]で以下の通りに設定
  * **Default Clear Color** : ffcc00（初期値:4d4d4d）

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
1. [プリミティブ](#プリミティブ) など何かオブジェクトを配置（任意）し以下のような階層にする    
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


<a id="220504"></a>
# <b>追跡</b>

Unity版の「[001 追跡](https://github.com/mubirou/Unity3D/blob/master/oqtouch/sample/README.md#001-%E8%BF%BD%E8%B7%A1)」のGodot版  

1. RightHandControl

```gdscript
# controller.gd
extends ARVRController

signal activated
signal deactivated
signal LTriggerDown
signal RTriggerDown
signal RTriggerHold
signal RTriggerUp

var _isLTriggerDown = false
var _isRTriggerDown = false

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
	
	# Trigger
	if is_button_pressed(JOY_VR_TRIGGER): # 15
		if get_controller_id() == 1:
			if !_isLTriggerDown:
				print("左人差し指トリガーを押した")
				_isLTriggerDown = true
			#else: print("左人差し指トリガーを押し続けている") # 省略すると（downのみ）	
		if get_controller_id() == 2:
			if !_isRTriggerDown:
				emit_signal("RTriggerDown")
				#print("右人差し指トリガーを押した")
				_isRTriggerDown = true
			else:
				emit_signal("RTriggerHold")
				#print("右人差し指トリガーを押し続けている") # 省略すると（downのみ）
	else:
		if _isLTriggerDown:
			_isLTriggerDown = false
			print("左人差し指トリガーを離した")
		if _isRTriggerDown:
			_isRTriggerDown = false
			emit_signal("RTriggerUp")
			#print("右人差し指トリガーを離した")
```

1. Main

```gdscript
extends Spatial

var _rightHand
var _isRTriggerHold = false
var _piece0
var _pieceArray = []
var _pieceNum = 50

func _ready():
	_rightHand = get_node("/root/Main/FPController/RightHandController")
	_rightHand.connect("RTriggerDown", self, "RTriggerDownHandler")
	_rightHand.connect("RTriggerUp", self, "RTriggerUpHandler")
	_piece0 = get_node("piece")
	_pieceArray.append(_piece0)
	for i in range(1, _pieceNum):
		var _thePiece = _piece0.duplicate()
		add_child(_thePiece)
		_pieceArray.append(_thePiece)
	_piece0.hide()

func _process(delta):
	if !_isRTriggerHold: return
	_piece0.translation = _rightHand.translation
	for i in range(0, _pieceNum):
		var _thePiece  = _pieceArray[i]
		var _frontPiece = _pieceArray[i-1]
		var _disX = _frontPiece.translation.x - _thePiece.translation.x
		var _disY = _frontPiece.translation.y - _thePiece.translation.y
		var _disZ = _frontPiece.translation.z - _thePiece.translation.z
		_thePiece.look_at(_frontPiece.translation, Vector3.UP)
		var _thePos = _thePiece.translation
		_thePos.x += _disX / 8
		_thePos.y += _disY / 8
		_thePos.z += _disZ / 8
		_thePiece.translation = _thePos

func RTriggerDownHandler():
	_isRTriggerHold = true
	
func RTriggerUpHandler():
	_isRTriggerHold = false
```

実行環境：Windows 10、Godot 3.4.4  
作成者：夢寐郎  
作成日：2022年05月24日  
[[TOP]](#TOP)


<a id="220505"></a>
# <b>Questビルド</b>

自作 .apk ファイルを [SideQuest](https://sidequestvr.com/) を使って Meta Quest にインストールする方法  

📖 [SideQuest](https://sidequestvr.com/) とは…  
Meta の公式ストア以外のアプリを Meta Quest にインストール･削除等の操作を簡単に行える Windows 用ツール  

1. [Androidビルド](#Androidビルド)および、[FRAME SYNTHESIS](https://framesynthesis.jp/tech/godot/vr/)の「PC･Questで動作するVRアプリを作るには」を参考に **.apk** ファイルを作成する（特に以下の点に注意）  
    * [プロジェクト]-[プロジェクト設定]-[一般]-[Display]-[Window]-[Vsync]-[**Use Vsync**] の ✓ を外す  
    * [プロジェクト]-[プロジェクト設定]-[一般]-[Rendering]-[Vram Compression]-[**Import Etc**] を ✓ する
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
[[TOP]](#TOP)


<a id="220506"></a>
# <b>オブジェクト色</b>

* オブジェクトの色付け  
  1. [シーン]-[＋]-[MeshInstance] で任意の[プリミティブ](#プリミティブ)を作成
  1. Mesh の [インスペクター]-[MeshInstance]-[**Material**]-[新規SpatialMaterial]-[編集]-[**Albedo**]-[Color] で #XXXXXX を指定

* 環境色を設定（初期設定はやや青系）  
  ※ オブジェクトの色は環境色に依存する  
  1. **res://default_env.tres** の [インスペクター]-[Background]-[Sky]-[Procedura]-[編集] を選択
  1. 次の通りに変更（例）  
      * **Top Color**：a5d6f1 → ffffff（太陽光）
      * **Horizon Color**：d6eafa → cccccc（地平線）

参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/tutorials/3d/environment_and_post_processing.html#environment-options)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest（初代）v.40  
作成者：夢寐郎  
作成日：2022年05月28日  
[[TOP]](#TOP)


<a id="220601"></a>
# <b>RayCastボタン</b>

レーザーポインタの実装メモ（手作業配置編）。  
右人差し指トリガーで選択（≒Click ）すると選んだオブジェクトの名前が返る。  

📝 選択するオブジェクトの用意  
  1. [立方体](#プリミティブ)などを用意
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


<a id="220602"></a>
# <b>動画再生</b>

📝 動画ファイルの用意（参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_videoplayer.html?highlight=Video#videoplayer)）  

1. [Convertio](https://convertio.co/ja/) などで [.webm](https://www.webmproject.org/) または [.ogv](https://www.theora.org/) に変換
1. project.godot と同階層に上記ファイルを置く  

📝 [Sprite3D](https://docs.godotengine.org/ja/stable/classes/class_sprite3d.html#sprite3d) の用意  

1. [シーン]-[＋]-[**Sprite3D**] を選択
1. Sprite3D] を選択し [インスペクター] で各種設定  
    * **Flip V**：**✓**（上下反転）
    * **Translation**：x 0、**y 1**、**z -3**（スクリーン表示位置）
    * **Scale**：**0.25**、**0.25**、1（ピクセルアスペクト比･表示サイズ）

📝 [Viewport](https://docs.godotengine.org/ja/stable/classes/class_viewport.html?highlight=Viewport#viewport) の用意  

1. Sprite3D を選択し [子ノードを追加]-[**Viewport**] を選択
1. Sprite3D を選択し [インスペクター] の [**Texture**]-[新規 **ViewportTexture**] で上記で作成した **Viewport** を選択
1. Viewport を選択し [インスペクター] を設定  
    * Size：**x 1920**、**y 1080**（動画の元サイズ）  

📝 [VideoPlayer](https://docs.godotengine.org/ja/stable/classes/class_videoplayer.html?highlight=Video#videoplayer) の用意

1. Viewport を選択し [子ノードを追加]-[**VideoPlayer**] を選択
1. VideoPlayer に上記の **.webm** ファイル等をドラッグ＆ドロップ
1. VideoPlayer を選択し [インスペクター] を設定
    * **Autoplay**：**✓**
    * **Margin**：**Right 1920**、**Buttom 1080**（動画の元サイズ）  

（階層は以下の通り）  
　  ├ **Sprite3D**  
　  │   └ **Viewport**  
　  │　　 └ **VideoPlayer**  

参考：[Picture-in-Picture](#220613)  
実行環境：Windows 10、Godot 3.4.4 + OpenXR Plugin 1.2  
Meta Quest 40.0、Oculus Link（Oculusアプリ）  
作成者：夢寐郎  
作成日：2022年06月04日  
[[TOP]](#TOP)


<a id="220604"></a>
# <b>Oculus Air Link</b>

📝 **Oculus アプリ**の用意  
  1. Windows 上で [oculus.com/setup](https://www.oculus.com/setup/) から [OCULUS QUEST]（初代の場合）の [ソフトウェアをダウンロード] を選択  
    【注意】"**Quest 2**"の場合は [QUEST 2] の [QUEST2 PCアプリをダウンロード] を選択します
  1. ダウンロードした OculusSetup.exe をダブルクリックしインストール  
    ～しばらく時間がかかります☕～

📝 **Oculus Air Link** の有効化  
  * Quest 上の [アプリ]-[Settings]-[試験中]-[**Air Link**] をオン
  * Oculus アプリ上での設定は現在は不要

📝 **Oculus Air Link** の起動  
  1. Quest コントローラーの [MENU] ボタンを押しメニューを表示し、時間が表示されている部分をトリガーで選択
  1. [**Oculus Air Link**] ボタンを選択
  1. [**利用可能なPC**] を選択し [**ペアリング**]
  1. Quest 本体に表示される7桁の**ペアリングコード**と PC の Oculus アプリ上に表示される「Air Linkペアリング」のコードを [**確認**]  
  1. Quest 本体上の指示に従い [**起動**]

📝 **Godot Engine** の実行  
  * Godot の [▶] を押して Quest + Godot が同時再生されれば成功！

⚠ 有線の [Oculus Link](#220501) と比較するとかなり不安定（Oculus 本体上で [**Air Linkビットレート**] を [**固定**]（10Mbps）にするとやや安定）  

実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月05日  
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
参考：[GODOT Asset Library](https://godotengine.org/asset-library/asset/129)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月07日  
[[TOP]](#TOP)


<a id="220606"></a>
# <b>360°パノラマ</b>

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


<a id="220608"></a>
# <b>ジョイスティック角度</b>

1. VR コンテンツ開発の [諸準備](#220501) をする
1. [[FPController](#220502)]-[[LeftHandController](#220502)]（または[[RightHandController](#220502)]）に
アタッチされている [**controller.gd**] に以下の内容を記述
```gdscript
extends ARVRController

func _process(delta):
  if is_button_pressed(12): # 親指スティックにタッチ（オプション）
    # 親指スティックの左右（-1.0...1.0）
    var _levelLR = get_joystick_axis(0)

    # 親指スティックの上下（+1.0...-1.0）
    var _levelTB = get_joystick_axis(1)

    # 右親指スティックの角度（弧度法）
    var _radianJoyStick = atan2(_levelTB, _levelLR)

    # 右親指スティックの角度（度数法）
    var _degreeJoyStick = rad2deg(_radianJoyStick)

    if get_controller_id() == 1:
      print("L: " + str(_degreeJoyStick)) # +180...-180
    elif get_controller_id() == 2:
      print("R: " + str(_degreeJoyStick)) # +180...-180
```

参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_arvrcontroller.html#class-arvrcontroller-method-get-joystick-axis)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月11日  
[[TOP]](#TOP)


<a id="220609"></a>
# <b>Blender to Godot</b>

本来は [Godot Blender Exporter](https://docs.godotengine.org/ja/stable/tutorials/assets_pipeline/escn_exporter/index.html#blender-escn-exporter) など最適解があるようですが、バージョンの関連の問題があり、とりあえず成功した方法をレポートします（今後要検証）。  

📝 Blender の作業

1. [Blender] 上で書き出したいオブジェクトを選択
1. [ファイル]-[エクスポート]-[Wavefront(**.obj**)] を選択し [**選択物のみ**] を **✓**  
1. フォルダを Godot のプロジェクト内に指定し [OOBJのエクスポート] を選択

📝 Godot の作業

1. [ファイルシステム] 内に生成された **.obj** をステージ上にドラッグ＆ドロップ（注意：[シーン] へのドラッグ＆ドロップは不可）
1. 配置したオブジェクトの [インスペクター]-[Transform]-[**Translation**] や [**Scale**] を設定（任意）
1. 引続き [インスペクター]-[**Mesh**]-[編集] を選択し、適用されている各 [**Surface 〇**]-[**Material**]-[編集]-[**Metallic**]-[Metallic] を「**0**」に変更（デフォルトは若干暗い為）

参考：[Blender（階層構造）to Godot](#220615)  
実行環境：Windows 10、Godot 3.4.4、Blender 3.2.0  
作成者：夢寐郎  
作成日：2022年06月11日  
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


<a id="220611"></a>
# <b>移動の基本3種</b>

📝 **指定位置に移動**（[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_spatial.html?highlight=global_transform#spatial)）

  ```gdscript
  Spatial.translation = Vector3(0,0,0)
  Spatial.global_transform.origin = Vector3(0,0,0)
  ```

  ```gdscript
  var _targetPos = Vector3(0, 0, 0)
  var _currentPos = KinematicBody.translation
  var _disPos = _targetPos - _currentPos
  KinematicBody.move_and_slide(_disPos)
  ```

📝 **値だけ移動**（[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_kinematicbody.html?highlight=KinematicBody#kinematicbody)）

  ```gdscript
  KinematicBody.move_and_slide(Vector3(0,0.1,0))
  KinematicBody.move_and_collide(Vector3(0,0.1,0))
  ```

📝 **力を加える**（[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_rigidbody.html?highlight=RigidBody#rigidbody)）

  ```gdscript
  RigidBody.add_force(Vector3(0,200,0), Vector3.ZERO)
  ```

参考：[ノードの移動](#ノードの移動)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月15日  
作成日：2022年06月17日 指定位置に移動に加筆  
[[TOP]](#TOP)


<a id="220612"></a>
# <b>衝突判定</b>

📝 **指定位置に移動…で衝突判定**  

Player と Enemy は物理的に重なることはなく Enemy が Static の場合は指定位置に移動できない（ **set_mode(0)** で動かすなど工夫が必要）。Player.translation = Vector3 で移動させると確実に指定位置に移動するが「衝突判定」はできない。「衝突判定」が必要な場合は **KinematicBody.move_and_slide(Vector3)** で動かす必要がある。  

  Spatial  
　  ├ FPController  
　  ├ **Floor**（**StaticBody**）  
　  │   └ CollisionShape（BoxShape 型）  
　  │　　　 └ MeshInstance（CubeMesh 型）  
　  ├ **Enemy**（**RigidBody**-**Static** 型など）  
　  │   └ CollisionShape（SphereShape 型）  
　  │　　　 └ MeshInstance（SphereShape 型）  
　  └ **Player**（**KinematicBody** 型）  
　  　  └ CollisionShape（SphereShape 型）  
　  　　　　└ MeshInstance（SphereShape 型）  

* **Enemy**：RigidBody（**Static** / **Kinematic** モードのみ）ほか
* **Player**：**KinematicBody** 限定

    ```gdscript
    # Main.gd
    extends Spatial

    var _player # KinematicBody Only
    var _targetPos

    func _ready():
      _player = get_node("Player") # KinematicBody Only
      _targetPos = Vector3(0, 1, -1)

    func _physics_process(delta):
      var _currentPos = _player.translation
      var _disPos = _targetPos - _currentPos
      _player.move_and_slide(_disPos)

      if _player.get_slide_count() != 0:
        print("衝突!")
        var _enemy = _player.get_slide_collision(0).collider
        _enemy.set_mode(0) # 0(Rigid)
    ```

📝 **値だけ移動…で衝突判定**  

  Spatial  
　  ├ FPController  
　  ├ **Floor**（**StaticBody**）  
　  │   └ CollisionShape（BoxShape 型）  
　  │　　　 └ MeshInstance（CubeMesh 型）  
　  ├ **Enemy**（**RigidBody**-**Static** 型など）  
　  │   └ CollisionShape（SphereShape 型）  
　  │　　　 └ MeshInstance（SphereShape 型）  
　  └ **Player**（**KinematicBody** 型）  
　  　  └ CollisionShape（SphereShape 型）  
　  　　　　└ MeshInstance（SphereShape 型）  

* **Enemy**：RigidBody（**Static** / **Kinematic** モードのみ）ほか
* **Player**：**KinematicBody** 限定

    ```gdscript
    # Main.gd
    extends Spatial

    var _player # KinematicBody Only

    func _ready():
      _player = get_node("Player") # KinematicBody Only

    func _physics_process(delta):
      _player.move_and_slide(Vector3(-0.1,0,0))

      if _player.get_slide_count() != 0:
        print("衝突!")
        # _enemy: RigidBody(Static or Kinematic Mode Only)
        var _enemy = _player.get_slide_collision(0).collider
        _enemy.set_mode(0) # 0(Rigid)
    ```

📝 **力を加える…で衝突判定**  

  Spatial  
　  ├ FPController  
　  ├ **Floor**（**StaticBody**）  
　  │   └ CollisionShape（BoxShape 型）  
　  │　　　 └ MeshInstance（CubeMesh 型）  
　  ├ **Enemy**（**RigidBody**-**Static** 型など）  
　  │   └ CollisionShape（SphereShape 型）  
　  │　　　 └ MeshInstance（SphereShape 型）  
　  └ **Player**（**RigidBody**-**Rigid** 型）  
　  　  └ CollisionShape（SphereShape 型）  
　  　　　　└ MeshInstance（SphereShape 型）  

* **Enemy**：RigidBody（全モード可）ほか
* **Player**：**RigidBody**（**Rigid** 型）限定

    ```gdscript
    # Main.gd
    extends Spatial

    var _player # RigidBody
    var _floor # StaticBody

    func _ready():
      _floor = get_node("Floor")
      _player = get_node("Player") # RigidBody Only
      _player.add_force(Vector3(-30,0,0), Vector3.ZERO)

    func _physics_process(delta):
      var _enemyList = _player.get_colliding_bodies()
      if _enemyList.size() != 0:
        for _theEnemy in _enemyList:
          if (_theEnemy != _floor):
            print("衝突!")
            print(_theEnemy)
            _theEnemy.set_mode(0) # 0(Rigid)
    ```

実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月17日  
[[TOP]](#TOP)  


<a id="220613"></a>
# <b>Picture-in-Picture</b>

📝 [Sprite3D](https://docs.godotengine.org/ja/stable/classes/class_sprite3d.html#sprite3d) の用意  

1. [シーン]-[＋]-[**Sprite3D**] を選択
1. [Sprite3D] を選択し [インスペクター] で各種設定  
    * **Translation**：x 0、**y 1**、**z -3**（スクリーン表示位置）
    * **Scale**：**0.25**、**0.25**、1（ピクセルアスペクト比･表示サイズ）

📝 [Viewport](https://docs.godotengine.org/ja/stable/classes/class_viewport.html?highlight=Viewport#viewport) の用意  

1. Sprite3D を選択し [子ノードを追加]-[**Viewport**] を選択
1. Sprite3D を選択し [インスペクター] の [**Texture**]-[新規 **ViewportTexture**] で上記で作成した **Viewport** を選択
1. Viewport を選択し [インスペクター] を設定  
    * Size：**x 640**、**y 480**（カメラの画像サイズ）  
    * Render Target：**✓ V Flip**（垂直に反転）

📝 [Camera](https://docs.godotengine.org/ja/stable/classes/class_camera.html?highlight=Camera#camera) の用意

1. Viewport を選択し [子ノードを追加]-[**Camera**] を選択
1. [Camera] を選択し [インスペクター] で各種設定  
    * **Fov**（視野角）：任意（初期値70°/1～179°）
    * **Translation**：任意（カメラの位置）
    * **Rotation Degrees**：任意（カメラの角度）

（階層は以下の通り）  
　  ├ **Sprite3D**  
　  │   └ **Viewport**  
　  │　　 └ **Camera**  

参考：[動画再生](#220602)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 40.0、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月20日  
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
1. [シーン]-[Watch] を右クリック → [**ローカルにする**] を選択

参考：[Blender to Godot](#220609)  
実行環境：Windows 10、Godot 3.4.4、Blender 3.2.0  
作成者：夢寐郎  
作成日：2022年06月21日  
[[TOP]](#TOP)


<a id="220616"></a>
# <b>回転軸の変更</b>
例：スモールセコンド付時計の秒針  

1. [Blender(階層構造) to Godot](#220615) の作業を行う
1. [secondBoard] を選択し右クリック → [子ノードを追加]-[**Spatial**]-[作成] を選択
1. 名前を "Spatial" → "**secondHandCenter**" に変更
1. [secondHand] を [**secondHandCenter**] 上にドラッグ＆ドロップ
（階層構造は以下の通り）  
　  ├ watchBoard（時計全体の文字盤）  
　  │   └ secondBoard（スモールセコンドの文字盤）  
　  │　　└ **secondHandCenter**（秒針の回転軸）←追加  
　  │　　　 └ secondHand（秒針）  
1. 大元の Spatial にスクリプトをアタッチして以下のように記述  

  ```gdscript
  # Main.gd
  extends Spatial

  var _secondHandCenter

  func _ready():
    _secondHandCenter = $Watch/watchBoard/secondBoard/secondHanCenter

  func _process(delta):
    var _now = OS.get_datetime()
    var _secondRad = -deg2rad(_now.second*6-90)
    _secondHandCenter.rotation = Vector3(0, _secondRad, 0)
  ```

参考：[フタバゼミ](https://futabazemi.net/unity/pivot_change/)  
実行環境：Windows 10、Godot 3.4.4、Blender 3.2.0、Meta Quest 40.0、Oculusアプリ  
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
1. [シーン]-[〇〇] を右クリック → [ローカルにする] を選択
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
1. [AnimationTree]（ノード設定画面）で右クリック → [**Animation**] を選択
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


<a id="220620"></a>
# <b>外部テキストの読み書き</b>

👉 外部テキストの読み書き用関数  

  ```gdscript
  func loadText(): # 外部テキストの読み込み用
    var _file = File.new()
    # ファイルが無い場合は自動的に生成
    _file.open("res://save_text.dat", File.READ)
    #_file.open("user://save_text.dat", File.READ)
    var _text = _file.get_as_text()
    _file.close()
    return _text

  func saveText(arg): # 外部テキストの書き込み
    var _file = File.new()
    # ファイルが無い場合は自動的に生成
    _file.open("res://save_text.dat", File.WRITE)
    #_file.open("user://save_text.dat", File.WRITE)
    _file.store_string(str(arg))
    _file.close()
  ```

👉 関数の実行例

  ```gdscript
  # 外部テキストの読み込み
  var _loadText = loadText()
  print("LoadText: " + _loadText)
  ```

  ```gdscript
  # 外部テキストの書き込み
  var _newText = OS.get_system_time_msecs()
  saveText(_newText)
  ```

📝 保存場所（[GODOT DOCS](https://docs.godotengine.org/en/3.4/tutorials/io/data_paths.html#accessing-persistent-user-data)）  

1. **[user://](https://docs.godotengine.org/ja/stable/tutorials/scripting/filesystem.html?highlight=res%3A%2F%2F#user-path)** の場合…  
  C:\Users\△△\AppData\Roaming\Godot\app_userdata\◇◇\〇〇.dat  
  💡◇◇は [プロジェクト]-[Application]-[Config]-[Name] に依存

2. **[res://](https://docs.godotengine.org/ja/stable/tutorials/scripting/filesystem.html?highlight=res%3A%2F%2F#resource-path)** の場合…  
  プロジェクトのルートに保存（Godot上では見えない）  

参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_file.html?highlight=File.new())（File）  
参考：[GODOT DOCS](https://docs.godotengine.org/en/3.4/tutorials/io/data_paths.html)（File paths）  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月28日  
[[TOP]](#TOP)


<a id="220621"></a>
# <b>JSONの解析</b>

1. [JSONデータ](https://raw.githubusercontent.com/mubirou/Godot/main/json/sample.json)の準備
1. [JSON整形ツール](https://tools.m-bsys.com/development_tooles/json-beautifier.php)などで確認
1. Godot プルジェクトのルートに保存

👉 外部 JSON データの読み込み用関数  

  ```gdscript
  func loadJSON():
    var _file = File.new()
    # ファイルが無い場合は自動的に生成
    _file.open("res://sample.json", File.READ)
    #_file.open("user://sample.json", File.READ)
    var _joson = _file.get_as_text()
    _file.close()
    return _joson
  ```

👉 関数の実行と JSON データの解析  

  ```gdscript
  var _loadJSON = loadJSON() # String型
  var _result = JSON.parse(_loadJSON) # JSONParseResult型
  var _dic = _result.result # Dictionary or Array型
  print(_dic["002"]["title"]) #-> VRコンテンツ開発ガイド 2017
  print(_dic["002"]["isbn"]) #-> 978-4-8443-6666-9
  print(_dic["002"]["price"]) #-> 2600
  var _contents = _dic["002"]["contents"]
  for _theContent in _contents:
    var _chapter = _theContent["chapter"]
    print(str(_chapter) + ":" + _theContent["content"])
    #-> 1:近代VRの基礎知識 など 
  ```

参考：[外部テキストの読み書き](https://github.com/mubirou/Godot#%E5%A4%96%E9%83%A8%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%81%AE%E8%AA%AD%E3%81%BF%E6%9B%B8%E3%81%8D)  
参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_json.html)  
参考：[GDScript（連想配列）](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#%E9%80%A3%E6%83%B3%E9%85%8D%E5%88%97%E8%BE%9E%E6%9B%B8)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月28日  
[[TOP]](#TOP)


<a id="220622"></a>
# <b>PHP+SQLite</b>

📝 **PHP** + **SQLite** の動作確認  

1. [Hello,world!](https://github.com/mubirou/HelloWorld/blob/master/languages/SQLite/SQLite_win.md#sqlite-windows-) を実行する
2. **C:\xampp\htdocs** に以下の **test.php** を作成

  ```php
  <?php
      $con = new PDO('sqlite::memory:', null, null);
      $statement = $con->prepare('SELECT sqlite_version()');
      $statement->execute();
      echo $statement->fetchColumn(); //-> 3.36.0
  ?>
  ```

3. http://localhost/test.php で実行

📝 **GDScript** の記述例

  ```gdscript
  # Main.gd
  extends Spatial

  func _ready():
    var _rq = HTTPRequest.new()
    add_child(_rq)
    _rq.connect("request_completed", self, "completed")
    _rq.request("http://127.0.0.1/test.php")

  func completed(arg1, arg2, arg3, arg4):
    print(arg4.get_string_from_utf8()) #-> 3.36.0
  ```

参考：[GODOT DOCS (HTTPRequest）](https://docs.godotengine.org/ja/stable/classes/class_httprequest.html?highlight=HTTPRequest)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Quest Link、Oculusアプリ、Apache 2.4.53、**PHP** 8.1.6、**SQLite** 3.36.0  
作成者：夢寐郎  
作成日：2022年06月29日  
[[TOP]](#TOP)


<a id="220623"></a>
# <b>PHP+MySQL</b>

📝 **PHP** + **MySQL**（[MariaDB](https://ja.wikipedia.org/wiki/MariaDB)）の動作確認

1. [Hello,world!](https://github.com/mubirou/HelloWorld/blob/master/languages/MySQL/MySQL_win.md) を実行する  
1. **C:\xampp\htdocs** に以下の **test.php** を作成

  ```php
  <?php
    $con = new PDO('mysql::memory:', 'root', '');
    $statement = $con->prepare("SELECT VERSION()");
    $statement->execute();
    echo $statement->fetchColumn(); //-> 10.4.24-MariaDB
  ?>
  ```

📝 **GDScript** の記述例（[PHP+SQLite](#220622)と同じ）  

  ```gdscript
  # Main.gd
  extends Spatial

  func _ready():
    var _rq = HTTPRequest.new()
    add_child(_rq)
    _rq.connect("request_completed", self, "completed")
    _rq.request("http://127.0.0.1/test.php")

  func completed(arg1, arg2, arg3, arg4):
    print(arg4.get_string_from_utf8()) #-> 10.4.24-MariaDB
  ```

実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Quest Link、Oculusアプリ、Apache 2.4.53、**PHP** 8.1.6、**[MariaDB](https://ja.wikipedia.org/wiki/MariaDB)** 10.4.24  
作成者：夢寐郎  
作成日：2022年06月29日  
[[TOP]](#TOP)


<a id="220624"></a>
# <b>Python+SQLite</b>

📝 **Python** の動作確認（[Hello,world!](https://github.com/mubirou/HelloWorld/blob/master/languages/Python/Python_win.md) を実行する）  

📝 **XAMPP** のインストール（[参考](https://github.com/mubirou/HelloWorld/blob/master/languages/SQLite/SQLite_win.md#sqlite-windows-)）  

📝 **XAMPP** に **Python** を追加する  

1. [XAMPP]-[Apache]-[config]-[**Apache(httpd.conf)**] を開く
2. **httpd.conf** の最終行に以下を追加･動作確認する

    ```conf
    # Python Settings
    AddHandler cgi-script .py
    ScriptInterpreterSource Registry-Strict
    ```

3. **C:\xampp\htdocs** に以下の **test.py** を作成

    ```py
    #!C:\Users\〇〇\AppData\Local\Programs\Python\Python310\python.exe
    # -*- coding: utf-8 -*-
    print("Content-Type: text/html\n")
    print("Hello,world!")
    ```

4. Web ブラウザで **localhost/test.py** を開く
5. Hello,world! と表示されたら成功！

📝 Python + SQLite の記述と動作確認  

1. **C:\xampp\htdocs** の **test.py** を以下の通りに記述

  ```py
  #!C:\Users\Owner\AppData\Local\Programs\Python\Python310\python.exe
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
5. SQLite のバージョンが表示されたら成功！

📝 **GDScript** の記述例（[PHP+SQLite](#220622)とほぼ同じ）  

  ```gdscript
  # Main.gd
  extends Spatial

  func _ready():
    var _rq = HTTPRequest.new()
    add_child(_rq)
    _rq.connect("request_completed", self, "completed")
    _rq.request("http://127.0.0.1/test.py")

  func completed(arg1, arg2, arg3, arg4):
    print(arg4.get_string_from_utf8()) #-> 3.37.2
  ```

実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Oculusアプリ、Apache 2.4.53、**Python** 3.10.5、**SQLite** 3.37.2  
作成者：夢寐郎  
作成日：2022年06月29日  
[[TOP]](#TOP)


<a id="220625"></a>
# <b>Python+MySQL</b>

👉 準備

1. [Python](https://github.com/mubirou/Godot#pythonsqlite) と [MySQL](https://github.com/mubirou/Godot#phpmysql) の動作確認をする  

1. コマンドプロンプトを起動、次のコマンドで [MySQL コネクタ](https://www.mysql.com/jp/products/connector/)をインストール  

    ```
    >pip install mysql-connector-python
    ```
👉 **Python** の記述と動作確認  

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

2. Web ブラウザで **localhost/test.py** を開く
3. MySQL（MariaDB）のバージョンが表示されたら成功！

👉 **GDScript** の記述例（[Python+SQLite](#220624)と同じ）  

  ```gdscript
  # Main.gd
  extends Spatial

  func _ready():
    var _rq = HTTPRequest.new()
    add_child(_rq)
    _rq.connect("request_completed", self, "completed")
    _rq.request("http://127.0.0.1/test.py")

  func completed(arg1, arg2, arg3, arg4):
    print(arg4.get_string_from_utf8()) #-> 10.4.24-MariaDB
  ```

実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Oculusアプリ、Apache 2.4.53、**Python** 3.10.5、**[MariaDB](https://ja.wikipedia.org/wiki/MariaDB)** 10.4.24  
作成者：夢寐郎  
作成日：2022年06月29日  
[[TOP]](#TOP)


<a id="220626"></a>
# <b>青空</b>

1. [360°パノラマ](#220606) と同様
1. [ファイルシステム]-[res://]-[default_env.tres]-[インスペクター]-[Background]-[Sky]-[PanoramaSky]-[編集] で以下の通り設定  
    * **Panorama**：**[CGTuts_OceanHDRI_Freebie_001.hdr](https://github.com/GodotVR/godot_openvr_fps/blob/master/Assets/CGTuts_OceanHDRI_Freebie_001.hdr)**（青空と海）
    * **Radiance Size**：**32**

参考：[VRスターターチュートリアルパート1（Godot OpenVR FPS）](https://github.com/GodotVR/godot_openvr_fps)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月30日  
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
    1. [表示]-[外観]-[アクティビティバーを表示する]
    1. 左側アイコンの一番下を選択
    1. [Marketplaceで機能拡張を検索] で **Godot** を検索
    1. **godot-tolls** をインストール
  
実行環境：Windows 10、Godot 4.0 alpha 10、VSCode 1.63.2  
作成者：夢寐郎  
作成日：2021年12月30日  
更新日：2022年06月30日 Godot 4.0 対応  
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
    * **TextMesh**（新）
    * **TubeTrailMesh**（新）
    * **[PointMesh](https://docs.godotengine.org/ja/stable/classes/class_pointmesh.html?highlight=PointMesh)**

実行環境：Windows 10、Godot 4.0 alpha 10  
作成者：夢寐郎  
作成日：2022年02月28日  
更新日：2022年07月01日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220702"></a>
# <b>VR入門</b>

1. [**Quest Link（Oculus Link）の準備**](https://github.com/mubirou/Unity3D/tree/master/study-notes#oculus-link%E3%81%AE%E6%BA%96%E5%82%99) を行う
1. [新規プロジェクト]（レンダラー：**Vulkan Clustered**）を作成
1. シーンに以下のようにノードを追加  
    Main（**Node3D**）  
  　  └ **XROrigin3D**  
  　　  └ **XRCamera3D**  
1. [プロジェクト]-[プロジェクト設定]-[**XR**] の設定＆再起動  
    * [**OpenXR**]-[Enabled]：**✓オン**
    * [**シェーダー**]-[Enabled]：**✓オン**

1. 大元の Node3D を選択し以下のスクリプトをアタッチ  

    ```gdscript
    # main.gd
    extends Node3D

    var _interface : XRInterface

    func _ready():
      _interface = XRServer.find_interface("OpenXR")
      if _interface and _interface.is_initialized():
        var _viewport : Viewport = get_viewport()
        _viewport.use_xr = true
    ```

1. [実行] し **Quest** 上で動作確認（何もまだない状態）  

デモファイル：[vr_start.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_start.zip)  
実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月02日  
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

📝 入力イベントとの接続  

1. [**XRController3D_Right**] を選択し [**ノード**] タブを選ぶ
1. [ノード]-[**XRcontroller3D**]-[**button_pressed(name:String)**] を選択し [右クリック]-[**接続**]（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207040006.jpg)  
1. [**メソッドにシグナルを接続**] ダイアログが表示（下図）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207032357.jpg)  
💡 上記の作業の意味  
[**XRController3D**_Right] の [**button_pressed(name:String)**] イベントが [**Main**] ノードにアタッチされたスクリプト内に生成される "**_on_xr_controller_3d_right_button_pressed**" という名前（変更可能）のメソッド（イベントハンドラー）で受信される  
1. [ノード] タブに **→] ../..:: _on_xr_controller_3d_right_button_pressed()** が追加され（下図上）、[シーン] の [**XRController3D**_Right] にも [接続アイコン] が追加される（下図下）  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207040024.jpg)  
![image](https://github.com/mubirou/Godot/blob/main/jpg/202207040028.jpg)  
1. 必要に応じて [ノード]-[**XRcontroller3D**]-[**button_released(name:String)**] を選択し [右クリック]-[**接続**] し同様の作業を行う  

📝 コードの確認＆変更  

1. 大元の Main（Node3D）にアタッチされたコードを確認＆変更  

    ```gdscript
    # main.gd
    extends Node3D

    var _interface : XRInterface

    func _ready():
      _interface = XRServer.find_interface("OpenXR")
      if _interface and _interface.is_initialized():
        var _viewport : Viewport = get_viewport()
        _viewport.use_xr = true

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
  |**trigger_click**|人差し指トリガーを押した･離した|

デモファイル：[vr_controller_events.zip](https://github.com/mubirou/Godot/blob/main/zip/vr_controller_events.zip)  
実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月04日  
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
実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月04日  
[[TOP]](#TOP)


<a id="220705"></a>
# <b>床タイル</b>

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
          * 言語：Shader
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

📝 [**床の作成**](#220705)  

1. 上記の床（**MeshInstance3D** / **PlaneMesh**）に [**StaticBody3D**](https://docs.godotengine.org/en/latest/classes/class_staticbody3d.html?highlight=StaticBody3D#staticbody3d) を加える 
1. 更に [**StaticBody3D**] に [**CollisionShape3D**](https://docs.godotengine.org/en/latest/classes/class_collisionshape3d.html?highlight=CollisionShape3D#collisionshape3d) を加える（設定は以下の通り）  
    * [**Shape**]：**BoxShape3D**（Size：x 1、y 1、z 1）
    * [**Transform**] の設定
      * [**Position**]：x 0、**y -0.05**、z 0
      * [**Scale**]：x 1、**y 0.1**、z 1  

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
1. エラーが出る箇所をコメントアウトする  

```gdscript
 96行目 #$Target/Player_figure.scale = Vector3(ws, ws, ws)
146行目	#$Target/Player_figure.scale = Vector3(ws, ws, ws)
```

📝 **カスタマイズ**  

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
実行環境：Windows 10、Godot 4.0 alpha 11、[Godot XR Tools](https://github.com/BastiaanOlij/godot4_openxr_demo/blob/master/addons/godot-xr-tools/functions/Function_Teleport.gd)（Godot 4 対応）、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月09日  
更新日：2022年07月12日 特定の床のみ…に対応  
[[TOP]](#TOP)


<a id="220707"></a>
# <b>RayCastからの除外</b>

[**RayCast3D.add_exception()**](https://docs.godotengine.org/en/latest/classes/class_raycast3d.html?highlight=RayCast#class-raycast3d-method-add-exception) を使っ
て [**RayCast3D**](https://docs.godotengine.org/en/latest/classes/class_raycast3d.html?highlight=RayCast3D#raycast3d) が衝突を報告しないように衝突例外を追加します  

1. [**レーザーポインター（RayCast）**](#220704) の作業を行う  
2. [**床の作成**](#220705) を行う  

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
  var _physicsBody  = $Floor/StaticBody3D
  _rayCast_R.add_exception(_physicsBody)
```

デモファイル：[teleport.zip](https://github.com/mubirou/Godot/blob/main/zip/teleport.zip)  
実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年07月09日  
[[TOP]](#TOP)


<a id="220708"></a>
# <b>デジタル時計</b>

📝 デジタル時計用のフォント（[Digital Dismay](https://www.1001fonts.com/digital+clock-fonts.html) 等）を用意しプロジェクトフォルダ内に置く  

1. 大元の Node3D（Main）を選択し [子ノードを追加]-[[**Label3D**](https://docs.godotengine.org/en/latest/classes/class_label3d.html?highlight=Label3D#label3d)] を選択
1. 名前を "Label3D" → "Clock" に変更
1. [Label3D] を選択し [インスペクター] を次の通り設定
    * [**Text**]  
      * [**Modulate**]：**#ffcc00**（フォント色）
      * [**Text**]：**88:88:88**
      * [**Font**]：[**Digital Dismay.otf**]((https://www.1001fonts.com/digital+clock-fonts.html))（上記のフォント）
      * [**Font Size**]：**127**
    * [**Transform**]
      * [**Position**]：x 0、**y 1.5**、**-3**
      * [**Scale**]：**x 0.25**、**y 0.25**、z 1  
      
    （階層は以下の通り）  
    Main（Node3D）  
    　  └ Clock（**Label3D**）  

* Clock（**Label3D**）を選択し新規でスクリプト（**Clock.gd**）をアタッチし以下の通り記述  

```gdscript
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

実行環境：実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月04日  
更新日：2022年07月13日 Godot 4.0 対応    
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
実行環境：実行環境：Windows 10、Godot 4.0 alpha 11、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：2022年06月27日  
更新日：2022年07月14日 Godot 4.0 対応  
[[TOP]](#TOP)


<a id="220710"></a>
# <b>360°パノラマ</b>

（警告） バージョン 3.4 の時のように [WorldEnvironment](https://docs.godotengine.org/en/latest/classes/class_worldenvironment.html?highlight=WorldEnvironment%20#worldenvironment) を利用するとパノラマ画像が歪みます（要調査）  

1. 360°パノラマ画像の用意  
    * [Pixexid](https://pixexid.com/search/360)：JPEG 形式
    * [Poly Haven](https://polyhaven.com/hdris)：[**OpenEXR**](https://www.openexr.com/) 形式＝[推奨](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)  

1. 大元の Node3D を選択し [子ノードを追加]-[[**MeshInstance3D**](https://docs.godotengine.org/en/latest/classes/class_meshinstance3d.html?highlight=MeshInstance3D#meshinstance3d)] を選択  

1. 名前を "MeshInstance3D" → "Panorama" に変更  

1. [Panorama]-[インスペクター]  
    * [**Mesh**]-[新規 **SphereMesh**]-[編集]  
      * [**Radius**]：**1**m
      * [**Height**]：**2**m
      * [**Material**]-[新規 **StandardMaterial3D**]-[編集]  
        * [**Transparency**]
          * [**Transparency**]：Disabled（Alphaも可能）
          * [**Cull Mode**]：**Front**（内側にも表示）
        * [**Shading**]：**Unshaded**（元画像の明るさで表示）
        * [**Albedo**]
          * [**Color**]：#ffffff（アルファ値の設定可能）
          * [**Texture**]：〇〇[**.exr**](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)（360°パノラマ画像） 
    * [**Transform**]
      * [**Rotation**]：x 0、y XXX（**初期値の水平角**）、z 0  
      * [**Scale**]：**x 100**、**y 100**、**z 100**

1. 大元の Node3D を選択し [子ノードを追加]-[**DirectionalLight3D**]-[インスペクター]  
    * [**Shadow**]-[Enabled]：**✓オン**
    * [**Transform**]
      * [**Position**]：x 0、**y 100**（0でも同じ）、z 0
      * [**Rotation**]：**x -55**（太陽の高さ）、**y 35**（太陽の向き）、z 0

（上記の階層）  
Main（Node3D）  
　 ├ XROrigin3D  
　 │ └ XRCamera3D  
　 ├ **Panorama**（MeshInstance3D-**SphereMesh**）  
　 ├ MeshInstance3D（展望台など）  
　 └ DirectionalLight3D  

デモファイル：[Panorama.zip](https://github.com/mubirou/Godot/blob/main/zip/Panorama.zip)  
実行環境：実行環境：Windows 10、Godot 4.0 alpha 12、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
更新日：2022年07月17日   
[[TOP]](#TOP)


<a id="220711"></a>
# <b>鏡面仕上げボール</b>
ステンレス球･シャボン玉風なオブジェクトの作成  

1. [360°パノラマ](#220710)を設定

1. 大元の Node3D を選択し [子ノードを追加]-[**WorldEnvironment**]-[インスペクター]-[**Environment**]-[新規 **Environment**]-[編集]
    * [**Background**]-[**Mode**]：**Sky**
    * [**Sky**]
      * [**Sky**]-[新規 **Sky**]-[編集]  
        * [**Sky Material**]-[新規 [**PanoramaSkyMaterial**](https://docs.godotengine.org/en/latest/classes/class_panoramaskymaterial.html?highlight=PanoramaSkyMaterial#panoramaskymaterial)]-[編集]-[**Panorama**]：**.jpg**, **.exr**（360°パノラマ画像） 
      * [**Potation**]：x 0、y XX（**回転角調整**）、z 0

1. 大元の Node3D を選択し [子ノードを追加]-[**MeshInstance3D**]-[インスペクター]
    * [**Mesh**]-[新規 **SphereMesh**]-[編集]  
      * [**Material**]-[新規 **StandardMaterial3D**]-[編集]
        * [**Transparency**]-[**Transparency**]：**Depth Pre-Pass**（影付）
        * [**Albedo**]-[**Color**]：#ffffff（アルファ値の設定可能）
        * [**Metaric**]
          * [**Metaric**]：**1**
          * [**Specular**]：



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


<a id="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```c#
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)

© 2021-2022 夢寐郎
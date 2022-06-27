# Godot Study Notes<a id="TOP"></a>

### <b>index</b>

[GDScript基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#gdscript-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [C#基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/C%23Godot/C%23Godot_reference.md#c-with-godot-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [外部スクリプトエディタ](#外部スクリプトエディタ) | [Androidビルド](#Androidビルド) | [プリミティブ](#プリミティブ) | [カメラ](#カメラ) | [ノードの移動](#ノードの移動) | [マウス座標](#マウス座標) | [画面サイズ](#画面サイズ) | [背景色](#背景色) | [Rouletteゲーム](#Rouletteゲーム) | [SwipeCarゲーム](#SwipeCarゲーム) | [Quest + Oculus Link](#220501) | [Questコントローラー表示](#220502) | [is_button_pressed()](#220503) | [追跡](#220504) | [Questビルド](#220505) | [オブジェクト色](#220506) | [床タイル](#220507) | [RayCastボタン](#220601) | [動画再生](#220602) | [デジタル時計](#220603) | [Oculus Air Link](#220604) | [VR空間に2Dシーンを表示](#220605) | [360°パノラマ](#220606) | [鏡面仕上げボール](#220607) | [ジョイスティック角度](#220608) | [Blender to Godot](#220609) | [物理エンジン RigidBodyとStaticBody](#220610) | [移動の基本3種](#220611) | [衝突判定](#220612) | [Picture-in-Picture](#220613) | [BGM･SE](#220614) | [Blender(階層構造) to Godot](#220615) | [回転軸の変更](#220616) | [アニメーション遷移](#220617) | [アニメーション速度変更](#220618) | [パーティクル](#220619) |
***

<a id="外部スクリプトエディタ"></a>
# <b>外部スクリプトエディタ</b>

1. Godot の設定
    1. [エディター]-[エディター設定]-[Text Editor]-[External] を開く
    1. 次の通り設定  
        * [Use External Editor] : ✔
        * Exec Path] : C:/Users/XXXXX/AppData/Local/Programs/Microsoft VS Code/**Code.exe**  

1. Visual Studio Code の設定  
    1. VSCode を起動
    1. [表示]-[外観]-[アクティビティバーを表示する]
    1. 左側アイコンの一番下を選択
    1. [Marketplaceで機能拡張を検索] で **Godot** を検索
    1. **godot-tolls** をインストール

* Visual Studo Code ショートカットキー

    |Key|内容|
    |:--|:--|
    |Alt|上部メニューの表示/非表示|
    |Control + B|左サイドバーの表示/非表示|
    |Control + `|ターミナルの表示/非表示|
    |Control + `|ターミナルの表示/非表示|e
  
実行環境：Ubuntu 20.04 LTS、Godot 3.4.2、VSCode 1.63.2  
作成者：夢寐郎  
作成日：2021年12月30日  
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


<a id="220507"></a>
# <b>床タイル</b>

📝床（10m四方）にタイル（1m四方）を貼る場合…

1. タイル（400x400px程度）のタイル（1m四方）用の画像を作成（例：[tile.svg](https://github.com/mubirou/Godot/blob/main/svg/tile.svg)）
1. [シーン]-[＋]-[MeshInstance] を選択
1. 名前を "MeshInstance" → "Floor" に変更
1. [インスペクター]-[MeshInstance]-[Mesh]-[新規**PlaneMesh**] を選択
1. 引続き [Spatial]-[Tranform]-[**Scale**] を次の通りに変更  
    * **x**：**10**、**z**：**10**（**10m**四方の床の場合）
1. 引続き [インスペクター]-[**Material**]-[[空]]-[新規**SpatialMaterial**] を選択
1. 表示された [球] に上記で作成した **.png** または **.jpg** をドラッグ＆ドロップ
1. [球] の右にある [v]-[編集]-[**Uv1**]-[**Scale**] を次の通りに変更  
    * **x**：**10**、**y**：**10**  

📝天井にタイルを貼る場合…  
※「PaneMesh」は裏は透明になる「CubeMesh」は裏は暗くなる、という問題を回避する必要があります
1. [シーン]-[＋]-[MeshInstance] を選択
1. 名前を "MeshInstance" → "Ceiling" に変更
1. [インスペクター]-[MeshInstance]-[Mesh]-[新規**CubeMesh**] を選択（2mの立方体）
1. [インスペクター]-[Transform] を次の通りに変更  
    * Transform：x 0、y 2.35、z 0
    * Scale：**x 5**、**y 0.01**、**z 5**
1. 引続き [インスペクター]-[**Material**]-[[空]]-[新規**SpatialMaterial**] を選択
1. 表示された [球] にタイル用の画像（**.png** または **.jpg**）をドラッグ＆ドロップ
1. [球] の右にある [v]-[編集] を選択し次の通りに変更
    * [**Flags**]-[**Unshaded**] を**✓**
    * [**Albedo**]-[**Color**] を設定（天井のベースカラー）
    * [**Uv1**] の設定は次の通り
        * [**Scale**]：**x** **5**、**z**：**5**
        * [**Triplanar Sharp**] を**✓**  

実行環境：Windows 10、Godot 3.4.4、Meta Quest（初代）v.40  
作成者：夢寐郎  
作成日：2022年05月28日  
更新日：2022年05月29日  
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


<a id="220603"></a>
# <b>デジタル時計</b>

📝 デジタル時計用のフォント（[Digital Dismay](https://www.1001fonts.com/digital+clock-fonts.html) 等）を用意  

📝 [Sprite3D](https://docs.godotengine.org/ja/stable/classes/class_sprite3d.html#sprite3d) の用意  

1. [シーン]-[＋]-[**Sprite3D**] を選択
1. Sprite3D] を選択し [インスペクター] で各種設定  
    * [**Translation**]：x 0、**y 1**、**z -3**（時計表示位置）
    * [**Scale**]：**0.25**、**0.25**、1（ピクセルアスペクト比･表示サイズの調整）

📝 [Viewport](https://docs.godotengine.org/ja/stable/classes/class_viewport.html?highlight=Viewport#viewport) の用意  

1. Sprite3D を選択し [子ノードを追加]-[**Viewport**] を選択
1. Sprite3D を選択し [インスペクター] の [**Texture**]-[新規 **ViewportTexture**] で上記で作成した **Viewport** を選択
1. Viewport を選択し [インスペクター] を設定  
    * [**Size**]：**x 492**、**y 144**（フォントサイズにより要調整）  
    * [Render Target]-[**VFlip**] を **✓**

📝 [Label](https://docs.godotengine.org/ja/stable/classes/class_label.html?highlight=Label) の用意

1. Viewport を選択し [子ノードを追加]-[**Label**] を選択
1. Label を選択し [インスペクター] を設定
    * [**Text**]：**88:88:88**
    * [**Margin**]：**Left 22**、**Top 10**、**Right 0**、**Bottom 0**
1. 引き続きフォント関係を設定  
    1. [Theme Overrides]-[**Fonts**]-[新規 **DynamicFont**] を選択
    1. [DynamicFont]-[編集]-[Font]-[**Font Data**] に上記の **Digital Dismay.otf** ファイルをドラッグ＆ドロップ
    1. [Setting]-[**Size**] を **128** に変更

（階層は以下の通り）  
　  ├ **Sprite3D**  
　  │   └ **Viewport**  
　  │　　 └ **Label**  

📝 コードの記述  

* 大元の Spatial に新規で Main.gd をアタッチし以下を追加  

```gdscript
func _ready():
  var _timer = Timer.new()
  _timer.set_wait_time(1)
  _timer.connect("timeout", self, "loopClock")
  add_child(_timer)
  _timer.start()

func loopClock():
  var _now = OS.get_datetime()
  var _h = _now.hour
  var _m = _now.minute
  var _s = _now.second

  if _h < 10: _h = "0" + str(_h)
  if _m < 10: _m = "0" + str(_m)
  if _s < 10: _s = "0" + str(_s)
  var _result = str(_h) + ":" + str(_m) + ":" + str(_s)

  get_node("Sprite3D/Viewport/Label").text = _result
```

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


<a id="220619"></a>
# <b>パーティクル</b>

### この項目は編集中です

1. プロジェクトを **[GLES3](https://docs.godotengine.org/ja/stable/tutorials/rendering/gles2_gles3_differences.html#differences-between-gles2-and-gles3)** に設定
1. 任意の Spatial（Node3D）を選択し [子ノードを追加]-[**Particles**] を選択
1. [Particles]-[インスペクター] で各種設定  
    * [**Amount**]：パーティクルの数（**4～90**程度）
    * [**Process Material**]：新規 **ParticlesMaterial**
    * [**Draw Passes**]-[Pass1]：新規 **QuadMesh**
    * [**Geometry**]-[**Material Override**]：新規 **SpatialMaterial**  
      引続き [**Material Override**]-[編集] で各種設定  
        * [Flags]-[**Transparent**]：**✓**オン
        * [Flags]-[**Unshaded**]：**✓**オン
        * [Vertex Color]-[**Use As Albedo**]：**✓**オン
        * [Parameters]-[**Blend Mode**]：**Add**
        * [Parameters]-[**Billboard Mode**]：**Particle Billboard**
        * [Albedo]-[**Texture**]：**〇〇.png**（👇例）  
        ![image](https://github.com/mubirou/Godot/blob/main/png/smoke.png)  
    * [**Process Material**]-[**ParticlesMaterial**]-[編集] で各種設定  
        * [**Gravity**]：x 0、y 0、z 0
        * [**Initial Velocity**]：0.6（**Random**：0.4)
        * [**Angle**]：360（**Random** 1）
        * [**Emmision Shape**]：**Sphere**（**Radius**：0.08～1 程度）
        * [**Scale**]：1.2（**Scale Curve**：新 **CurveTexture**）  
          * [**CurveTexture**]-[編集] で各種設定
            * カーブ上で右クリックで [**ポイントを追加**] [**ポイントを削除**] 可能
        * [**Angular Velocity**]-[Velocity]：**15**
        * [**Angular Velocity**]-[Velocity Random]：**1**
        * [Color]-[**Color Ramp**]：新規 **GradientTexture**
          * [**GradientTexture**]-[編集] で各種設定
            * [**Gradient**]：新規 **Gradient**
              * [**Gradient**]-[編集] で各種設定

YouTube 12:40/20:51

参考：[YouTube](https://www.youtube.com/watch?v=DkJ2jYl-ESw)  
参考：[GODOT DOCS](https://docs.godotengine.org/ja/stable/classes/class_particles.html?highlight=Particles)  
実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Oculusアプリ  
作成者：夢寐郎  
作成日：202X年XX月XX日  
[[TOP]](#TOP)


<a id="XXX"></a>
# <b>XXXXX</b>

<a id="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```c#
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Windows 10、Godot 3.4.4、Meta Quest 41.0、Oculusアプリ  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)

© 2021-2022 夢寐郎
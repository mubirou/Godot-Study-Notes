# Godot Study Notes<a name="TOP"></a>

### <b>index</b>

| [GDScript基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#gdscript-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [C#基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/C%23Godot/C%23Godot_reference.md#c-with-godot-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [外部スクリプトエディタ](#外部スクリプトエディタ) | [Androidビルド](#Androidビルド) | [プリミティブ](#プリミティブ) | [カメラ](#カメラ) | [ノードの移動](#ノードの移動) | [マウス座標](#マウス座標) | [画面サイズ](#画面サイズ) | [背景色](#背景色) | [Rouletteゲーム](#Rouletteゲーム) | [SwipeCarゲーム](#SwipeCarゲーム) | [XXXXX](#XXX) |
***

<a name="外部スクリプトエディタ"></a>
# <b>外部スクリプトエディタ</b>

1. Godot の設定
    1. [エディタ]-[エディター設定]-[Text Editor]-[External] を開く
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


<a name="Androidビルド"></a>
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


<a name="プリミティブ"></a>
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


<a name="カメラ"></a>
# <b>カメラ</b>

1. [シーン]タブ-[+]で"**Camera**"を検索し[作成]
1. [インスペクタ]で各種設定  

参考：[Hatena Blog](https://ore2wakaru2.hatenablog.com/entry/2018/03/04/232635)  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年02月28日  
[[TOP]](#TOP)


<a name="ノードの移動"></a>
# <b>ノードの移動</b>

### 【GDScript版】 

* [Spatialノード](https://docs.godotengine.org/ja/stable/tutorials/3d/introduction_to_3d.html#spatial-node)（3Dモデル）の移動  
  ```GDScript
  #Main.gd
  extends Spatial # 2Dの場合はNode2D

  var _ufo

  func _ready(): # 最初に一度だけ実行される
    _ufo = get_node("UFO")

  func _process(_delta): # 繰り返し実行
    _ufo.translation.y += 0.01 # 0.01m移動
  ```
  上記を含め次の方法で可能  
  ```GDScript
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
  ```GDScript
  # Main.gd
  extends Node2D

  var _ufo

  func _ready(): # 最初に一度だけ実行される
    _ufo = get_node("UFO")
    
  func _process(_delta): # 繰り返し実行
    _ufo.position.x += 1 # 1ピクセル移動
  ```
  上記を含め次の方法で可能
  ```GDScript
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

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月03日  
更新日：2022年03月05日 C#版を追加  
[[TOP]](#TOP)


<a name="マウス座標"></a>
# <b>マウス座標</b>

### 【GDScript版】 

 * 3D（Spatialノード）版  
  👇マウスの位置
    ```GDScript
    #Main.gd
    extends Spatial #2Dの場合はNode2D

    func _input(_event): # 入力イベント
      if _event is InputEventMouseMotion: # マウスを動かしている時
        print(_event.position) #-> (48, 425)
        print(_event.position.x) #-> 48
        print(_event.position.y) #-> 425
    ```
    👇入力座標位置  
    ```GDScript
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
    ```GDScript
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
    ```GDScript
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


<a name="画面サイズ"></a>
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


<a name="背景色"></a>
# <b>背景色</b>

* [プロジェクト]-[プロジェクト設定…]-[**Rendering**]-[**Environment**]で以下の通りに設定
  * **Default Clear Color** : ffcc00（初期値:4d4d4d）

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月07日  
[[TOP]](#TOP)


<a name="Rouletteゲーム"></a>
# <b>Rouletteゲーム</b>
[『Unityの教科書』](https://amzn.to/3hU5s5Z)のChapter3（オブジェクトの配置と動かし方）のGodot版  

### 【GDScript版】  
ルーレット画像（Sprite）に以下のスクリプトをアタッチ
```GDScript
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

参考ファイル：[Roulette.zip](https://mubirou.github.io/Godot/zip/Roulette.zip)  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月10日  
[[TOP]](#TOP)


<a name="SwipeCarゲーム"></a>
# <b>SwipeCarゲーム</b>
[『Unityの教科書』](https://amzn.to/3hU5s5Z)のChapter4（UIと監督オブジェクト）のGodot版  

### 【GDScript版】  
メインシーン（Main.tscn）に以下のスクリプトをアタッチ
```GDScript
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
```GDScript
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
参考：[小数点以下2桁表示](https://docs.godotengine.org/ja/stable/tutorials/scripting/gdscript/gdscript_format_string.html#padding)  
参考ファイル：[Roulette.zip](https://mubirou.github.io/Godot/zip/SwipeCar.zip)  
実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月23日  
[[TOP]](#TOP)


<a name="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```c#
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)

© 2021-2022 夢寐郎
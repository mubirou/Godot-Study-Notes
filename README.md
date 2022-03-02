# Godot Study Notes<a name="TOP"></a>

### <b>index</b>

| [GDScript基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/GDScript/GDScript_reference.md#gdscript-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [C#基礎文法](https://github.com/mubirou/HelloWorld/blob/master/languages/C%23Godot/C%23Godot_reference.md#c-with-godot-%E5%9F%BA%E7%A4%8E%E6%96%87%E6%B3%95) | [外部スクリプトエディタ](#外部スクリプトエディタ) | [Androidビルド](#Androidビルド) | [プリミティブ](#プリミティブ) | [カメラ](#カメラ) | [ノードの移動](#ノードの移動) | [XXXXX](#XXX) |
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
  *   

参考：[Hatena Blog](https://ore2wakaru2.hatenablog.com/entry/2018/03/04/232635)  
実行環境：Windows 10、Godot 3.4.3  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)


<a name="ノードの移動"></a>
# <b>ノードの移動</b>

* [Spatialノード](https://docs.godotengine.org/ja/stable/tutorials/3d/introduction_to_3d.html#spatial-node)の移動   
  ```GDScript
  #test.gd
  extends Spatial #2Dの場合はNode2D

  var _ufo

  func _ready(): # 最初に一度だけ実行される
    _ufo = get_node("UFO")

  func _process(_delta): # 繰り返し実行
    _ufo.translation.y += 0.01
  ```

実行環境：Windows 10、Godot 3.4.2  
作成者：夢寐郎  
作成日：2022年03月03日  
[[TOP]](#TOP)


<a name="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```c#
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Windows 10、Godot 3.4.3  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)

© 2021-2022 夢寐郎
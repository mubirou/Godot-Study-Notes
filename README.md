# Godot Study Notes<a name="TOP"></a>

### <b>index</b>

| [外部スクリプトエディタ](#2112001) | [Androidビルド](#2112002) | [XXXXX](#XXX) |
***

<a name="2112001"></a>
# <b>外部スクリプトエディタ</b>

1. Godot の設定
    1. [エディタ]-[エディター設定]-[Text Editor]-[External] を開く
    1. 次の通り設定  
        * [Use External Editor] : ✔
        * Exec Path] : **/usr/bin/code**

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


<a name="2112002"></a>
# <b>Androidビルド</b>

1. [Godot]-[プロジェクト]-[Androidビルドテンプレートのインストール]  
  [[参考サイト](https://qiita.com/2dgames_jp/items/3d0a318d2a483ced9db1)]

1. **Android Studio** (2020.3.1) のインストール  
  https://developer.android.com/studio?hl=ja&gclid=EAIaIQobChMI4bb4moON9QIVTkNgCh14cABREAAYASAAEgKsUvD_BwE&gclsrc=aw.ds  
  C:\Program Files\Android\Android Studio にインストール

1. **OpenJDK** をインストール  
  ➊ ダウンロード  
  https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=416&field_operating_system_target_id=436&field_architecture_target_id=391&field_java_package_target_id=396  
  JAVA VERSION : **8u262-b10**（Java 11ではない）  
  DOWNLOAD : .zip  
  ➋ 解凍(今回はデスクトップ上)  
  ➌ binフィルダを開く  
  ➍ アドレス上で cmd と入力（コマンドプロンプトが開く）    
  ➎ keytool コマンドを実行  
  C:\Users\XXXXX\Desktop\openlogic-openjdk-8u262-b10-windows-x64\openlogic-openjdk-8u262-b10-win-64\bin>**keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999 -deststoretype pkcs12**  
  （要確認）[コマンドプロンプト]-[右クリック]-[その他]-[管理者として実行]  
  ➏ C:\Users\XXXXX\Desktop\openlogic-openjdk-8u262-b10-windows-x64\openlogic-openjdk-8u262-b10-win-64\bin> フォルダに **debug.keystore** が生成されたことを確認  
  [[参考サイト](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)]

1. Godot（エディター）の設定  
  ➊ [エディター]-[エディター設定]-[Export]-[Android] を下記の通り設定  
  ・Android Sdk Path : C:/Users/XXXXX/AppData/Local/Android/**Sdk**  
  ・Debug Keystore : C:/Users/XXXXX/Desktop/openlogic-openjdk-8u262-b10-windows-x64/openlogic-openjdk-8u262-b10-win-64/bin/**debug.keystore**（上記➏と同じ）  
  ・Debug Keystore User : **androiddebugkey**  
  ・Debug Keystore Pass : **android**  
  [[参考サイト](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)]

1. **.apk** エクスポート  
  ➊ [プロジェクト]-[エクスポート]-[追加]-[Android]  
  ➋ エクスポート先のパス : ……/XXXXX.apk
  ➌ [プロジェクトのエクスポート] を選択 → [ファイルを保存]-[保存]

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

実行環境：Ubuntu 20.04 LTS、Godot 3.4.2、Xiaomi Redmi Note 9T (Android 11)   
作成者：夢寐郎  
作成日：2021年12月31日   
[[TOP]](#TOP)


<a name="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```c#
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Ubuntu 20.04 LTS、Godot 3.4.2    
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](#TOP)

© 2021 夢寐郎
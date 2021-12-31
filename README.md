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
  ➏ C:\Users\XXXXX\Desktop\openlogic-openjdk-8u262-b10-windows-x64\openlogic-openjdk-8u262-b10-win-64\bin> フォルダに **debug.keystore** が生成されたことを確認  
  [[参考サイト](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)]

1. Godot（エディター）の設定  
  ➊ [エディター]-[エディター設定]-[Export]-[Android] を下記の通り設定  
  * Android Sdk Path : C:/Users/XXXXX/AppData/Local/Android/**Sdk**  
  * Debug Keystore : C:/Users/XXXXX/Desktop/Godot_001/openlogic-openjdk-8u262-b10-windows-x64/openlogic-openjdk-8u262-b10-win-64/bin/**debug.keystore** 

* https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=406&field_operating_system_target_id=436&field_architecture_target_id=391&field_java_package_target_id=396&fbclid=IwAR3v0jY1ja4q4oJ16tAEBe8j7k3ZnOfmdZi-PKdO4r0yg_dRzvWB5K-fbCQ  
* JAVA VERSION : 11
* OPERATION SYSTEM : Windows
* ARCHITECTURE : x86 64-bit
* JAVA PACKAGE : JDK

* [11.0.8+10]-[.zip]



* Android Sdk Path : C:/Users/*****/AppData/Local/Android/Sdk  
* Debug keystore : C:/Program Files (x86)/Java/jre1.8.0_311/bin/debug.keystore  

or  

* C:\Users\Owner\.android\debug.keystore  


* Debug Keystore User : mubirou
* Debug Keystore Pass : ********

[OpenJDKインストール](https://adoptium.net/?variant=openjdk11)  

※[参考サイト](https://qiita.com/2dgames_jp/items/3d0a318d2a483ced9db1)  
※[keytoolの使い方](https://androyer.blogspot.com/2014/01/keytool.html)  
C:\Program Files (x86)\Java\jre1.8.0_311\bin>  

[コマンドプロンプト]-[右クリック]-[その他]-[管理者として実行]
```
C:\WINDOWS\system32>cd \
C:\>
C:\>cd Program Files (x86)
C:\Program Files (x86)>cd Java
C:\Program Files (x86)\Java>
C:\Program Files (x86)\Java>cd jre1.8.0_311
C:\Program Files (x86)\Java\jre1.8.0_311>cd bin
C:\Program Files (x86)\Java\jre1.8.0_311\bin>keytool -genkey -v -keystore debug.keystore -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10000
```

恐らくこちらが正しい  
[コマンドプロンプト]-[右クリック]-[その他]-[管理者として実行]
```
C:\WINDOWS\system32>cd \
C:\>
C:\>cd Program Files
C:\Program Files>
C:\Program Files>cd Eclipse Adoptium
C:\Program Files\Eclipse Adoptium>
C:\Program Files\Eclipse Adoptium>cd jdk-11.0.13.8-hotspot
C:\Program Files\Eclipse Adoptium\jdk-11.0.13.8-hotspot>
C:\Program Files\Eclipse Adoptium\jdk-11.0.13.8-hotspot>cd bin
C:\Program Files\Eclipse Adoptium\jdk-11.0.13.8-hotspot\bin>
C:\Program Files\Eclipse Adoptium\jdk-11.0.13.8-hotspot\bin>keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999 -deststoretype pkcs12
```
※[参考](https://docs.godotengine.org/en/stable/getting_started/workflow/export/exporting_for_android.html) 

```
C:\>cd Program Files (x86)
C:\Program Files (x86)>cd Java
C:\Program Files (x86)\Java>
C:\Program Files (x86)\Java>cd jre1.8.0_311
C:\Program Files (x86)\Java\jre1.8.0_311>cd bin
C:\Program Files (x86)\Java\jre1.8.0_311\bin>keytool -genkey -v -keystore debug.keystore -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10000
```

※[Javaインストール](https://www.java.com/ja/download/manual.jsp)  

```
キーストアのパスワードを入力してください:  ********
新規パスワードを再入力してください:  ********
姓名は何ですか。
  [Unknown]:  mubirou
組織単位名は何ですか。
  [Unknown]:  mubirou
組織名は何ですか。
  [Unknown]:  mubirou
都市名または地域名は何ですか。
  [Unknown]:  Shinjuku-ku
都道府県名または州名は何ですか。
  [Unknown]:  Tokyo
この単位に該当する2文字の国コードは何ですか。
  [Unknown]:  JP
CN=Wataru Yamada, OU=app team, O=org yamacraft, L=Musashino-shi, ST=Tokyo, C=JPでよろしいですか。
  [いいえ]:  y

10,000日間有効な2,048ビットのRSAのキー・ペアと自己署名型証明書(SHA256withRSA)を生成しています
        ディレクトリ名: CN=mubirou, OU=mubirou, O=mubirou, L=Shinkuku-ku, ST=Tokyo, C=JP
<androiddebugkey>のキー・パスワードを入力してください
        (キーストアのパスワードと同じ場合はRETURNを押してください): [RETURN]

[debug.keystoreを格納中]

Warning:
JKSキーストアは独自の形式を使用しています。"keytool -importkeystore -srckeystore debug.keystore -destkeystore debug.keystore -deststoretype pkcs12"を使用する業界標準の形式であるPKCS12に移行することをお薦めします。
```
C:\Program Files (x86)\Java\jre1.8.0_311\bin\debug.keystore に生成  

<書き出し>  
1. [プロジェクト]-[エクスポート]-[追加]-[Android]
1. [Custom Template]  
    * Debug : C:/Users/Owner/AppData/Roaming/Godot/templates/3.4.2.stable.mono/android_debug.apk
    * Release : C:/Users/Owner/AppData/Roaming/Godot/templates/3.4.2.stable.mono/android_release.apk

### 解決法

1. Android Studio 2020.3.1  
  * https://developer.android.com/studio?hl=ja&gclid=EAIaIQobChMI4bb4moON9QIVTkNgCh14cABREAAYASAAEgKsUvD_BwE&gclsrc=aw.ds
  * C:\Program Files\Android\Android Studio にインストール

1. OpenJDK 8u262-b10(.zip)  
  * https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=416&field_operating_system_target_id=436&field_architecture_target_id=391&field_java_package_target_id=396
  * 解凍（デスクトップでよい）
  * binフィルダを開く
  * アドレス上で「cmd」と入力（コマンドプロンプトが開く）  
    C:\Users\Owner\Desktop\openlogic-openjdk-8u262-b10-windows-x64\openlogic-openjdk-8u262-b10-win-64\bin>  
  * keytoolコマンドを実行
    ```
    C:\Users\Owner\Desktop\openlogic-openjdk-8u262-b10-windows-x64\openlogic-openjdk-8u262-b10-win-64\bin>keytool -keyalg RSA -genkeypair -alias androiddebugkey -keypass android -keystore debug.keystore -storepass android -dname "CN=Android Debug,O=Android,C=US" -validity 9999 -deststoretype pkcs12
    ```
  * binフォルダに「debug.keystore」が生成されたことを確認

1.   
  * Debug : C:\Users\Owner\AppData\Roaming\Godot\templates\3.4.2.stable.mono/android_debug.apk
    * Release : C:\Users\Owner\AppData\Roaming\Godot\templates\3.4.2.stable.mono/android_release.apk  
  
[参考](https://godotengine.org/qa/111977/apksigner-returned-with-error-%231)


実行環境：Ubuntu 20.04 LTS、Godot 3.4.2、Xiaomi Redmi Note 9T (Android 11)   
作成者：夢寐郎  
作成日：2021年12月XX日   
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
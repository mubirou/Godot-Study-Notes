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

  1. [Godot WebXR Template](https://godotengine.org/asset-library/asset/1128) から [Download]（2023-03-27版）
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
  4. [Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/connect-link-with-quest-2/) でQuestとPCを接続
  5. [リモートデバッグ]-[ブラウザで実行]（下図）  
  ![image](https://github.com/mubirou/Godot/blob/main/jpg/202310310620.jpg)  
  （Godot内蔵のWebサーバを利用します）  
  6. Webブラウザ上で [**Enter VR**] を選択
  7. 360°VRコンテンツが再生されたら成功！  
  （黒いボックス＝両手のみ）  

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
➅ [Quest Link](https://www.meta.com/ja-jp/help/quest/articles/headsets-and-accessories/oculus-link/connect-link-with-quest-2/) でQuestとPCを接続  
➆ [Quest]-[デスクトップ]-[モニター〇]-[Chrome] を起動  
➇ https://www.mubirou.com/.../〇〇.html 開く  
➈「...が次の許可を求めています」と表示されたら [許可する] を選択
➉ [**Enter VR**] を選択し360°VRコンテンツが再生されたら成功！  

（注意）  
[Meta Quest Browser](#231029-MetaQuestBrowser)を使ってルータ内のサーバにアクセスする場合は
[Windowsのモバイルスポットにアクセス](https://github.com/mubirou/LAMP#androidquest%E3%81%AE%E5%A0%B4%E5%90%88)する必要あり

参考：[snopekgames.com](https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4)  
参考：[フレームシンセシス（Godot4 VR開発メモ）](https://tech.framesynthesis.co.jp/godot/vr/)  
実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0.0）、Quest Link、Oculusアプリ、Google Chrome 118、CentOS Stream 8、Apache 2.4.37、FileZilla 3.66.0、Meta Quest Browser 28.4  
作成者：夢寐郎  
作成日：2023年10月31日  
更新日：2023年11月02日 Quest単体+LAMP情報を追加  
[[TOP]](https://github.com/mubirou/Godot-Study-Notes#TOP)


### この項目は書きかけです

<a id="231107"></a>
# <b>WebXRテンプレート</b>

[Godot WebXR Template](https://godotengine.org/asset-library/asset/1128) の自作  

1. Godot を起動し [新規] を選び、各種設定し [作成して編集] を選択  
    * プロジェクト名：webxr_template（任意）
    * プロジェクトパス：（任意）
    * レンダラー：互換性（Vulkanが有効か要調査）
1. [プロジェクト]-[プロジェクト設定]-[XR]-[シェーダー]-[✓オン] にして [保存して再起動]
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
1. [プロジェクト]-[エクスポート]-[追加]-[**Web**]-[HTML]-[Head Include] に以下を記述し [閉じる]  
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

参考：[Snopek Games](https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4)（How to make a VR game for WebXR）  
実行環境：Windows 11、Godot 4.2 Beta 4、Meta Quest 3（57.0）、Quest Link、Oculusアプリ、Chrome 118  
作成者：夢寐郎  
作成日：202X年XX月XX日  
[[TOP]](https://github.com/mubirou/Godot-Study-Notes#TOP)  


### この項目は書きかけです

<a id="XXX"></a>
# <b>XXXXX</b>

1. XXX
    ```gdscript
    XXXX
    ```
    * XXX
    * XXXX

実行環境：Windows 11、Godot 4.1.2、Meta Quest 3（57.0）、Quest Link、Oculusアプリ  
作成者：夢寐郎  
作成日：202X年XX月XX日  
更新日：202X年XX月XX日  
[[TOP]](https://github.com/mubirou/Godot-Study-Notes#TOP)

© 2021-2023 夢寐郎

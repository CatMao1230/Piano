# Piano
<h1><img class="alignnone  wp-image-99" src="https://catmaoblog.files.wordpress.com/2016/10/6lqz4de.png" alt="Icon made by Freepik from www.flaticon.com" width="40" height="40" /> <a href="https://github.com/CatMao1230/Piano/blob/gh-pages/main.lua" target="_blank">點我前往</a></h1>
<h1><img class="alignnone  wp-image-99" src="https://catmaoblog.files.wordpress.com/2016/10/6lqz4de.png" alt="Icon made by Freepik from www.flaticon.com" width="40" height="40" /> <a href="https://catmaoblog.wordpress.com/2017/02/07/piano/" target="_blank">WordPress</a></h1>
<h1><img class="alignnone  wp-image-41" src="https://catmaoblog.files.wordpress.com/2016/10/3h9rzur.png" alt="Icon made by Popcorns Arts from www.flaticon.com" width="40" height="40" /> 前言</h1>
在去年寒假的時候參加了手機開發的營隊，學習了如何使用 <a href="https://coronalabs.com/" target="_blank">Corona SDK</a> 來開發手機程式。 Corona 最大的優點就是可以跨平台，只要一份程式碼，便可以在 iOS 、 Android 、 Windows Phone 等平台使用。

點進 <a href="https://coronalabs.com/" target="_blank">Corona SDK</a> 官方網站後，點右上角的 Download ，會要求開帳號，申請後就可以下載了。

下載下來的是模擬器，可以開新專案後，到該資料夾，其中的 main.lua 就是程式碼的部分，我是使用 Brackets 來修改程式碼，也可以使用其他編輯器。

第一個練習的程式是一個簡易的鋼琴，學習如何新增按鈕、播放聲音。

<img class="alignnone size-full wp-image-881" src="https://catmaoblog.files.wordpress.com/2017/02/o8pie5f.png" alt="o8pie5f" width="743" height="381" />
<h1><img class="alignnone  wp-image-41" src="https://catmaoblog.files.wordpress.com/2016/10/3h9rzur.png" alt="Icon made by Popcorns Arts from www.flaticon.com" width="40" height="40" /> 學習日誌</h1>
<ul>
	<li><b>隱藏狀態列</b>
<pre><code>display.setStatusBar(display.HiddenStatusBar)</code></pre>
</li>
	<li><b>播放音效
</b>宣告一律使用 local 。
<pre><code>local Sound = audio.loadSound("Sound.mp3") -- 載入音效檔
audio.play(Sound)</code></pre>
</li>
	<li><b>新增按鈕</b>
新增按鈕前必須先匯入 widget 程式庫。 button 的詳細設定可以查閱 <a href="https://docs.coronalabs.com/api/library/widget/newButton.html" target="_blank">Corona Documentation</a> 或<a href="http://ep.ckvs.tyc.edu.tw/blog/files/6-5919-5273.php" target="_blank">第六單元 Corona 按鈕物件</a>。
<pre><code>local widget = require("widget")
local button = widget.newButton{
    -- ...
}</code></pre>
</li>
	<li><b>運算符號
</b>邏輯運算 and 、 or 、 not 。
長度運算 # ，例如 #"Hello" 得到 5 。
連結符號 .. ， "Hello, " .. " World"。</li>
	<li><b>for 迴圈</b>
下列執行結果為10 9 8 7 6 5 4 3 2 1。
<pre><code>for i = 10, 1, -1 do
    print(i)
end</code></pre>
</li>
</ul>
<h1><img class="alignnone  wp-image-42" src="https://catmaoblog.files.wordpress.com/2016/10/tpodion.png" alt="tpodion" width="40" height="40" /> 參考資料</h1>
<ul class="alt">
	<li><a href="https://docs.coronalabs.com/api/library/widget/newButton.html" target="_blank">widget.newButton() / Corona Documentation</a></li>
	<li><a href="http://ep.ckvs.tyc.edu.tw/blog/files/6-5919-5273.php" target="_blank">第六單元 Corona 按鈕物件 / 康文耀老師</a></li>
</ul>

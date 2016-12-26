<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20161219140037.1" a="E"><vh>@settings</vh>
<v t="leo.20161219153131.1"><vh>newHeadline</vh></v>
<v t="leo.20161219140037.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20161219140037.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20161219140306.1" a="E"><vh>@path content</vh>
<v t="leo.20161219135726.2"><vh>@edit 20161219.md</vh></v>
<v t="leo.20161226135027.1"><vh>@edit 20161226.md</vh></v>
</v>
<v t="leo.20161219143123.1"><vh>@edit local_publishconf.py</vh></v>
<v t="leo.20161219143200.1"><vh>@edit pelicanconf.py</vh></v>
<v t="leo.20161219143914.1"><vh>@button pelican-blog</vh></v>
<v t="leo.20161219143307.1"><vh>@button https server</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20161219140037.1"></t>
<t tx="leo.20161219140037.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20161219140037.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20161219140306.1"></t>
<t tx="leo.20161219143307.1">@language python
import os
import subprocess
import threading
import http.server, ssl

def domake():
    # build directory
    os.chdir("./../")
    server_address = ('localhost', 6443)
    httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print("6443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20161219143914.1">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o blog -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="leo.20161219153131.1">@color
@language html

&lt;!doctype html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
&lt;title&gt;    
2016 Fall cpb 計算機程式課程
&lt;/title&gt;
    &lt;meta name="description" content="A framework for easily creating beautiful presentations using HTML"&gt;
    &lt;meta name="author" content="Hakim El Hattab"&gt;
    
    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;
    
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"&gt;
    
    &lt;link rel="stylesheet" href="https://cad-lab.github.io/cadlab_data/reveal/css/reveal.css"&gt;
    &lt;link rel="stylesheet" href="https://cad-lab.github.io/cadlab_data/reveal/css/theme/black.css" id="theme"&gt;
    
    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="https://cad-lab.github.io/cadlab_data/reveal/lib/css/zenburn.css"&gt;

    &lt;!-- Printing and PDF exports --&gt;
    &lt;script&gt;
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = window.location.search.match( /print-pdf/gi ) ? 'https://cad-lab.github.io/cadlab_data/reveal/css/print/pdf.css' : 'https://cad-lab.github.io/cadlab_data/reveal/css/print/paper.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
    &lt;/script&gt;

    &lt;!--[if lt IE 9]&gt;
    &lt;script src="https://cad-lab.github.io/cadlab_data/reveal/lib/js/html5shiv.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
&lt;/head&gt;

&lt;body&gt;
&lt;div class="reveal"&gt;
&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 2016Fall CPB 計算機程式課程

### THE HTML PRESENTATION FRAMEWORK

&lt;small&gt;
Created by [40523214](http://s40523214.github.io/2016fallcp_hw/blog/)
&lt;/small&gt;

[40523214](blog/index.html)
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section&gt;
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 機械設計主題教學

### 1. 強化創造能力 
(Creative Competencies, CC1-3)
### 2. 熟習六種表達 
(Six Presentation Methods, SP1-6)
### 3. 融入協同設計 
(Collaborative Designs, CD1-4)

    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 強化創造能力

創造力至少包含三種元素:
### 1. 自學能力 (CC1, Self-learning)
### 2. 程式能力 (CC2, Programming)
### 3. 想像能力 (CC3, Imagination)

    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 機械設計六種表達

### 1. 口語表達 (SP1, Oral Presentation)
### 2. 文字表達 (SP2, Text Presentation)
### 3. 2D 表達 (SP3, 2D Presentation)
### 4. 3D 表達 (SP4, 3D Presentation)
### 5. 理論表達 (SP5, Analytical Presentation)
### 6. 實體表達 (SP6, Physical Presentation)

    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
# 融入協同設計

如何融入協同產品設計?

### 1. 了解電腦 (CD1, Computer)
### 2. 了解網路 (CD2, Network)
### 3. 了解協同設計適用之軟硬體工具 (CD3, Tools)
### 4. 執行協同專案 (CD4, Project)


    &lt;/script&gt;
&lt;/section&gt;


						
&lt;/section&gt;
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
## 使用 iframe 導入影片

### Markdown 沒有 iframe

&lt;iframe src="https://player.vimeo.com/video/183950627" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
## 計算機程式課程

計算機程式課程的教學主題:

  * CC1-自學能力 (Git, Github, Python)
  * CC2-程式能力 (Python 讀檔, 排序, 2D 繪圖, 2D 動畫)
  * SP1-口語表達 (自拍投影片 on Vimeo and Youtube)
  * P2-文字表達 (Wiki 與 Blog on Github Pages)
  * SP3-2D 表達 (2D 流程圖)
  * SP4-3D 表達 (自拍操作影片 on Vimeo and Youtube)
  * CD3-協同工具 (Git, Leo Editor 與 Github)
  * CD4-協同專案 (網際遊戲 on Github Pages)

    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section&gt;
    &lt;h2&gt;github_intro&lt;/h2&gt;
    &lt;iframe src="https://player.vimeo.com/video/183950627" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
    &lt;p&gt;
    &lt;a href="https://vimeo.com/183950627"&gt;2016-09-23_cpb_github_intro&lt;/a&gt; from 
    &lt;a href="https://vimeo.com/user24079973"&gt;虎尾科大機械設計工程&lt;/a&gt; on 
    &lt;a href="https://vimeo.com"&gt;Vimeo&lt;/a&gt;.
    &lt;/p&gt;
&lt;/section&gt;
&lt;section&gt;
    &lt;h2&gt;fork_pull_requests&lt;/h2&gt;
    &lt;iframe src="https://player.vimeo.com/video/183954581" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
    &lt;p&gt;
    &lt;a href="https://vimeo.com/183954581"&gt;2016-09-23_fork_pull_requests&lt;/a&gt; from 
    &lt;a href="https://vimeo.com/user24079973"&gt;虎尾科大機械設計工程&lt;/a&gt; on 
    &lt;a href="https://vimeo.com"&gt;Vimeo&lt;/a&gt;.
    &lt;/p&gt;
&lt;/section&gt;
&lt;!-- Example of nested vertical slides --&gt;
&lt;section&gt;
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
## 使用 iframe 導入影片

### Markdown 沒有 iframe

&lt;iframe src="https://player.vimeo.com/video/183950627" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section&gt;
    &lt;h2&gt;Vertical Slides&lt;/h2&gt;
    &lt;p&gt;Slides can be nested inside of each other.&lt;/p&gt;
    &lt;p&gt;
    Use the &lt;em&gt;Space&lt;/em&gt; key to navigate through all slides.
    &lt;/p&gt;
    &lt;br&gt;
    &lt;a href="#" class="navigate-down"&gt;
        &lt;img width="178" height="238" data-src="https://s3.amazonaws.com/hakim-static/reveal-js/arrow.png" alt="Down arrow"&gt;
    &lt;/a&gt;
&lt;/section&gt;
&lt;/section&gt;
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
## Markdown support

Write content using inline or external Markdown.
Instructions and more info available in the [readme](https://github.com/hakimel/reveal.js#markdown).

```
&lt;section data-markdown&gt;
  ## Markdown support

  Write content using inline or external Markdown.
  Instructions and more info available in the [readme](https://github.com/hakimel/reveal.js#markdown).
&lt;/section&gt;
```
    &lt;/script&gt;
&lt;/section&gt;


						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
## 利用 Markdown 寫投影片
以下利用 Markdown 格式展示 Python 程式碼:
```
# use threading and subprocess to threading the make process
import os
import subprocess
import threading

def domake():
    
    path = "../exposed/api/exposed"
    ubuntu = "../Ubuntu"
    
    # create obj path
    
    if not os.path.exists(path+"/../obj"):
        os.makedirs(path+"/../obj")
    
    subprocess.call(["make", "clean"], cwd=path)
    subprocess.call("make", cwd=path)
    subprocess.call(["cp", "{libslvs.so, _slvs.so, slvs.py}", ubuntu], cwd=path)
    subprocess.call(["python3", "circle_ex.py"], cwd=path+"/"+ubuntu)
    
make = threading.Thread(target=domake)
make.start()
```
    &lt;/script&gt;
&lt;/section&gt;



						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
# h1 標題

段落用空白行隔開

第2段. *斜體*, **粗體**, 條列:

  * 第1項
  * 第2項
  * 第3項

上述條列, 星號前有3個空白

&gt; 引言則前面加上大於的符號
&gt; 其中也可以包含空白行
&gt;
&gt; 這是最後一行
    &lt;/script&gt;
&lt;/section&gt;



						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
# 影像檔案引用

and images can be specified like so:

![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)
    &lt;/script&gt;
&lt;/section&gt;



						
&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
# 數學符號與方程式

Inline math equations go in like so: $\omega = d\phi / dt$. Display
math should get its own line and be put in in double-dollarsigns:

$$I = \int \rho R^{2} dV$$
    &lt;/script&gt;
&lt;/section&gt;



						
&lt;section&gt;
    &lt;h2&gt;Pretty Code&lt;/h2&gt;
    &lt;pre&gt;
        &lt;code class="hljs" data-trim contenteditable&gt;
        function linkify( selector ) {
          if( supports3DTransforms ) {
        
            var nodes = document.querySelectorAll( selector );
        
            for( var i = 0, len = nodes.length; i &amp;lt; len; i++ ) {
              var node = nodes[i];
        
              if( !node.className ) {
                node.className += ' roll';
              }
            }
          }
        }
        &lt;/code&gt;
    &lt;/pre&gt;
    &lt;p&gt;
    Code syntax highlighting courtesy of &lt;a href="http://softwaremaniacs.org/soft/highlight/en/description/"&gt;highlight.js&lt;/a&gt;.
    &lt;/p&gt;
&lt;/section&gt;
			
&lt;section&gt;	
    &lt;h2&gt;Marvelous List&lt;/h2&gt;
    &lt;ul&gt;
    &lt;li&gt;No order here&lt;/li&gt;
    &lt;li&gt;Or here&lt;/li&gt;
    &lt;li&gt;Or here&lt;/li&gt;
    &lt;li&gt;Or here&lt;/li&gt;
    &lt;/ul&gt;
&lt;/section&gt;

					
&lt;section&gt;
    &lt;h2&gt;Fantastic Ordered List&lt;/h2&gt;
    &lt;ol&gt;
    &lt;li&gt;One is smaller than...&lt;/li&gt;
    &lt;li&gt;Two is smaller than...&lt;/li&gt;
    &lt;li&gt;Three!&lt;/li&gt;
    &lt;/ol&gt;
&lt;/section&gt;


					
&lt;section&gt;
    &lt;h2&gt;Export to PDF&lt;/h2&gt;
    &lt;p&gt;
    Presentations can be &lt;a href="https://github.com/hakimel/reveal.js#pdf-export"&gt;exported to PDF&lt;/a&gt;, here's an example:
    &lt;/p&gt;	
    &lt;iframe data-src="https://www.slideshare.net/slideshow/embed_code/42840540" width="445" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:3px solid #666; margin-bottom:5px; max-width: 100%;" allowfullscreen&gt; &lt;/iframe&gt;
&lt;/section&gt;				
&lt;section&gt;
&lt;h2&gt;Global State&lt;/h2&gt;
&lt;p&gt;
Set &lt;code&gt;data-state="something"&lt;/code&gt; on a slide and 
&lt;code&gt;"something"&lt;/code&gt;
will be added as a class to the document element when the slide is open. This lets you
apply broader style changes, like switching the page background.
&lt;/p&gt;
&lt;/section&gt;

		
&lt;section data-state="customevent"&gt;	
    &lt;h2&gt;State Events&lt;/h2&gt;
    &lt;p&gt;
    Additionally custom events can be triggered on a per slide basis by binding to the &lt;code&gt;data-state&lt;/code&gt; name.
    &lt;/p&gt;
    &lt;pre&gt;
        &lt;code class="javascript" data-trim contenteditable style="font-size: 18px;"&gt;
        Reveal.addEventListener( 'customevent', function() {
            console.log( '"customevent" has fired' );
        } );
        &lt;/code&gt;
    &lt;/pre&gt;
&lt;/section&gt;					
&lt;/div&gt;

&lt;/div&gt;

&lt;script src="https://cad-lab.github.io/cadlab_data/reveal/lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="https://cad-lab.github.io/cadlab_data/reveal/js/reveal.js"&gt;&lt;/script&gt;
&lt;script&gt;
        // More info https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,
            center: true,

            transition: 'slide', // none/fade/slide/convex/concave/zoom

            // More info https://github.com/hakimel/reveal.js#dependencies
            dependencies: [
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/zoom-js/zoom.js', async: true },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/notes/notes.js', async: true },
                { src: 'https://cad-lab.github.io/cadlab_data/reveal/plugin/math/math.js', async: true }
            ]
        });
&lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;

</t>
</tnodes>
</leo_file>

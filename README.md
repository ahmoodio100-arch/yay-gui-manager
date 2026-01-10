<!DOCTYPE html>
<html lang="en" style="scroll-behavior: smooth;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YAY-GUI-MANAGER</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
            line-height: 1.6;
            color: #24292e;
            max-width: 880px;
            margin: 0 auto;
            padding: 40px 20px;
            background-color: #ffffff;
        }
        /* Anchor for Top */
        #top {
            position: absolute;
            top: 0;
        }
        .header {
            text-align: center;
            border-bottom: 1px solid #eaecef;
            padding-bottom: 30px;
            margin-bottom: 30px;
        }
        .logo {
            width: 180px;
            margin-bottom: 15px;
        }
        .badges {
            margin: 20px 0;
        }
        .badges img {
            margin: 2px;
        }
        h1, h2, h3 {
            border-bottom: 1px solid #eaecef;
            padding-bottom: 0.3em;
            margin-top: 24px;
            margin-bottom: 16px;
            font-weight: 600;
        }
        a {
            color: #0366d6;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        code {
            padding: 0.2em 0.4em;
            margin: 0;
            font-size: 85%;
            background-color: rgba(27,31,35,0.05);
            border-radius: 3px;
            font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
        }
        pre {
            padding: 16px;
            overflow: auto;
            font-size: 85%;
            line-height: 1.45;
            background-color: #f6f8fa;
            border-radius: 6px;
            margin-bottom: 16px;
        }
        .demo-container {
            margin: 20px 0;
            text-align: center;
        }
        .demo-gif {
            max-width: 100%;
            border-radius: 6px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border: 1px solid #ddd;
        }
        hr {
            height: 0.25em;
            background-color: #e1e4e8;
            border: 0;
            margin: 24px 0;
        }
        .nav-links {
            margin: 20px 0;
            font-weight: bold;
        }
        .nav-links a {
            margin: 0 10px;
        }

        /* Floating Go to Top Button */
        #back-to-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background-color: #0080ff;
            color: white;
            padding: 10px 15px;
            border-radius: 50px;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            transition: transform 0.2s, background-color 0.2s;
            z-index: 1000;
        }
        #back-to-top:hover {
            background-color: #005bb7;
            transform: translateY(-3px);
            text-decoration: none;
        }
    </style>
</head>
<body>

    <div id="top"></div>

    <div class="header">
        <img src="https://files.catbox.moe/kd0wv5.png" alt="Yay GUI Manager logo" class="logo">
        <h1>YAY-GUI-MANAGER</h1>
        <p><em>Streamlining Package Management with Effortless Control</em></p>

        <div class="badges">
            <a href="https://github.com/ahmoodio/yay-gui-manager"><img src="https://img.shields.io/github/last-commit/ahmoodio/yay-gui-manager?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit"></a>
            <a href="https://github.com/ahmoodio/yay-gui-manager"><img src="https://img.shields.io/github/languages/top/ahmoodio/yay-gui-manager?style=flat&color=0080ff" alt="repo-top-language"></a>
            <a href="https://github.com/ahmoodio/yay-gui-manager/blob/main/LICENSE"><img src="https://img.shields.io/github/license/ahmoodio/yay-gui-manager?style=flat&color=0080ff" alt="license"></a>
        </div>

        <div class="nav-links">
            <a href="#demo">Demos</a> • 
            <a href="#features">Features</a> • 
            <a href="#installation">Installation</a> • 
            <a href="#desktop">Desktop Launcher</a>
        </div>
    </div>

    <h2 id="demo">🎥 Demo GIFs</h2>
    <div class="demo-container">
        <h3>🔍 Search & Install</h3>
        <img src="https://files.catbox.moe/2izcwr.gif" class="demo-gif" alt="Search Demo">
    </div>
    <hr>
    <div class="demo-container">
        <h3>📦 Installed Packages</h3>
        <img src="https://files.catbox.moe/w32hbc.gif" class="demo-gif" alt="Installed Tab">
    </div>
    <hr>
    <div class="demo-container">
        <h3>🔄 Updates Tab</h3>
        <img src="https://files.catbox.moe/u0i2h2.gif" class="demo-gif" alt="Updates Tab">
    </div>

    <h2 id="features">✨ Features</h2>
    <ul>
        <li><strong>Search & Install</strong> – uses <code>pacman</code> and <code>yay</code></li>
        <li><strong>Installed Tab</strong> – list explicitly installed packages</li>
        <li><strong>Updates Tab</strong> – view and batch update packages</li>
        <li><strong>Terminal Integration</strong> – works with Konsole, Kitty, and more</li>
    </ul>

    <h2 id="installation">📥 Installation</h2>
    <pre><code>yay -S yay-gui-manager-git</code></pre>

    <h2 id="desktop">🎛️ Desktop Launcher</h2>
    <pre><code>chmod +x install-desktop.sh
./install-desktop.sh</code></pre>

    <h2 id="license">📄 License</h2>
    <p>MIT License. See <a href="https://github.com/ahmoodio/yay-gui-manager/blob/main/LICENSE">LICENSE</a>.</p>

    <a href="#top" id="back-to-top">↑ Back to Top</a>

</body>
</html>

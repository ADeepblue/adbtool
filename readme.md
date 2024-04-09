ADBTool 是一个用于连接到 Android 设备的工具，它提供了一些有用的功能，如文件传输和应用安装。

功能介绍:

文件传输 (adbtransfer.bat)：连接上设备后，可以使用 adbtransfer.bat 脚本来快速传输文件。这个脚本简化了文件传输的流程，使得将文件从计算机传输到 Android 设备变得更加方便。

应用安装 (adbinstall)：使用 adbinstall 命令可以直接安装 APK 文件到连接的设备上。这个命令简化了应用的安装过程，节省了手动复制和粘贴 APK 文件的时间。

设置方法：

连接设备：首先，确保你的 Android 设备通过 USB 连接到计算机，并且已经启用了开发者选项和 USB 调试功能，支持的设备也可以通过无线调试开启端口连接，但需要保持电脑设备和Android设备连接在同一局域网下，并用以下命令调试连接
![Image text](https://github.com/ADeepblue/adbtool/ImgFile/ExampleForSetting.png)

**adb connect [Your Android privide your IP address and port]**

````batch
adb connect 192.168.0.1:12345
````


使用 ADBTool：一旦设置完成，你可以在拖动文件至 adbtransfer.bat 和 adbinstall 命令来传输文件和安装应用。

注意事项：

部分 Android 设备可能不支持某些功能，特别是在进行文件传输和应用安装时。在使用 ADBTool 之前，请确保你的设备与该工具兼容。

在这个示例设置中，我们展示了如何配置 ADB 工具以便连接到 Android 设备。根据你的设备型号和操作系统版本，可能需要调整一些设置才能正确使用 ADBTool。
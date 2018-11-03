1. 在Ubuntu14.04.5系统下提取DSDT和SSDT (系统默认无任何设置减小对提取结果的影响)
提取命令如下
sudo cp -R /sys/firmware/acpi/tables Ubuntu14045
参数描述: 
	sudo cp -R 管理员运行cp命令 -R 拷贝目录并且递归拷贝子目录
	
	/sys/firmware/acpi/tables 系统在初始化的时候已经生成好的DSDT和SSDT文件
	其中包括其他的一些描述文件 我们只需要 SSDT* 文件 和 DSDT ,注意是没有后缀名称的
	其他的文件移除就好, /sys/firmware/acpi/tables/dynamic 下也有几个文件SSDT*文件 
	上面提到的*号上代表自然数字123...
	
	Ubuntu14045 这个是拷贝的目录名称会把 /sys/firmware/acpi/tables 目录下的文件和子目录
	拷贝到 Ubuntu14045 目录下
	
	最后移除无用的文件，得到的文件如下:
	DSDT	SSDT1	SSDT2	SSDT3	...	DSDT14
	重新命名加上.aml后缀有数字的后缀改为 -1.aml数字前面加一个 - 以便区分

2. 进入macos系统 我的系统是(10.12.6) 获取iasl命令行工具 (百度或google)
	我执行命令：iasl -v
	得到如下结果：
	Intel ACPI Component Architecture
	ASL+ Optimizing Compiler/Disassembler version 20180427(RM)
	Copyright (c) 2000 - 2018 Intel Corporation

3. 反编译所有.aml文件 命令如下 iasl -da -dl *.aml 它会生成 与原.aml后缀名一样的.dsl文件
那么恭喜你 反编译成功了....

4.在 macos下下载 dsl文件编辑工具 MaciASL 是国外的开发者写的一个软件
里面包含了常用DSDT和SSDT补丁来解决黑苹果无法正常工作的问题

5.自此我已经把步骤写完了，剩下的就是对dsl文件的编辑， 熟悉dsl语法，修改dsl文件来让你的黑苹果工作的更好. 黑苹果难在各个细节的地方。一步一步。一点一点有耐心的黑下去，可以对macos系统工作机制和原来搞清楚，对硬件的了解，macos如何跟硬件打交道，这些东西是一路学习黑苹果的最宝贵的东西。最后如果你没有耐心，
那么我还是建议直接买一个 白苹果吧，毕竟那个是官方授权的，无任何问题的稳定的系统。



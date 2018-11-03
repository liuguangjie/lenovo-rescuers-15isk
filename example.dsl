/**
  这个文件只做参考用，讲解和说明
  了解dsl编程的一些基本的格式
  讲解 MACiASL 编程工具补丁是怎么使用的，参数是说明
  先看看相关概念：
    https://blog.csdn.net/huangkangying/article/details/8007656
    https://blog.csdn.net/tom__mao__/article/details/51724568
*/

// DefinitionBlock 函数 一个文件的入口 类似于编程语言中的main入口
// dsl描述文件中分作用域的这个函数就相当于根作用域
/***
参数详解
    1. 输出文件名
    2. 第二个参数 和第三个参数配合介绍
        如果第二个参数是"DSDT" 第三个参数就一定是0x02 
        如果第二个参数是其他字符串 那么 第三个参数就没有限制了
    3.  引用第二个参数说明
    4.  OEMID
    5.  表ID
    6.  OEM版本
*/
DefinitionBlock ("example.aml", "SSDT", 1992, "liujie", "table-001", 0x00000001)
{    
    // External (_PR_.BGIA, IntObj) 是引用外部 SSDT 或 DSDT 文件中的方法

    //不同属性的东西放在对应的作用域下 

    //ACPI的事件 描述入口
    Scope(\_GPE)
    {
        //do something
    }

    //处理器 描述入口
    Scope(\_PR)
    {
        //do something
    }

    //所有的设备和总线 描述入口
    Scope (\_SB)
    {
        //do something
        //简单描述设备
        Device (PCI0)
        {

        }

        //方法定义必须在 Scope定义，这是规定
        //表示有2个输入参数 最多只能传递8个参数（Arg0~Arg7），只能用这8个名字，不能自己起名字
        Method(my_mmethod, 2)  
        {   //求2个数的和
            Add(Arg0, Arg1, Sum)
            Return (Sum)
        }
        // Integer 
        // 在同一层作用域 调用方法 
        my_mmethod(0x5, 0x3)
        //不在同一层调用 带上作用域
        // 类型必须是16进制
        \_SB.my_mmethod(0x5, 0x3) 
    }

    //系统指示灯 描述入口
    Scope (\_SI)
    {
        //do something
    }

    //温度 描述入口
    Scope (\_TZ)
    {
        //do something
    }
}
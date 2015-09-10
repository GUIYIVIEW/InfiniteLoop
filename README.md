# InfiniteLoop
自己写的一个无限循环轮播图

网上还是有这些相似类型的无限循环图的Demo的，但是总改别人的有点麻烦，而且用到自己项目上也不一定适用。
所以就略微自己写一个吧，感觉自己封装起来还是很粗糙的样子，>.< ....
里面的代码还是简单明了的，注释也有写到。
原理也相对简单：假如是需要展示3张图片的话，scrollview的contentSize就设置为（3+2）张图片的大小。contentSize为0的位置实际是加载最后1张图片；contentSize为4的位置实际加载第1张图片。
无限滚动是给用户一种错觉。
另外要注意的是NSTimer的使用，因为一旦定时器被停止,就不能再次被使用,所以停止之后立即清空。使用的时候再实例。
而在实际中，可能轮播图的数据（图片的地址路径，不同的图片跳去不同的界面，id什么等等。。。）是来自后台服务器，我们可以把存有图片的数据的Model装进数组传进LoopScrollView。修改LoopScrollView.m里的加载图片的地方。
还可以修改 - (void)tapScrollPicture:(int)pictureTag 这个代理方法。将传进去的model替代（int）。

好了，大概介绍就这样，如果你发现有错误的地方、有不明白的地方、或者更好的改进的地方，欢迎指正，一起学习进步。或者联系我：ljhang1@163.com  thank you～～


![](https://github.com/ljhang/InfiniteLoop/raw/master/looper.gif) 

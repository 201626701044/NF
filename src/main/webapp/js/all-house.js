window.onload=function () {
    //设置list宽度       根据需要设置宽度
    //获取imglist
    var imgList=document.getElementById('imgList')

    //获取所有img标签
    var imgArr=document.getElementsByTagName("img")

    //设置 imgList的宽度
    imgList.style.width=245*imgArr.length+"px"


    //设置导航按钮居中
    //获取navDiv
    var  navDiv=document.getElementById("navDiv")

    //获取outer
    var outer=document.getElementById("outer")

    //设置navDiv的left的值
    navDiv.style.left=(outer.offsetWidth-navDiv.offsetWidth)/2+"px";


    //默认显示图片的索引
    var index=0;

    //获取所有的a
    var allA=document.getElementsByTagName('a')

    //默认选中的效果
    allA[index].style.backgroundColor="red";


    //所有的超链接绑定响应函数
    for(var i=0;i<allA.length;i++){
        //为每一个超链接编号
        allA[i].num=i;
        //超链接绑定响应函数
        allA[i].onclick=function () {
            //获取所点击超链接的索引,并设置为index
            index=this.num;
            //切换图片
            // imgList.style.left=-245*index+"px";

            setA();
            //使用move函数进行切换
            move(imgList,"left",-245*index,20,function () {

            });
        }
    }

    //开启自动切换
    autoChange();

    //创建方法，设置正在选中的a
    function setA() {
        //遍历所有的a,将背景设置成橙色
        for (var i=0;i<allA.length;i++){
            allA[i].style.backgroundColor="";
        }
        //将选中的a设为红色
        allA[index].style.backgroundColor="red";
    }

    //创建函数开启自动切换
    function autoChange() {
        //开启定时器，用来定时切换图片
        setInterval(function () {

            //使所有自增
            index++;

            //判断index的值
            index%=imgArr.length;

            //执行动画，切换图片
            move(imgList,"left",-245*index,20,function () {
                //修改导航点
                setA();
            });
        },3000)
    }
}
// window.onload=function () {
//     show(1);
// }
// function show(num)
// {
//     for(var i=1; i<=5; i++)
//     {
//         document.getElementById("d"+i).style.display="none";
//     }
//     document.getElementById("d"+num).style.display="block";
// }

window.onload=function () {

    var lis=document.getElementsByClassName('lis');
    var  divs=document.getElementsByClassName('divs')

    for(var i=0; i<lis.length; i++){
        //循环把i的值赋值给li的index
        lis[i].index = i;
        lis[i].onclick = function(){
            //移除每个li上存在的类
            // for(var j=0; j<lis.length; j++){
            //     lis[j].className = "hover";
            // }
            // //给当前li添加类
            // this.className ="hover";

            //隐藏每个div
            for(var i=0; i<divs.length; i++){
                divs[i].style.display="none";
            }
            //
            //根据索引显示相应的div
            divs[this.index].style.display = "block";
        }
    }
}


// window.onload=function () {
//     show(1);
// }
// function show(num)
// {
//     for(var i=1; i<=5; i++)
//     {
//         document.getElementById("d"+i).style.display="none";
//     }
//     document.getElementById("d"+num).style.display="block";
// }
//

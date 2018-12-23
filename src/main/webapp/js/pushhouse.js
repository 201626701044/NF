window.onload=function () {


    var oneSel = document.getElementById("One");
    var twoSel = document.getElementById('Two');
    var threeSel = document.getElementById('Three');

    oneSel.onchange = function () {
        changeTwoSel()
    }
    twoSel.onchange = function () {
        changeThreeSel()
    }

    var oneArray = ['请选择', '江西', '湖南'];
    var twoArray = [
        ['请选择'],
        ['南昌', '宜春', '九江'],
        ['长沙', '岳阳', '张家界'],

    ];
    var threeArray = [
        [
            ['请选择']
        ],
        [
            ['青山湖', '东湖', '瑶湖'],
            ['樟树', '丰城', '宜春'],
            ['武宁', '修水', '永修']
        ],
        [
            ['长沙县', '岳麓区', '浏阳市'],
            ['岳阳楼区', '平江区', '岳阳区'],
            ['永定区', '桑植区', '慈利县']
        ],

    ];

    var str = '';
//下拉框一初始选项,
// 遍历第一个数组，为第一个select下拉菜单准备option字符串内容。
    for (var index = 0; index < oneArray.length; index++) {
        str += "<option value='" + index + "'>" + oneArray[index] + "</option>";
    }
//生成下拉菜单选项
    oneSel.innerHTML = str;

//去掉不影响功能，但不去掉初始化时三个框都会存在内容
    str = '';
//下拉框二 初始选项 ， 初始选项
    for (var index = 0; index < twoArray[0].length; index++) {
        str += "<option value='" + index + "'>" + twoArray[0][index] + "</option>";
    }
    twoSel.innerHTML = str;

    str = '';
//下拉框三初始选项，  初始选项
    for (var index = 0; index < threeArray[0].length; index++) {
        str += "<option>" + threeArray[0][0][index] + "</option>";
    }
    threeSel.innerHTML = str;

//动态改变下拉框二选项
// 根据第一个select下拉菜单的选中项，来设置第二个下来菜单的option项的内容
    function changeTwoSel() {
        //首先将第二个下拉菜单的内容清空
        //   twoSel.innerHTML = '';
        str = '';

        //将获取的第一个select下拉菜单的值转换为整数
        // 神奇的parsetInt功能
        var twoSelValue = parseInt(oneSel.value);

        //假如我们选取的是第一个select下拉菜单第三项，对应值是2的那一项。
        //那么对应的第二个select下拉菜单的数据就是twoArray数组中['2.1', '2.2', '2.3']这一项。
        //通过for循环遍历，将其中的值生成为option项。
        try {
            for (var index = 0; index < twoArray[twoSelValue].length; index++) {
                str += "<option value='" + index + "'>" + twoArray[twoSelValue][index] + "</option>";
            }
        } catch (ex) {
            str = "<option>无选项</option>";
        }
        twoSel.innerHTML = str;
        // changeThreeSel();
    }

//动态改变下拉框三选项
    function changeThreeSel() {
        threeSel.innerHTML = '';
        str = '';
        //将获取的  第一个和第二个 select 下拉菜单的值转换为整数
        var twoSelValue = parseInt(oneSel.value);
        var threeSelValue = parseInt(twoSel.value);

        try {
            for (var index = 0; index < threeArray[twoSelValue][threeSelValue].length; index++) {
                str += "<option value='" + index + "'>" + threeArray[twoSelValue][threeSelValue][index] + "</option>";
            }
        } catch (ex) {
            str = "<option>无选项</option>";
        }
        threeSel.innerHTML = str;
    }

}
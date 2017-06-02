
// 页面加载完成后，为select填充option
$(function(){
    var yearList = [
        '2017年',
        '2016年',
        '2015年',
        '2014年'
    ];
    var timeList = [
        ['期数1','期数2','期数3','期数4'],     // 0
        ['期数11','期数52','期数43','期数24'],  // 1
        ['期数21','期数12','期数53','期数14'],  //  2
        ['期数31','期数22','期数23','期数41']   //  3
    ];
    // 添加年份
    var html = '';
    for(var i=0;i<yearList.length;i++){
        var y = yearList[i];
        html +=`<option value='${i}'>${y}</option>`
    }
    // 遍历结束后，追加到对应sel
    $('#selOne').append(html);
    // 当选中项发生改变时
    $('#selOne').change(function(){
        // this --> 当前选中项  DOM对象
        // this.value -->当前选中项的值-->下标
        // 通过当前选中项的值找到对应的time的下标
        if( $(this).val()==='-1' )
        return;
        var times = timeList[ this.value ];
        // console.log(times.length)
        var html='';
         html+=`<option value='-1'>选择期数</option>`;
        for(var i=0;i<times.length;i++){
            html += `<option value='${i}'>${times[i]}</option>`;
        }
        $('#selTwo').html(html)
        })
// 第一个用append追加，第二个用html追加
})


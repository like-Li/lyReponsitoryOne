
// 页面加载发送ajax请求
$('#heath').click(function(){
    var key = location.search.split('=')[1];


    $.ajax({
        type:'GET',
        url:'/list?id='+key,
        success:function(result){
            //  console.log(result);

            var html = '';
            for(var v of result){
                html+=`
    <li>
    <span>${v.ctime}</span>
    <a href="">${v.content}</a>
    </li>
    `;
            }
            // 添加到页面中
            $('#newListHealth').html(html);
        },

        error:function(){
            alert('发送请求失败！111');
        }
    });

});



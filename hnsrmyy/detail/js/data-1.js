
// ҳ����ط���ajax����
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
            // ��ӵ�ҳ����
            $('#newListHealth').html(html);
        },

        error:function(){
            alert('��������ʧ�ܣ�111');
        }
    });

});



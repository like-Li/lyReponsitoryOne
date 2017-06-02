
// µã»÷µÇÂ¼ÊÂ¼þ
$('#ubtnL').click(function(){
    var uname = $('#unameL').val();
    var upwd = $('#upwdL').val();
    console.log(uname)
    $.ajax({
        type:'POST',
        url:'./data/login.php',
        data:{n:uname,p:upwd},
        success:function(data){
            console.log(data)
        }
    });
});

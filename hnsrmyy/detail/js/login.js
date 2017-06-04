// 点击登录事件
$('#ubtnL').click(function(){
    var uname = $('#unameL').val();
    var upwd = $('#upwdL').val();
    $.ajax({
        type:'POST',
        url:'data/login.php',
        data:{n:uname,p:upwd},
        success:function(data){
            // console.log(data)
            if(uname==""||upwd==""){
                $('#login h2').html('用户名或密码不能为空！').css('color','red');
            }else if(data>0){
                // 提交表单
                $('#form1').submit();
                $('div.modal').hide();
            }else{
                $('#login h2').html('用户名或密码不正确！').css('color','red');
            }
        },
        error:function(){
            alert('error')
        }
    });
});



// 登录点击显示
$('#loginA').click(function(){
    $('#login').show();
});
// 登录点击取消
$('#closeL').click(function(){
    $('#login').hide();
});
// 模态框隐藏
$('#login').click(function(e){
	var target = e.target;
	if($(target).hasClass('model-login')){
		$('#login').hide();
	}
});
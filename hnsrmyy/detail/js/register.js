// 注册
$('#registA').click(function(){
    $('#regist').show();
});
//取消注册
$('span.close').click(function(){
    $('#regist').hide();
});
// 注册时格式验证

    var txtName = document.getElementById('unameR');
    var pwdName = document.getElementById('upwdR');

    // 正则
    function vali(txt,reg){
        // 提示div
        //     var div = $(txt).parent.next.child;
        // txt.parent.next.firstElementChild;
        var div = txt.parentNode
            .nextElementSibling
            .firstElementChild;
        if(reg.test(txt.value)){
            div.className='vali_success';
            return true;
        }else{
            div.className='vali_fail';
            return false;
        }
    }
    // 失去焦点时
    txtName.onblur=function(){
        vali(this,/^[0-9a-zA-Z]{6,}$/);
    };
    pwdName.onblur=function(){
        vali(this,/^\w{6,12}$/);
    };
    // 点击事件
    var btn = document.getElementById('registBtn');
    btn.onclick=function(){
        // 如果姓名文本框出错
        if(!vali(txtName,/^[0-9a-zA-Z]{6,}$/)){
            var div = txtName.parentNode.nextElementSibling.firstElementChild;
            div.className = 'vali_fail';
        }else if(!vali(pwdName,/^\w{6,12}$/)){
            div = pwdName.parentNode.nextElementSibling.firstElementChild;
            div.className = 'vali_fail';
        }else{
            var form = document.getElementById('form2');
            var modal = document.querySelector('#regist>.modal');
            var name = txtName.value();
            var pwd = pwdName.value();
            modal.style.display='none';
            form.submit();
            // 发送ajax请求
            $.ajax({
                type:'POST',
                url:'../data/userAdd.php',
                data:{number:number,name:name,pwd:pwd},
                success:function(data){
                    if(data>0){
                        alert('注册成功！');
                    }else{
                        alert('注册失败');
                    }
                },
                error:function(){
                    alert('error')
                }
            });
        }
    }

//更换验证码
function changeCode(obj){
    $(obj).children("img").attr("src","data/checkCode.php?rt="+new Date().getTime());
}
// 模态框隐藏
$('#regist').click(function(e){
	var target = e.target;
	if($(target).hasClass('model-register')){
		$('#regist').hide();
	}
});

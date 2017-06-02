

if(!window.jQuery){
    throw new Error('moreColor.js文件依赖于jQuery.js')
}
// 轮播
jQuery.fn.carousel =function(){
    // this > 当前调用函数对象 carousel-inner
    var interval=3000,  // 定时器执行任务时长
        duration=500, // 图片滑动效果
        imgList = this.children('.item'),
        cur = 0,    // 当前显示的图片
        next =1;    // 即将要显示的图片
   //头部 轮播 对应的 圆饼
   var topLiList = $(".carousel-detail .carousel-ul li");
  //头部 轮播 对应的 圆饼
  var footLiList = $(".fly-left-img .left-fly-index li");
    // 定时器
   setInterval(slide,interval);
    // 图片轮换函数
    function slide(){
      //头部圆饼运动
      topLiList.eq(next).addClass("li-on").siblings(".li-on").removeClass("li-on");
      //页脚圆饼运动
      footLiList.eq(next).addClass("li-on").siblings(".li-on").removeClass("li-on");
        // 当前图片滑动
        imgList.eq(cur).animate({
            left:'-100%'
        },duration,function(){
            $(this).removeClass('active');
        });
        imgList.eq(next).addClass(' active').css('left','100%').animate({left:'0'},duration);
        cur =next;
        next ++;
        if(next>=imgList.length){
            next =0;
        }
    }

};
// 自动调用
$('#bannerCar .carousel-inner').carousel();

$('.left-img-a .carousel-inner').carousel();

// 登录点击显示
$('#loginA').click(function(){
    $('#login').show();
});
// 登录点击取消
$('#closeL').click(function(){
    $('#login').hide();
});

// 注册
$('#registA').click(function(){
    $('#regist').show();
});
//取消注册
$('span.close').click(function(){
    $('#regist').hide();
});
// 注册时格式验证
(function(){
    var txtName = document.getElementById('unameR');
    var pwdName = document.getElementById('upwdR');
    var number = document.getElementById('numberR');

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
    // 手机号码验证
    function n(txt,reg){
        var div = document.querySelector('#valiR p');
        if(reg.test(txt.value)){
           div.className='vali_success';
        }else{
            div.innerHTML="手机号格式错误！";
            div.className='vali_fail';
        }
    }
    // 失去焦点时
    txtName.onblur=function(){
        vali(this,/^[0-9a-zA-Z]{6,}$/);
    };
    pwdName.onblur=function(){
        vali(this,/^\w{6,12}$/);
    };
    number.onblur=function(){
        n(this,/^1[34578]\d{9}$/);
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
        }else if(!vali(number,/^1[34578]\d{9}$/)){
            div = document.getElementById('valiR p');
            div.innerHTML='手机号格式错误!'
        }else{
            var form = document.getElementById('form2');
            var modal = document.querySelector('#regist>.modal');
            var number = number.value();
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


})();
// 点击页面取消登录和注册
$('div.modal').on('click','not:(".modal-dialog")',function(){

});











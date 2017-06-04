

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















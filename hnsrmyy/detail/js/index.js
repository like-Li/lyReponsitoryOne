// 定义showSub/hideSub,用于显示/隐藏li下的二级菜单
(function () {
  function showSub() {
    this.lastElementChild.style.width = "600px";
    this.lastElementChild.style.opacity = "1";
    // a处于被hover状态
    this.firstElementChild.className = "hover";
  }

  function hideSub() {
    this.lastElementChild.style.width = "0";
    this.lastElementChild.style.opacity = "0";
    // a处于被hover状态
    this.firstElementChild.className = "";
  }

// 找到触发元素（父元素li）,遍历每个li
  var lis = document.querySelectorAll("div.banner-left>ul>li");
  for (var i = 0; i < lis.length; i++) {
    //(function (i) {
      // 给当前遍历到的元素添加移入事件
      lis[i].addEventListener(
        "mouseover", showSub
      );
      // 鼠标移出
      lis[i].addEventListener(
        "mouseout", hideSub
      );
    //})(i);
  }
})();


// 按钮颜色
$('[class*=btnj]').on('mouseenter', function () {
  $(this).css('background', '#FF7544')
}).mouseleave(function () {
  $(this).css('background', '')
});


// 轮播按钮
//css中优先级的问题，这里不需要再次解决
$('ul[class*=index0]>li').mouseenter(function () {
  if (!$(this).hasClass('li-on')) {
    $(this).siblings('.li-on').removeClass();
    $(this).addClass('li-on')
  }
});


// nav
$('nav#nav').on('mouseenter','.nav-left .nav-left-02',function(){
    console.log(this)
    $(this).addClass(' bg').next('.banner-left').addClass(' show')
});
$('nav#nav').on('mouseout',function(){
    $(this).find('.nav-left-02').removeClass(' bg');
    $(this).find('.banner-left').removeClass(' show')
});

// header弹出框
$('div.nav-left-01').on('mouseenter',function(){

});
















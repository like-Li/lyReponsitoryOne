// ����showSub/hideSub,������ʾ/����li�µĶ����˵�
(function () {
  function showSub() {
    this.lastElementChild.style.width = "600px";
    this.lastElementChild.style.opacity = "1";
    // a���ڱ�hover״̬
    this.firstElementChild.className = "hover";
  }

  function hideSub() {
    this.lastElementChild.style.width = "0";
    this.lastElementChild.style.opacity = "0";
    // a���ڱ�hover״̬
    this.firstElementChild.className = "";
  }

// �ҵ�����Ԫ�أ���Ԫ��li��,����ÿ��li
  var lis = document.querySelectorAll("div.banner-left>ul>li");
  for (var i = 0; i < lis.length; i++) {
    //(function (i) {
      // ����ǰ��������Ԫ����������¼�
      lis[i].addEventListener(
        "mouseover", showSub
      );
      // ����Ƴ�
      lis[i].addEventListener(
        "mouseout", hideSub
      );
    //})(i);
  }
})();


// ��ť��ɫ
$('[class*=btnj]').on('mouseenter', function () {
  $(this).css('background', '#FF7544')
}).mouseleave(function () {
  $(this).css('background', '')
});


// �ֲ���ť
//css�����ȼ������⣬���ﲻ��Ҫ�ٴν��
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

// header������
$('div.nav-left-01').on('mouseenter',function(){

});
















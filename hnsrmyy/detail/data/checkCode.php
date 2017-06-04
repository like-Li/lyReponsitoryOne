<?php 
    //开启session
    session_start([
        //设置session的生命周期
        'cookie_lifetime' => 120,
    ]);

    //创建一个宽100，高30的黑色图像画布
    $image = imagecreate(100, 30);
    //设置图像的背景色为白色
    $bgcolor = imagecolorallocate($image, 255, 255, 255);
    //在$image图像的左上角开始用白色填充
    imagefill($image, 0, 0, $bgcolor);

    //方式一：生成验证码上显示的数字内容
    /*for($i = 0; $i < 4; $i++){
        //字体大小
        $fontsize = 5;
        //字体颜色(随机颜色)
        $fontcolor = imagecolorallocate($image, rand(0,120), rand(0,120), rand(0,120));
        //内容
        $fontcontent = rand(0,9);
        //设置内容生成的位置
        $x = ($i*100/4) + rand(5,10);
        $y = rand(5,10);
        //画一行字符串
        imagestring($image, $fontsize, $x, $y, $fontcontent, $fontcolor);
    }*/

    //定义变量记录生成的验证码内容
    $authcode = "";
    //方式二：生成字母和数字的混合内容
    for($i = 0; $i < 4; $i++){
        //字体大小
        $fontsize = 20;
        //字体颜色
        $fontcolor = imagecolorallocate($image, rand(0,120), rand(0,120), rand(0,120));
        //字体库
        $fontfile = "../font/SIMHEI.ttf";
        //数据字典(去掉容易混淆的字母和数字)
        $data = "abcdefhjkmnpqrstuvwxyABCDEFGHJKLMNPQRSTUVWXY2345678";
        //生成混合内容
        /*substr（字符串，开始位置，截取长度）   截取字符串
        strlen(string)  计算字符串的长度*/
        $fontcontent = substr($data, rand(0,strlen($data)-1),1);
        $authcode .= $fontcontent;
        //设置内容生成的位置
        $x = ($i*100/4) + rand(5,10);
        $y = rand(20,30);
        //$y = rand(5,10);
        //画一行字符串
        //方式一：该函数只能设置系统默认的字体大小
        //imagestring($image, $fontsize, $x, $y, $fontcontent, $fontcolor);
        //方式二：通过引用trueType字体来画字符串
        imagettftext($image, $fontsize, 0, $x, $y, $fontcolor, $fontfile, $fontcontent);
    }
    //将验证码的内容存储到session中
    $_SESSION['authcode'] = $authcode;

    //设置干扰点
    for($m = 0; $m < 200; $m++){
        //设置点的颜色
        $pointcolor = imagecolorallocate($image, rand(50,200), rand(50,200), rand(50,200));
        //生成一个像素点
        imagesetpixel($image, rand(1,99), rand(1,29), $pointcolor);
    }

    //设置干扰线
    for($n = 0; $n < 3; $n++){
        //设置线的颜色
        $linecolor = imagecolorallocate($image, rand(80,220), rand(80,220), rand(80,220));
        //生成一条线
        imageline($image, rand(1,99), rand(1,29), rand(1,99), rand(1,29), $linecolor);
    }

    //设置返回头信息的文档类型
    header('Content-Type: image/png');

    //将图像输出到页面
    imagepng($image);
    //销毁图像资源（好的习惯随手销毁资源）
    imagedestroy($image);
 ?>
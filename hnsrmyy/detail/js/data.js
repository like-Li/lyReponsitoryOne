
// 获得页面跳转的查询字符串
var key = location.search.split('=')[1];
console.log(key);
 //  查询字符串  为同一个
// 发送不同的





$.ajax({
        type:'POST',
        url:'/type',
        data:{type:key},
        success:function(result){
       //    console.log(result);
            var html = '';
            for(var v of result){
                html+=`
            <li>
                <div class="newsListTitle">
                    <a href="#" title="${v.title}">${v.title}</a>
                <p>${v.content}</p>
                </div>
                <div class="newsListDate">
                    <h3>发布时间</h3>
                    <h4>${v.ctime}</h4>
                    <p>
                    阅览次数
                    <span>${v.readNum}</span>
                    </p>
                    </div>
                    <div class="newsListBtn">
                    <a href="#">进入</a>
                    </div>
                    </li>
                `;
            }
            // 添加到页面中
            $('#newListHealth').html(html);
        },

        error:function(){
            alert('发送请求失败！');
        }
    });


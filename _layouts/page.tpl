<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta name="author" content="{{ site.meta.author.name }}"/>
    <meta name="keywords" content="{{ page.tags | join: ',' }}"/>
    <meta name="baidu-site-verification" content="plbmWis5PB" />
    <title>{{ site.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
    <link href="http://{{ site.host }}/feed.xml" rel="alternate" title="{{ site.name }}" type="application/atom+xml"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/site.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/code/github.css"/>
    {% for style in page.styles %}
    <link rel="stylesheet" type="text/css" href="{{ style }}"/>
    {% endfor %}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
    <script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>

    <script src="https://tajs.qq.com/stats?sId=66563283"></script>
    <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?af402803ce98fb2abc371053df40514d";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</head>

<body class="{{ page.pageClass }}">

<div class="main">
    {{ content }}

    <footer>
        {% include gitalk.tpl %}
        <p>&copy; Since <span id="year"></span> Plain V1.0
            <span id="busuanzi_container_page_pv" title="浏览量">  👀 <span id="busuanzi_value_page_pv"></span></span>
        </p>

    </footer>


</div>

<aside>
    <img align="middle" src="/image/lovelife.jpg" style="width: 300px; height: 170px;" alt="love life">
    <H1 style="color:#ed9292; background-image: linear-gradient(to right, #2a333c, #83898e, #2a333c);
    font-size: 16px;margin-top: 20px;">
        Now or Never
        <a href="/feed.xml" class="feed-link" title="Subscribe">
        <img src="/image/RSS.png" alt="RSS feed"/></a>
        <a href="https://github.com/{{ site.meta.author.github }}">
        <img src="/image/github_72px.png" alt="Look me on GitHub"></a>
        <a href="https://gitee.com/mplain/mplain/pages">
            <img src="/image/gitee.ico" alt="Gitee pages" style="height: 15px;"></a>
        </a>
    </H1>

    <nav class="block">
        <ul>
            {% for category in site.custom.categories %}
                {% if site.custom.hide contains category.name %}
                {% else %}
                <li class="{{ category.name }}"><a href="/category/{{ category.name }}/">{{ category.title
                    }}({{ site.categories[category].size }})</a></li>
                {% endif %}
            {% endfor %}
            <li class="world"><a href="/world/">真彩世界</a></li>
        </ul>
    </nav>

    <!--
    <form action="/search/" class="block block-search">
        <h3>Search</h3>
        <p><input type="search" name="q" placeholder="搜索一下下" /></p>
    </form>
    -->

    <div class="block block-about">
        <h3>关于</h3>
        <figure>
            <img src="/favicon.ico" style="width: 60px;"/>
            <p><strong>{{ site.meta.author.name }}</strong></p>
        </figure>
        <p>值得一做的事, 都值得做好!</p>
        <!--<p>Find me：mxh403@163.com</p>-->
    </div>

    <div class="block block-tags">
        <h3><a href="/tags.html">Tags </a></h3>
        {% unless site.tags == empty %}
        <ul class="tags_list">
            <li><i class="icon-tags"></i></li>
            {% assign tags_list = site.tags %}
            {% include tags_list.tpl %}
        </ul>
        {% endunless %}
    </div>

    <div class="block block-license">
        <p style="display: inline-block;">
            <a rel="license" href="http://creativecommons.org/licenses/by/4.0/" target="_blank"
               class="hide-target-icon" title="Copyright declaration of site content">
                <b>Copyright</b><img alt="知识共享许可协议" src="/image/by_nc88x31.png"/>
        </a></p>
    </div>


    <div class="block block-thank">
        <h3>Powered by <a href="https://sijiu.github.io/" target="_blank">Plain</a></h3>
        <h3>Based on <a href="https://github.com/mytharcher/SimpleGray" target="_blank">SimpleGray</a></h3>
        <h3>Thank for <a href="http://cxlcym.github.io/" target="_blank">Cao xilong</a></h3>
        <h3>Thank for <a href="http://yanjunyi.com/discovery/" target="_blank">严俊羿</a></h3>
    </div>
    <span id="busuanzi_container_site_pv" style="color: #999">本站总访问量：<span id="busuanzi_value_site_pv"></span> 次</span>
    <span id="busuanzi_container_site_uv" style="color: #999"> ✍ 访客数：<span id="busuanzi_value_site_uv"></span> 人次</span>


</aside>
<!--<script src="https://tajs.qq.com/stats?sId=66563283"></script>-->
<!--<script src="https://elfjs.googlecode.com/files/elf-0.4.1-min.js"></script>-->

<script src="/assets/js/site.js"></script>
{% for script in page.scripts %}
<script src="{{ script }}"></script>
{% endfor %}

<script type="text/javascript">

    let arr =document.getElementsByTagName("a");
        arr = [].slice.call(arr);
        arr.forEach(el => {
            if(el.getAttribute("href") && el.getAttribute("href").startsWith("http")
                && (!el.getAttribute("href").startsWith("https://sijiu.github.io"))){
                el.setAttribute("target", "_blank")
            }
        })

      let changeTag = function () {
    let aim_tag = decodeURI(location.hash.replace(/#|-ref/g, ""))
    let h2arr = document.getElementsByName("tags_div");
    h2arr = [].slice.call(h2arr);
    h2arr.forEach(el => {
      let tag = el.getAttribute("id")
      if (tag && tag.replace("_div", "") === aim_tag) {
        el.setAttribute("class", "tag_show")
      }else{
        if(aim_tag){
          el.setAttribute("class", "tag_hide")
        }else{
          el.setAttribute("class", "tag_show")
        }
      }
    })
  }

      let t_arr = document.getElementsByName("tag_a");
      t_arr = [].slice.call(t_arr);
      t_arr.forEach(el => {
        el.onclick = changeTag;
      })

      changeTag();

</script>


</body>
</html>

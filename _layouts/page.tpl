<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta name="author" content="{{ site.meta.author.name }}"/>
    <meta name="keywords" content="{{ page.tags | join: ',' }}"/>
    <title>{{ site.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
    <script src="https://tajs.qq.com/stats?sId=66563283"></script>
    <link href="http://{{ site.host }}/feed.xml" rel="alternate" title="{{ site.name }}" type="application/atom+xml"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/site.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/code/github.css"/>
    {% for style in page.styles %}
    <link rel="stylesheet" type="text/css" href="{{ style }}"/>
    {% endfor %}
</head>

<body class="{{ page.pageClass }}">

<div class="main">
    {{ content }}

    <footer>
        <p>&copy; Since <span id="year"></span> Plain V1.0</p>
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
        <img src="/image/github_72px.png" alt="Fork me on GitHub"></a>
    </H1>

    <nav class="block">
        <ul>
            {% for category in site.custom.categories %}
                {% if site.custom.hide contains category.name %}
                {% elsif %}
                <li class="{{ category.name }}"><a href="/category/{{ category.name }}/">{{ category.title }}</a></li>
                {% endif %}
            {% endfor %}
        </ul>
    </nav>

    <!--
    <form action="/search/" class="block block-search">
        <h3>Search</h3>
        <p><input type="search" name="q" placeholder="搜索一下下" /></p>
    </form>
    -->

    <div class="block block-about">
        <h3>About</h3>
        <figure>
            <img src="/favicon.ico" style="width: 60px;"/>
            <p><strong>{{ site.meta.author.name }}</strong></p>
        </figure>
        <p>厚积薄发</p>
        <p>心中的标准决定了可能达成的上限</p>
        <p>Find me：mxh403@163.com</p>
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
    </div>

</aside>
<script src="https://tajs.qq.com/stats?sId=66563283"></script>
<script src="https://elfjs.googlecode.com/files/elf-0.4.1-min.js"></script>

<script src="/assets/js/site.js"></script>
{% for script in page.scripts %}
<script src="{{ script }}"></script>
{% endfor %}
<script>
    site.URL_GOOGLE_API = '{{site.meta.gapi}}';
    <!--discus评论闲置-->
    site.URL_DISCUS_COMMENT = '{{ site.meta.author.disqus }}' ? 'http://{{ site.meta.author.disqus }}.{{ site.meta.disqus }}' : '';

    site.VAR_SITE_NAME = '{{ site.name }}';
    site.VAR_GOOGLE_CUSTOM_SEARCH_ID = '{{ site.meta.author.gcse }}';
    site.TPL_SEARCH_TITLE = '#{0} / 搜索：#{1}';
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-38806305-1']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
        document.getElementById('year').innerHTML = new Date().getFullYear();
    })();

</script>


</body>
</html>

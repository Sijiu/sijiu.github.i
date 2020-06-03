<header>
	<script type="text/javascript" src="http://tajs.qq.com/stats?sId=66563283" charset="UTF-8"></script>
	<h1>{% if page.title %}<a href="/" class="minor">{{ site.name }}</a> / {{ page.title }}{% else %}{{ site.name }}{% endif %}</h1>
	{% if page.title == null %}<p class="additional">{{ site.desc }}</p>{% endif %}
</header>

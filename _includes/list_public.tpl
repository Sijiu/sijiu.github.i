{% include header.tpl %}

{% for post in list %}
{% if site.custom.hide contains post.category or post.url contains "/world/" %}
{% else %}

<article>
	<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
	{% include meta.tpl %}
	<div class="article-content">
	{% if forloop.index == 1 and preview and post.layout == 'post' %}
		{{ post.content | strip_html | strip_newlines | truncate: 100 }}
	{% endif %}
	</div>
</article>
{% endif %}
{% endfor %}

{% if list == null %}
<article class="empty">
	<p>该分类下还没有文章</p>
</article>
{% endif %}
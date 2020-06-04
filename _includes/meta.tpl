<p class="meta">
    <span class="datetime">{{ post.date | date: "%Y-%m-%d" }}</span>
	posted in [<a href="/category/{{ post.category }}"
				  class="{{ post.category }}">{{ site.custom.category[post.category] }}</a>]
    {% if page.url contains "posts" %}
        {% assign en = page.content | number_of_words %}
        {% assign zh = content | strip_html | strip_newlines | split: "" | size %}
        {% assign ch =  en | plus: zh %}
        {% assign read = ch | divided_by: 400 %}
        <span style="margin-left: 20px;">约 {{ ch }} 字 ⏰ 阅读需 {{ read }} 分钟</span>
    {% endif %}
</p>
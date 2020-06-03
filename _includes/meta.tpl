<p class="meta">
    <span class="datetime">{{ post.date | date: "%Y-%m-%d" }}</span>
	{% assign en = page.content | number_of_words %}
	{% assign zh = content | strip_html | strip_newlines | split: "" | size %}
	{% assign ch =  en | plus: zh %}
	{% assign read = ch | division: 500 %}
    <span>字数: {{ ch }}  阅读时长: {{ read }}</span>
	posted in [<a href="/category/{{ post.category }}"
				  class="{{ post.category }}">{{ site.custom.category[post.category] }}</a>]
</p>
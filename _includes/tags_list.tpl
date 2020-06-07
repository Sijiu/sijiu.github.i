{% comment %}<!--
The tags_list include is a listing helper for tags.
Usage:
  1) assign the 'tags_list' variable to a valid array of tags.
  2) include JB/tags_list
  example:
    <ul>
  	  {% assign tags_list = site.tags %}
  	  {% include tags_list %}
  	</ul>

  Notes:
    Tags can be either a Hash of tag objects (hashes) or an Array of tag-names (strings).
    The encapsulating 'if' statement checks whether tags_list is a Hash or Array.
    site.tags is a Hash while page.tags is an array.

  This helper can be seen in use at: ../_layouts/default.html
-->{% endcomment %}

{% assign MAX_FONT = 20 %}
{% assign MAX_CNT = 20 %}
{% assign BASE_FONT = 8 %}
{% assign RANGE = MAX_FONT | minus: BASE_FONT %}


<!--{ % if site.JB.tags_list.provider == "custom" % }-->
  <!--{ % include custom/tags_list % }-->
<!--{ % else %}-->
  {% if tags_list.first[0] == null %}
    {% for tag in tags_list %}
	{% if site.tags[tag].size > MAX_CNT %}
	{% assign font_size = MAX_FONT %}
	{% else %}
	{% assign font_size = site.tags[tag].size | times: RANGE | divided_by: MAX_CNT | plus: BASE_FONT %}
	{% endif %}
    	<!--<a href="{ { BASE_PATH } }{{ site.tags_path }}#{{ tag }}-ref" style="font-size:{{font_size}}pt;">{{ tag }} <span>{{ site.tags[tag].size }}</span></a>-->
    	<a href="{{ site.tags_path }}#{{ tag }}-ref" style="font-size:{{font_size}}pt;">{{ tag }} <span>{{ site.tags[tag].size }}</span></a>
    {% endfor %}
  {% else %}
    {% for tag in tags_list %}
	{% if tag[1].size > MAX_CNT %}
	{% assign font_size = MAX_FONT %}
	{% else %}
	{% assign font_size = tag[1].size | times: RANGE | divided_by: MAX_CNT | plus: BASE_FONT %}
	{% endif %}
	<!--<a href="{ { BASE_PATH } }{{ site.JB.tags_path }}#{{ tag[0] }}-ref" style="font-size:{{font_size}}pt;" title="{{ tag[1].size }} posts">{{ tag[0] }}<span></span></a>-->
	<a href="{{ site.tags_path }}#{{ tag[0] }}-ref" style="font-size:{{font_size}}pt;" title="{{ tag[1].size }} posts">{{ tag[0] }}<span></span></a>
    {% endfor %}
  {% endif %}
<!--{ % endif % }-->
{% assign tags_list = nil %}

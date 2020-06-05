{% if page.url contains "posts" %}
    <div id="gitalk-container"></div>
{% endif %}
<script>
    var gitalk = new Gitalk({
      clientID: '{{ site.gitalk.clientID }}',
      clientSecret: '{{ site.gitalk.clientSecret }}',
      repo: '{{ site.gitalk.repo }}',
      owner: '{{ site.gitalk.owner }}',
      admin: ['{{ site.gitalk.admin }}'],
      id: decodeURI('{{ page.url }}'),
      distractionFreeMode: false
    })
    gitalk.render('gitalk-container')
</script>
{% if page.url contains "posts" %}
    <div id="gitalk-container"></div>
{% endif %}
<script>
    var gitalk = new Gitalk({
      clientID: '{{ site.gitalk.clientID }}',
      clientSecret: '{{ site.gitalk.clientSecret }}',
      repo: '{{ site.repo.clientSecret }}',
      owner: '{{ site.owner.clientSecret }}',
      admin: ['{{ site.admin.clientSecret }}'],
      id: '{{ page.url }}',
      distractionFreeMode: false
    })
    gitalk.render('gitalk-container')
</script>
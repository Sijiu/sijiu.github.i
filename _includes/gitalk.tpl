{% if page.url contains "posts" %}
    <div id="gitalk-container"></div>
{% endif %}
<script>
    var gitalk = new Gitalk({
      clientID: '{{ site.gitalk.clientID }}',
      clientSecret: '{{ site.gitalk.clientSecret }}',
      repo: '{{ site.repo.btalk }}',
      owner: '{{ site.owner.owner }}',
      admin: ['{{ site.admin.admin }}'],
      id: '{{ page.url }}',
      distractionFreeMode: false
    })
    gitalk.render('gitalk-container')
</script>
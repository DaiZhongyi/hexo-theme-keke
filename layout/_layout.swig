<!DOCTYPE html>
<html lang={{ config.language }}>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>{% block title %}{{ config.title }}{% endblock %}</title>
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/keke.css">
  {# page personal css #}
  {% block css %}{% endblock %}
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id={{ theme.google_analytics_id }}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', "{{ theme.google_analytics_id }}");
  </script>
</head>
<body>

<div class="container">

  {% block header %}
    <header class="header">
      <div class="title"><a href="/">{{ theme.title }}</a></div>
      <div class="subtitle">️{{ theme.subtitle }}</div>

      <div class="about">
        <a href="https://github.com/DaiZhongyi" target="_blank"><i class="fa fa-github fa-lg" aria-hidden="true"></i></a>
        <a href="https://www.linkedin.com/in/dzhongyi/" target="_blank"><i class="fa fa-linkedin fa-lg" aria-hidden="true"></i></a>
      </div>

      <div class="navigation">
        <a href="/">写作</a> / <a href="/reading">阅读</a> / <a href="/talking">思考</a>
      </div>
    </header>
  {% endblock %}

  <div class="content">{% block content %}{% endblock %}</div>

  <footer class="footer">
    {% block footer %}
      <p>Copyright © 2016-2017 | <a href="/">{{ theme.title }}</a>
        |<span id="busuanzi_container_site_pv"  style='display:none'>您是本站第 <span id="busuanzi_value_site_pv"></span> 位访问者</span></p>
    {% endblock %}
  </footer>

  <script src="/js/highlight.pack.js"></script>
  <script src="/js/busuanzi.pure.mini.js"></script>
  <script>hljs.initHighlightingOnLoad();</script>
  {# page personal javascript #}
  {% block js %}
  {% endblock %}

</div>

</body>
</html>

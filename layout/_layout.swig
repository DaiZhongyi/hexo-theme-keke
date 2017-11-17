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
  <script async src="https://www.googletagmanager.com/gtag/js?id={{ config.google_analytics_id }}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', "{{ config.google_analytics_id }}");
  </script>
</head>
<body>

<div class="container">

  {% block header %}
    <header class="header">
      <div class="title"><a href="/">{{ config.title }}</a></div>
      <div class="subtitle">️{{ config.subtitle }}</div>

      <div class="about">
        <a href="https://github.com/{{ config.github_owner }}" target="_blank"><i class="fa fa-github fa-lg" aria-hidden="true"></i></a>
        <a href="https://www.linkedin.com/in/{{ config.linkedin }}" target="_blank"><i class="fa fa-linkedin fa-lg" aria-hidden="true"></i></a>
      </div>

      <div class="navigation">
        <a href="/">写作</a> / <a href="/reading">阅读</a> / <a href="/talking">思考</a>
      </div>
    </header>
  {% endblock %}

  <div class="content">{% block content %}{% endblock %}</div>

  <footer class="footer">
    {% block footer %}
      <p>Copyright © 2016-2017 | <a href="/">{{ config.title }}</a> | Powered by <a href="https://github.com/DaiZhongyi/hexo-theme-keke.git">keke</a> </p>
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

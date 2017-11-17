{% extends '_layout.swig' %}

{% block css %}
  <link rel="stylesheet" href="/css/gitment.css">
{% endblock %}

{% block header %}
{% endblock %}

{% block content %}
  <div class="post">
    <div class="post-title">{{ page.title }}</div>
    <div class="post-meta">
      <span class="post-block"><i class="fa fa-calendar"></i><span class="post-date">{{ date(page.date) }}</span></span>
      <span class="post-block"><i class="fa fa-user"></i><span class="post-author">{{ config.author }}</span></span>
      <span id="busuanzi_container_page_pv" class="post-block">
        <i class="fa fa-eye"></i><span id="busuanzi_value_page_pv" class="post-pv"></span>
      </span>
    </div>

    <div class="post-content">
      {% if page.toc %}
        {{ toc(page.content, {'list_number': false, 'max_depth': 3}) }}
      {% endif %}
      {{ page.content }}
    </div>
    <div id="comments"></div>
  </div>
{% endblock %}

{% block js %}
  <script src="/js/gitment.browser.js"></script>

  <script>
    const myTheme = {
      render(state, instance) {
        const container = document.createElement('div');
        container.lang = "{{ config.language }}";
        container.className = 'gitment-container gitment-root-container';

//        container.appendChild(instance.renderHeader(state, instance));
        container.appendChild(instance.renderEditor(state, instance));
        container.appendChild(instance.renderComments(state, instance));
//        container.appendChild(instance.renderFooter(state, instance));
        return container
      }
    };

    const gitment = new Gitment({
      owner: "{{ config.github_owner }}",
      repo: "{{ config.github_repo }}",
      oauth: {
        client_id: "{{ config.github_client_id }}",
        client_secret: "{{ config.github_client_secret }}"
      },
      theme: myTheme
    });

    gitment.render('comments')
  </script>
{% endblock %}

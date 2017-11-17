{% extends '_layout.swig' %}

{% block title %}Writing{% endblock %}

{% block content %}
  {% for post in site.posts.sort('date', 'desc') %}
    <section class="post-section">

      <div class="post-title">
        <a href="{{ post.path }}">{{ post.title }}</a>
      </div>

      <div class="post-summary">
        {% if post.summary %}
          {{ post.summary }}
        {% else %}
          {{ strip_html(truncate(post.content, {length: config.truncate, omission: "......"})) }}
        {% endif %}
      </div>

      <div class="post-date">
        <time datetime="{{ post.date.toJSON() }}">{{ date(post.date) }}</time>
      </div>

    </section>
  {% endfor %}
{% endblock %}
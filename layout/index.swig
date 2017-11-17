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

      <div class="post-meta">
        <span class="post-block"><i class="fa fa-calendar"></i><span class="post-date">{{ date(post.date) }}</span></span>
        {#<span class="post-block"><i class="fa fa-user"></i><span class="post-author">{{ config.author }}</span></span>#}
        {% for category in post.categories %}
          <span class="post-block"><i class="fa fa-tag"></i><span class="post-category"><a href="{{ category.path }}">{{ category.name }}</a></span></span>
        {% endfor %}
      </div>

    </section>
  {% endfor %}
{% endblock %}
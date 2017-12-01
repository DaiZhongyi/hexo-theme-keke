{% extends '_layout.swig' %}

{% block content %}
  <h2>{{ page.category }}</h2>

  <ul>
  {% for post in page.posts %}
    <li><a href="{{ post.path }}">{{ post.title }}</a></li>
  {% endfor %}
  </ul>
{% endblock %}
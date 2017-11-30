{% block content %}

    {% for post in page.posts %}

    {% set year %}
    {% set post.year = date(post.date, 'YYYY') %}

    {% if post.year !== year %}
      {% set year = post.year %}
      <h1>{{ year }}</h1>
    {% endif %}

    <p>{{ post.title }}</p>

    {% endfor %}

{% endblock %}

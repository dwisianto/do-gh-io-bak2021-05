---
layout: post
title:  "Jekyll-Pagination!"
date:   2021-03-22 11:58:53 -0400
categories: jekyll update
---



# Gemfile

Update the gemfile

```
# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem 'jekyll-paginate'
end
```


# _config.yml


```
# Build settings
theme: minima
plugins:
  - jekyll-feed
  - jekyll-paginate
```

Add the following key-value pairs at the end of the config file

```
paginate: 1
paginate_path: "/blog/page:num/"
```

# index.html

Rename `index.md` to the be `index.html`. This following is required

```
---
layout: default
---

<!-- This loops through the paginated posts -->
{% for post in paginator.posts %}
  <h1><a href="{{ post.url }}">{{ post.title }}</a></h1>
  <p class="author">
    <span class="date">{{ post.date }}</span>
  </p>
  <div class="content">
    {{ post.content }}
  </div>
{% endfor %}

```

## option1

```
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}" class="previous">
      Previous
    </a>
  {% else %}
    <span class="previous">Previous</span>
  {% endif %}
  <span class="page_number ">
    Page: {{ paginator.page }} of {{ paginator.total_pages }}
  </span>
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}" class="next">Next</a>
  {% else %}
    <span class="next ">Next</span>
  {% endif %}
</div>

```

## option2

```
{% if paginator.total_pages > 1 %}
<center>
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path | relative_url }}">&laquo; Prev</a>
  {% else %}
    <span>&laquo; Prev</span>
  {% endif %}

  {% for page in (1..paginator.total_pages) %}
    {% if page == paginator.page %}
      <em>{{ page }}</em>
    {% elsif page == 1 %}
      <a href="{{ '/' | relative_url }}">{{ page }}</a>
    {% else %}
      <a href="{{ site.paginate_path | relative_url | replace: ':num', page }}">{{ page }}</a>
    {% endif %}
  {% endfor %}

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path | relative_url }}">Next &raquo;</a>
  {% else %}
    <span>Next &raquo;</span>
  {% endif %}
</div>
</center>
{% endif %}
```

# Put Everything Together

Execute the following command

```
jekyll serve
```

or the following command

```
bundle install
bundle exec jekyll serve
```


# References

- https://github.com/jekyll/jekyll-paginate
- https://github.com/sverrirs/jekyll-paginate-v2

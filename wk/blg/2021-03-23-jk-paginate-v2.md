---
layout: post
title:  "Jekyll-Pagination-v2"
date:   2021-03-24 
categories: jekyll update
---


# Gemfile Setup configuration

Delete the Gemfile.lock file to clear out any potential issues with gem caching

```
group :jekyll_plugins do
  gem "jekyll-paginate-v2"
  gem "jekyll-feed"
end
```

# Configuration

The gem is added to the _config.yml file under

```
gems:
  - jekyll-paginate-v2
```

```
# Produces a cleaner folder structure when using categories
permalink: /:year/:month/:title.html
# Pagination Settings
pagination:
  enabled: true
  per_page: 3
  permalink: '/page/:num/'
  title: ' - page :num'
  limit: 0
  sort_field: 'date'
  sort_reverse: true
```

# Reference



---
layout: post
title:  "Jekyll-Scholar"
date:   2021-03-20
categories: jekyll update
---




# gemfile

```
gem 'jekyll-scholar'
```

In the configuration file (_config.yml) of my web site, I attached the following Jekyll-Scholar settings:


```
scholar:
  style: apa
  locale: en
  
  sort_by: none
  order: ascending
  
  group_by: none
  group_order: ascending
  
  source: ./_bibliography
  bibliography: references.bib
  bibliography_template: ""
  
  replace_strings: true
  join_strings:    true
  
  use_raw_bibtex_entry: false
  bibtex_filters:
  - superscript
  - latex
  
  details_dir:    bibliography
  details_layout: bibtex.html
  details_link:   Details
  
  query: "@*"

```

## _layout


Furthermore, with the file bibtex.html I defined the layout of my publication list in the directory _layout. The current version of bibtex.html is shown below:

```
---Natascha McElhone
---
{{reference}}

<div id="{{key}}-materials">
  <ul class="nav nav-pills">
    {% if entry.abstract %}
    <li><a data-toggle="collapse" href="#{{key}}-abstract">Abstract</a></li>
    {% endif %}

    <li><a data-toggle="collapse" href="javascript:toggleDiv('{{key}}-bibtex')">BibTeX</a></li>
    <div id="{{key}}-bibtex" style="display:none;">
    <pre class="collapse">{{entry.bibtex}}</pre>
    </div>

    {% if link %}
    <li><a href="{{link}}">Download</a></li>
    {% endif %}
    {% if entry.doi %}
    <li>DOI: <a href="http://dx.doi.org/{{entry.doi}}">{{entry.doi}}</a></li>
    {% endif %}
  </ul>

  {% if entry.abstract %}
  <p id="{{key}}-abstract" class="collapse">{{entry.abstract}}</p>
  {% endif %}

</div>
```

## posts

```
---
layout: page
title: "Publications"
date: 2013-04-08
excerpt:
share: false
---

### 2013

{% bibliography --query @*[year=2013] %}

### 2012

{% bibliography --query @*[year=2012] %}
```


# Reference

- https://www.mghassany.com/blog/From-Wordpress-to-Jekyll/
- https://hydepress.github.io/jekyll-plugins


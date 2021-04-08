---
layout: page
title: Archive
permalink: /archive/
---

[main](https://aneejian.com/automated-jekyll-archives-github-pages/)
[link](https://laura.rochaprado.com/done/web/development/2019/04/02/jekyll-github-page-pagination.html)
[l02](https://chrisphillips-cminion.github.io/jekyll/2019/06/26/JekyllPagination.html)

This blog is published on Github Pages using a Jekyll base template called Minima. It offers no built in support for pagination, so I had to do a lot of trial-and-error, and follow a lot of advice from different people on the internet. This was particular tricky, because Minima uses a home.html template instead of an index.html.

However, I finally achieved it by using the plugin jekyll-paginate, and following most of the steps described here.

In summary, the steps involve:

    Invoke and configurate the plugin jekyll-paginate on _config.yml.
    Create the file _includes/paginator.html, with code that creates the links for adequate navigation.
    Adjust the index.html file with the correct loop for the paginated posts.

Because of the particularity of Minima, I had to further:

    Rename index.md to index.html.
    Correct relative paths for links called in paginator.html.
    Adjust home.html to include the correct lops for the paginated posts (as one would do with index.html normally).
    Fix styles in _sass/minima/_layout.scss.


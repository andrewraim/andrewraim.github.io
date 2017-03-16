---
layout: post
title:  "Web Page Overhaul"
date:   2017-03-15 23:00:39 -0400
categories: programming
excerpt_separator: <!--more-->
---
I am trying out [GitHub Pages](https://pages.github.com) to host my web page, along with the static site generator [Jekyll](https://jekyllrb.com).
<!--more-->
It wasn't too difficult to migrate my basic HTML+PHP website. The migration
is not completely finished at this time though, so please refer to my
[UMBC webpage](http://www.umbc.edu/~araim1) if you need any materials I had
posted.

By enabling [MathJax](http://gastonsanchez.com/visually-enforced/opinion/2014/02/16/Mathjax-with-jekyll), you can add display equations such as \\( f(x) = x^2 e^{-x} \\) inline, or
\\[
\Phi(x) =
\int_{-\infty}^{x} \frac{1}{\sqrt{2\pi}}
\exp \left( -\frac{1}{2\sigma^2} (t - \mu)^2 \right) dt.
\\]

It's also easy to display code with syntax highlighting.

{% highlight R %}
x <- rnorm(100, 0, 1)
hist(x)
{% endhighlight %}

---
layout: post
title:  "Web Page Migration"
date:   2017-03-15 23:00:39 -0400
categories: programming
excerpt_separator: <!--more-->
---
<!--more-->
I am now using [GitHub Pages](https://pages.github.com) to host my website, along with the static site generator [Jekyll](https://jekyllrb.com). My [previous website](http://www.umbc.edu/~araim1) was hosted at UMBC.

Here is a quick test of [MathJax](http://gastonsanchez.com/visually-enforced/opinion/2014/02/16/Mathjax-with-jekyll). An inline equation is \\( f(x) = x^2 e^{-x} \\) inline. And an equation on its own line is
\\[
\Phi(x) =
\int_{-\infty}^{x} \frac{1}{\sigma \sqrt{2\pi}}
\exp \left( -\frac{1}{2\sigma^2} (t - \mu)^2 \right) dt.
\\]

Here is an example of code with syntax highlighting.

{% highlight R %}
x <- rnorm(100, 0, 1)
hist(x)
{% endhighlight %}

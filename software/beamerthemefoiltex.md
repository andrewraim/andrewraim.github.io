---
layout: page
permalink: /software/beamerthemefoiltex
---

[Beamer](http://bitbucket.org/rivanvx/beamer/wiki/Home)
seems by far to be the most popular slide making package for LaTeX. It is
extremely flexible, and capable of making beautiful slides.
There are many fancy themes available for beamer with progress bars, shaded
boxes, and colors shaded in all over the place. Sometimes though, you just want
a nice plain theme without any distractions.

A while back, [Martin Klein](http://www.umbc.edu/~mklein1)
and I discovered another slide package called FoilTeX.
This package produces slides in a very plain theme, but which look extremely polished.
See an example [here](http://math.arizona.edu/~swig/documentation/powerwhat).
We especially liked the font ("computer modern sans serif") and the wide
spacing between bullet points. We created a theme for Beamer that attempts to
capture this look, but allows all the functionality of Beamer to be used.

Here is an example PDF using the theme
<center>
<p/><a href="http://www.umbc.edu/~araim1/pub/beamerthemefoiltex/example-slides.pdf">
<img src="http://www.umbc.edu/~araim1/pub/beamerthemefoiltex/example-slides.png" style="border: 1px solid black; float: none"/>
</a>
</center>

To generate it, download the following files and place them together in the
same directory.
* [beamerthemefoiltex.sty](http://www.umbc.edu/~araim1/pub/beamerthemefoiltex/beamerthemefoiltex.sty) the theme.
* [example-slides.tex](http://www.umbc.edu/~araim1/pub/beamerthemefoiltex/example-slides.tex) an example presentation.

To generate the PDF on a standard Linux setup, use pdflatex (twice to be safe)
{% highlight bash %}
[user@localhost ~]$ pdflatex example-slides.tex
[user@localhost ~]$ pdflatex example-slides.tex
{% endhighlight %}

Windows users should be able to compile with their favorite LaTeX editor.

A more illustrative example might be in order at some point, but here are some
notes.

* Use <code>Witemize</code>,  <code>Wenumerate</code>, and
<code>Wdescription</code> instead of  <code>itemize</code>, etc to get lists
with wide spacing between items.
* Bibliography items are also set up to look plain, overriding the little
icons that are used by default.
* The footer on the bottom shows "section::subsection", to give your audience
some context to where you are in the talk, without taking too much space on
the slide.
* Another benefit of a plain theme is in making handouts - a less cluttered
theme will make a cleaner handout.

Disclaimer: This theme has been used in quite a few talks, but you may find
through your own use that something looks out of place. If you do, let me know.

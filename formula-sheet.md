---
layout: page
permalink: /software/formula-sheet
---

This is a template for a formula sheet in LaTeX.
Here is a [sample formula sheet](http://www.umbc.edu/~araim1/pub/formula-sheet/example.pdf) that uses
the template.

<center>
<p/><a href="http://www.umbc.edu/~araim1/pub/formula-sheet/example.pdf">
<img src="http://www.umbc.edu/~araim1/pub/formula-sheet/example.png" style="border: 1px solid black; float: none"/>
</a>
</center>

To generate it, download the following files and place them together in
the same directory.
* [formula-sheet.cls](http://www.umbc.edu/~araim1/pub/formula-sheet/formula-sheet.cls) the class
* [example.tex](http://userpages.umbc.edu/~araim1/pub/formula-sheet/example.tex) the example


To generate the PDF on a standard Linux setup
{% highlight bash %}
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ pdflatex example.tex
{% endhighlight %}

Notice that I've repeated "pdflatex" several times - this is just paranoia
since cross references and similar things can require several passes.

Disclaimer: I am not a LaTeX programmer, just a user, so the code for the template
may appear somewhat crude. If you notice any severe problems, let me know.

---
layout: page
permalink: /software/formula-sheet
---

This is a template for a formula sheet in LaTeX.
Here is a <a href="http://userpages.umbc.edu/~araim1/formula-sheet/downloads/example.pdf">sample formula sheet</a> that uses
the template.

<center>
<p/><a href="http://userpages.umbc.edu/~araim1/formula-sheet/downloads/example.pdf">
<img src="http://userpages.umbc.edu/~araim1/formula-sheet/example.png" style="border: 1px solid black; float: none"/>
</a>
</center>

To generate it, download the following files and place them together in
the same directory.
* [formula-sheet.cls](http://www.umbc.edu/~araim1/formula-sheet/downloads/formula-sheet.cls) the class
* [example.tex](http://userpages.umbc.edu/~araim1/formula-sheet/downloads/example.tex) the example


To generate the PDF on a standard Linux setup
{% highlight bash %}
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ pdflatex example.tex
{% endhighlight %}

Notice that I've repeated "pdflatex" several times - this is just paranoia
since cross references and similar things can require several passes.


# Disclaimers
I'm not a LaTeX programmer, just a user, so the code for the template 
may appear somewhat crude.
If you notice any severe problems, let me know.

I'm assuming for now that use of the template is self-explanatory, once you
see the example. I may need to add some details here later.


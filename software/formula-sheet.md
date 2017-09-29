---
layout: page
permalink: /software/formula-sheet
---

This is a template for a formula sheet in LaTeX.
Here is a [sample formula sheet](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVWlNhamJ1eHBTaUU) that uses
the template.

<center>
<p/><a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVWlNhamJ1eHBTaUU">
<img src="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVcms5blN2Um5sMGs" style="border: 1px solid black; float: none"/>
</a>
</center>

To generate it, download the following files and place them together in
the same directory.
* [formula-sheet.cls](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVc2Z3aU9pTGtvNm8) the class
* [example.tex](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVZ2ZhT1ZoTlNNeDQ) the example


To generate the PDF on a standard Linux setup
{% highlight bash %}
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ pdflatex example.tex
{% endhighlight %}

Notice that I've repeated "pdflatex" several times - this is just paranoia
since cross references and similar things can require several passes.

Disclaimer: I am not a LaTeX programmer, just a user, so the code for the template
may appear somewhat crude. If you notice any severe problems, let me know.

---
layout: page
permalink: /software/latex-resume
---

Many people prefer Word for maintaining their resume or CV. Creating one
in LaTeX can be a little bit more difficult, but the result will have a nice
polished and "typeset" look. Also, if you maintain your publications in bibtex
form, it's very easy to produce a publication list in your CV, or export it
to a webpage.

Beyond knowing basic LaTeX commands, the tricky part of resume writing
is the formatting. A template takes care of the formatting, so you can focus
on the content. On this page, I have provided a template which was originally
based on
[Andrew McNabb's template](http://www.mcnabbs.org/andrew/linux/latexres)
and customized to my own tastes. This template is different in a few ways:

1. The format is more suitable for a CV or long resume, rather than a
one-page resume of bullet points.
2. The style definitions are separated from the main tex file (which contains
the content of the resume/cv only).

Here is a [sample PDF resume](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVUkhXZTFoRzhsV1E) that uses the template.

<center>
<p/><a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVUkhXZTFoRzhsV1E">
<img src="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVcWlDMGFfZUo5bEU" style="border: 1px solid black; float: none"/>
</a>
</center>

To generate it, download the following files and place them together in the same
directory.

* <a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVNk96Z29tMGhRR00">resume.sty</a> the resume style file
* <a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVeU0wZGg0QzktUVk">example.tex</a> an example resume
* <a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVSG9PZ2hmNk00aDQ">papers.bib</a> example bibtex file containing some papers
* <a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVWFVLZEVpTEx4MVU">presentations.bib</a> example bibtex file containing some presentations

To generate the PDF on a standard Linux setup
{% highlight bash %}
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ bibtex bu1
[user@localhost ~]$ bibtex bu2
[user@localhost ~]$ pdflatex example.tex
{% endhighlight %}

Notice the commands for bu1 and bu2 that require special attention. These come from
the use of the "bibunits" package, which allow you to keep several separate
bibliographies in one document. In the example, we have one bibliography for
papers and one for presentations. Also notice that I have repeated "pdflatex"
several times - this is just paranoia since cross references and similar things
can require several passes.

Windows users should be able to compile example.tex with their favorite
LaTeX editor.

Disclaimer: If you use this template, you will probably find that some of my
macros are not
relevant to you, or that something you need is missing. For example, a professor
probably won't list their past TA assignments, but may want to list grants,
graduate students, courses taught, etc. Feel free to modify the template for
your own needs, aesthetics, etc. If you notice any problems with the template,
let me know.

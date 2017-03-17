---
layout: page
permalink: /software/latex-resume
---

<h1>Introduction</h1>
Many people seem to prefer Word for writing their resume or CV. Creating one
in LaTeX can be a little bit more difficult, but the result will have a nice
polished "typeset" look. Also, if you maintain your publications in bibtex
form, it's very easy to produce a publication list in your CV, or export it
to a webpage.

<p/>Beyond knowing basic LaTeX commands, the tricky part of resume writing
is the formatting. A template takes care of the formatting, so you can focus
on the content. On this page, I've provided a template which was originally
based off of 
<a href="http://www.mcnabbs.org/andrew/linux/latexres/">Andrew McNabb's template</a> and customized to my own tastes.
This template is different in a few ways:
<ol>
<li/>The format is more suitable for a CV or long resume, rather than a
one-page resume of bullet points
<li/>The style definitions are separated from the main tex file (which contains the content of the resume/cv only)
</ol>


<h1>Example CV</h1>
Here is a <a href="software/example.pdf">sample PDF resume</a> that uses the template.

<center>
<p/><a href="software/example.pdf">
<img src="example.png" style="border: 1px solid black; float: none"/>
</a>
</center>

<p/>To generate it, download the following files and place them together in the same
directory.
<ul>
<li><a href="software/latex/resume.sty">resume.sty</a> the resume style file
<li><a href="software/latex/example.tex">example.tex</a> an example resume
<li><a href="software/bib/papers.bib">papers.bib</a> example bibtex file containing
some papers
<li><a href="software/bib/presentations.bib">presentations.bib</a> example bibtex 
file containing some presentations
</ul>

To generate the PDF on a standard Linux setup
<pre>
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ pdflatex example.tex
[user@localhost ~]$ bibtex bu1
[user@localhost ~]$ bibtex bu2
[user@localhost ~]$ pdflatex example.tex
</pre>

Notice the commands for bu1 and bu2 that require special attention. These come from
the use of the "bibunits" package, which allow you to keep several separate
bibliographies in one document. In the example, we have one bibliography for
papers and one for presentations. Also notice that I've repeated "pdflatex"
several times - this is just paranoia since cross references and similar things
can require several passes.

<p/>Windows users should be able to compile example.tex with their favorite
LaTeX editor


<h1>Disclaimers</h1>
If you use this template, you'll probably find that some of my macros aren't
relevant to you, or that something you need is missing. For example, a professor
probably won't list their past TA assignments, but may want to list their grants,
graduate students, courses taught, etc. Feel free to modify the template for your
own needs, aesthetics, etc.

<p/>I'm not a LaTeX programmer, just a user, so the code for the template 
may appear somewhat crude.
If you notice any severe problems, let me know.

<p/>I'm assuming for now that use of the template is self-explanatory once you
see the example. I may need to add some details here later.


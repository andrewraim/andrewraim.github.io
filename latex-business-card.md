---
layout: page
permalink: /software/latex-business-card
---

<h1>Introduction</h1>
There are a few nice tutorials on the web on how to make a business card
in LaTeX. I started from
<a href="http://blog.widmann.org.uk/2009/05/27/1297/">this one</a>
and transformed it to a UMBC theme. I didn't design this UMBC theme myself;
I used a standard UMBC business card that I received, and tried to emulate it
as closely as possible.

<p/>Note that UMBC people can get their cards printed out at
<a href="http://commonvision.umbc.edu">Commonvision</a>
and that students get a discount.

<h1>Example CV</h1>
Here is a <a href="software/card.pdf">sample PDF business card</a> that uses the template.

<center>
<p/><a href="software/card.pdf">
<img src="card.jpg" style="border: 1px solid black; float: none"/>
</a>
</center>

<p/>To generate it, download the following files and place them together in the same
directory.
<ul>
<li><a href="software/graphics/offsetred.pdf">offsetred.pdf</a> a UMBC logo
(from
<a href="http://www.umbc.edu/umbcstyle/wordmarks.html">here</a>),
converted to PDF format
<li><a href="software/latex/card.tex">card.tex</a> an example business card
</ul>

To generate the PDF on a standard Linux setup
<pre>
[user@localhost ~]$ pdflatex card.tex
[user@localhost ~]$ pdflatex card.tex
</pre>

I've repeated "pdflatex" several times - this is just paranoia since cross
references and similar things can require several passes. This should yield
a PDF file card.pdd with the business card.

<p/>Windows users should be able to compile the example with their favorite
LaTeX editor


<h1>Disclaimers</h1>

<p/>I'm not a LaTeX programmer, just a user, so the code for the template 
may appear somewhat crude.
If you notice any severe problems, let me know.

<p/>I'm assuming for now that use of the template is self-explanatory once you
see the example. I may need to add some details here later.

<?php include("../inc/footer.inc"); ?>

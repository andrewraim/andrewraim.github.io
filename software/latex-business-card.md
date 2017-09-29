---
layout: page
permalink: /software/latex-business-card
---

There are a few nice tutorials on the web on how to make a business card
in LaTeX. I started from
[this one](http://blog.widmann.org.uk/2009/05/27/1297)
and transformed it to a UMBC theme. I didn't design this UMBC theme myself;
I used a standard UMBC business card that I received, and tried to emulate it
as closely as possible.

Note that UMBC people can get their cards printed out at
[Commonvision](http://commonvision.umbc.edu)
and that students get a discount.

Here is a [sample PDF business card](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVMHFBa25TR3I0aHM) that uses the template.

<center>
<p/><a href="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVMHFBa25TR3I0aHM">
<img src="https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVUkxjaElMbVZZTzA" style="border: 1px solid black; float: none"/>
</a>
</center>

To generate it, download the following files and place them together in the same
directory.

* [offsetred.pdf](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVWmJpdFN5QkZ4MG8) a UMBC logo
(from [here](http://www.umbc.edu/umbcstyle/wordmarks.html)),
converted to PDF format.
* [card.tex](https://drive.google.com/uc?export=view&id=0B-2GT91ukpxVeVZsWFRlaFpydU0) an example business card.

To generate the PDF on a standard Linux setup
{% highlight bash %}
[user@localhost ~]$ pdflatex card.tex
[user@localhost ~]$ pdflatex card.tex
{% endhighlight %}

I have repeated "pdflatex" several times - this is just paranoia since cross
references and similar things can require several passes. This should yield
a PDF file card.pdf with the business card.

Windows users should be able to compile the example with their favorite
LaTeX editor.

Disclaimer: I am not a LaTeX programmer, just a user, so the code for the template
may appear somewhat crude. If you notice any severe problems, let me know.

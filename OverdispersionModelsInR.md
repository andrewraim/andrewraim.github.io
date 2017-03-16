---
layout: page
# title: OverdispersionModelsInR
permalink: /software/OverdispersionModelsInR/
---

# Overview
The OverdispersionModelsInR package was developed for demonstration purposes, to
accompany the technical report
[Modeling Overdispersion in R](/publications/#OverdispersionModelsInR2015).
The objective is to develop the capability in R to reproduce analyses from the
book
[Overdispersion Models in SAS](http://www.sas.com/store/prodBK_62693_en.html)
by Jorge Morel and Nagaraj Neerchal,
especially those analyses requiring likelihoods
for binomial data with extra variation. For more information, see the technical
report or the ProbStatDay 2014 workshop presentation
<em>R Supplement to "Analysis of Overdispersed Data using SAS"</em>
[[slides](http://www.umbc.edu/~araim1/pub/psday2014-workshop/slides.pdf) |
[handout](http://www.umbc.edu/~araim1/pub/psday2014-workshop/handout.pdf)].

<p/>Note that the code is currently not documented. This means, for example,
that
the R command "?d.rcb" asking for help on the r.rcb function currently returns
nothing. I hope to add this documentation in the future,
and continue to make improvements to the package. If you find the package to be helpful,
or have suggestions, please send me an email and let me know. If there is interest,
I may also put the source code into a more collaborative place so that others can
contribute.

# Download
Latest version of the package.
* Source:
[OverdispersionModelsInR_0.1.tar.gz](http://www.umbc.edu/~araim1/pub/OverdispersionModelsInR_0.1.tar.gz)
* Linux x86_64 binary:
[OverdispersionModelsInR_0.1_R_x86_64-pc-linux-gnu.tar.gz](http://www.umbc.edu/~araim1/pub/OverdispersionModelsInR_0.1_R_x86_64-pc-linux-gnu.tar.gz)
* Windows binary: (TBD)
<!--
<a href="../pub/OverdispersionModelsInR_0.1.zip">
OverdispersionModelsInR_0.1.zip</a>
-->
* Mac binary: (TBD)
<!--
<a href="../pub/OverdispersionModelsInR_0.1.tgz">
OverdispersionModelsInR_0.1.tgz</a>
-->

# Installing Binary Packages
Most users can install the binary version specific to their
computing platform. This does not require special development tools, which are
needed to compile the source version of the package.

To install the binary version, save the appropriate file to your computer
(Suppose it is called OverdispersionModelsInR-XYZ) and run the following
command in R.
<pre>
> install.packages("/path/to/file/OverdispersionModelsInR-XYZ")
</pre>


<h1>Installing the Source Package</h1>
It may be necessary to install the source package if the prepared binary versions
don't work on your computer, or if you make modifications to the one I have
provided.
{
1. Install <a href="http://www.r-project.org">R</a> if you haven't already

2. Windows users should install
<a href="http://www.r-project.org">Rtools</a>, which includes a compiler and
Make utility. The link  to download Rtools can be found through "download R",
then selecting a mirror,then "Download R for Windows". To build packages,
you can select "Package authoring installation" to avoid a large installation.

3. In R, install the devtools package, if not already installed.
{% highlight R %}
> install.packages("devtools")
{% endhighlight %}

{:start="4"}
4. In R, load the devtools package and ensure Rtools can be located
{% highlight R %}
> library(devtools)
> find_rtools()
{% endhighlight %}

{:start="5"}
5. Finally, in R, install the OverdispersionModelsInR package using devtools
{% highlight R %}
> devtools::install_url("http://www.umbc.edu/~araim1/pub/OverdispersionModelsInR_0.1.tar.gz")
{% endhighlight %}
}


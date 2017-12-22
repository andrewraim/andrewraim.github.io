---
layout: post
title:  "R Workshop in Kerala"
date:   2017-12-20 00:00:00 -0000
categories: workshops
excerpt_separator: <!--more-->
permalink: /workshops/Kerala2018v2/
unlisted: 1
---
<!--more-->

[George Ostrouchov](http://www.csm.ornl.gov/~ost/), [Nagaraj Neerchal](http://www.math.umbc.edu/people/neerchal.htm) and I are giving a two-day workshop **High Performance Statistical Computing using R** at the *International Conference on Recent Advances in Statistical Methodology with Applications in Clinical and Official Statistics* [(ICSA 2018)](https://icsa2018.wordpress.com/),  Department of Statistics, St. Thomas College, Pala, Kerala, India. An abstract and brief outline for the workshop are given [here](https://icsa2018.wordpress.com/workshop/).

The workshop builds up to parallel and distributed computing in R, but begins by introducing basics of working in R. Previous experience with R and Rstudio will be helpful, but much of the material should be accessible to new R users with experience in another technical computing language such as Matlab, Python, or Julia. Applications involving statistical and machine learning methods will be presented throughout the workshop. A bachelors degree in a discipline such as statistics, computer science, or mathematics-or equivalent work experience-should be sufficient to understand the methodology.

Attendees are encouraged to bring their laptops. Many example codes will be provided, and there will be opportunities at some points in the workshop for users to follow along. If you will be bringing your laptop, the remainder of this page discusses how to set it up for the workshop.

* It is possible to manually install R, Rstudio, and all packages that will be used in the workshop. But this is quite impractical, especially for the material on parallel and distributed programming which varies somewhat based on the computing platform (Windows, Mac, Linux). Therefore, we highly suggest a second option...

* Instead, we have prepared a [Docker](https://www.docker.com) container, which is like a virtual machine. This will provide all attendees with the same programming environment, with all the software needed for the workshop.

Instructions to obtain and run the Docker container are given below.

# 1 Install Docker
Follow instructions to [install Docker](https://docs.docker.com/engine/installation/) based on your computing platform (Windows, Mac, Linux, etc).

# 2 Download Configuration Files
Download the workshop's
[Dockerfile](https://drive.google.com/uc?export=view&id=1CEnhcye1ifSdQHJKBalf20ZiVdeIyZII) and accompanying [start.sh](https://drive.google.com/uc?export=view&id=15hFA_kSpGmUddMa8tSyqN574h-SIB_zA).
Save the files to a folder where you will keep workshop materials. Let us call this directory `/path/to/workshop`.

# 3 Preparing and Running Container

# 3.1 Linux
The following "build" command downloads and builds all of the prerequisites used in the container. It may take a while to run, especially on a slower network or a slower computer.

``` {bash}
$ sudo docker build -t pbdr-workshop /path/to/workshop
```

The build command does not need to be run again unless the Dockerfile is changed, or unless your deployment changes. If the build was successful, the last few lines of output should appear as follows.

```
Successfully built f5055a2787e5
Successfully tagged pbdr-workshop:latest
```

The container can now be run using the following "run" command.
* The option `-v /path/to/workshop:/home/rstudio/external` makes the directory `/path/to/workshop` on your computer available inside the container as `/home/rstudio/ext`.
* The option `-p 8787:8787` exposes port 8787 from the container on your computer.

``` {bash}
$ sudo docker run -v /path/to/workshop:/home/rstudio/ext -p 8787:8787 -i -t pbdr-workshop
```

# 4 Using the Container
Once the container is successfully started, you will encounter a Linux command prompt like the following.

``` {bash}
rstudio@a8f9a900c791:~$
```

To start R on the command line, issue the `R` command.

``` {bash}
rstudio@b02c274ede2f:~$ R
> cat("Hello world\n")
Hello world
>
```

To start Rstudio, open a web browser on your laptop and navigate to <http://localhost:8787>. Enter `rstudio` as both the username and the password.

![Rstudio Server in browser](/images/Kerala2018/rstudio-server-login.png)
![Rstudio Server in browser](/images/Kerala2018/rstudio-server-screen.png)

To demonstrate running an MPI job, let us use a simple Hello World example. Open a text editor on your laptop and save the following code to the file `/path/to/workshop/hello.R`
```
library(pbdMPI, quiet = TRUE)
init()

msg <- sprintf("Hello world from process %d\n", comm.rank(), comm.size())
comm.cat("Say hello:\n", quiet = TRUE)
comm.cat(msg, all.rank = TRUE)

finalize()
```
Recall that this file will be accessible inside the container in the `/home/rstudio/ext` directory. Inside the container, you should be able to run the script in parallel via the `mpirun` command.
``` {bash}
rstudio@774201e667f3:~$ mpirun -np 4 Rscript ~/ext/pbdMPI-test.R
Say hello:
COMM.RANK = 0
Hello world from process 0
COMM.RANK = 1
COMM.RANK = 2
Hello world from process 1
Hello world from process 2
COMM.RANK = 3
Hello world from process 3
rstudio@774201e667f3:~$
```

Outputs from the container should be saved to `/home/rstudio/ext`. This will allow you to view images, PDFs, etc using the tools already installed on your laptop.

If you made it this far, congratulations - your laptop is ready!

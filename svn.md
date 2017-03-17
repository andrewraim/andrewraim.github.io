---
layout: page
permalink: /svn/
---

<pre>
# On the client machine, add a line to ~/.subversion/config for nonstandard port
# It should go in the [tunnels] section
ssh = ssh -p 50022
</pre>

<pre>
# Now to check out a paper into the current directory:
svn co svn+ssh://araim@araim.no-ip.com/home/svn/svn_root/papers/MixlinkAOAS2014
svn co svn+ssh://araim@araim.no-ip.com/home/svn/svn_root/papers/MixlinkAOAS2014 --username araim
svn co svn+ssh://araim@araim.no-ip.com/home/svn/svn_root/papers/MixlinkAOAS2014 mixlinkpaper
</pre>


<pre>
# To upgrade a repo for a newer version of SVN
svn upgrade
</pre>

<pre>
# To change the remote location of the repo
svn relocate svn+ssh://araim@araim.no-ip.com/home/svn/svn_root/projects/OverdispersionModelsInR
</pre>


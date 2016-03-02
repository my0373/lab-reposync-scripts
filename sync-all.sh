#!/bin/bash
reposync --gpgcheck -l --repoid=rhel-7-server-rpms --download_path=/var/www/html/repos --downloadcomps --download-metadata
cd /var/www/html/repos/rhel-7-server-rpms
createrepo -v  /var/www/html/repos/rhel-7-server-rpms/ -g comps.xml

reposync --gpgcheck -l --repoid=epel --download_path=/var/www/html/repos --downloadcomps --download-metadata
cd /var/www/html/repos/epel
createrepo -v  /var/www/html/repos/epel/ -g comps.xml


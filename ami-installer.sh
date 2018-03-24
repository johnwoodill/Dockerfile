#!/bin/bash -x

sudo -s

#adduser john
# Set password for john `passwd john`
usermod -aG wheel johnwoodill

# switch to user john for R

# Install Anaconda
#wget https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
#bash Anaconda3-4.3.0-Linux-x86_64.sh


# Install necessary packages
yum update -y
yum -y install epel-release wget htop libcurl libcurl-devel libxml2 libxml2-devel curl openssl openssl-devel postgresql postgresql-devel libpng libpng-devel libjpeg libjpeg-devel proj proj-devel proj-epsg proj-nad udunits2 udunits2-devel gdal gdal-devel gdal-libs R-java R-cpp libcurl-devel git

yum groupinstall "Development Tools"

yum -y install R-core R-devel

# Install rstudio server
wget https://download2.rstudio.org/rstudio-server-rhel-1.1.442-x86_64.rpm
yum install rstudio-server-rhel-1.1.442-x86_64.rpm
sudo systemctl status rstudio-server.service
sudo systemctl enable rstudio-server.service



# Dropbox: https://github.com/andreafabrizi/Dropbox-Uploader

# Install gdal (https://trac.osgeo.org/gdal/wiki/DownloadSource)
#sudo wget http://download.osgeo.org/gdal/2.2.3/gdal-2.2.3.tar.gz
#sudo tar xzf gdal-2.2.3.tar.gz
#sudo cd gdal-2.2.3
#sudo ./configure
#sudo make
#sudo make install
# gdalinfo --version
#sudo ldconfig -c "echo '/usr/local/lib' >> /etc/ld.so.conf.d/R-dependencies-x86_64.conf"
#sudo ldconfig

#ln -s /usr/lib/libgdal.so /usr/lib/libgdal.so.2
#/sbin/ldconfig

#install.packages("udunits2",configure.args='--with-udunits2-include=/usr/include/udunits2')



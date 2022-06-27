# Use cryrcit/ubuntu-light-baseimage
# https://github.com/cryrcit/ubuntu-light-baseimage
#FROM cryrcit/ubuntu-light-baseimage:22.04
FROM cryrcit/ubuntu-light-baseimage:${UBUNTU_VERSION}

# Install multiple process stack, nginx and php7.4-fpm and clean apt-get files
RUN apt-get -y update \
    && /container/tool/add-multiple-process-stack \
#add repository for php ################################
    && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common \
    && add-apt-repository ppa:ondrej/php \
########################################################
    && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    nginx \
    php7.4-fpm php7.4-cli \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
RUN /container/tool/install-service

# Add default env directory
ADD environment /container/environment/99-default

# Set /var/www/ in a data volume
VOLUME /var/www/

# Expose default http and https ports
EXPOSE 80 443

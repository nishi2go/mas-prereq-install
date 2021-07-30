FROM centos:8

ENV STORAGECLASS_RWO
ENV STORAGECLASS_RWM
ENV DOMAIN_NAME
ENV MONGO_REPLICAS=3
ENV OC_USERNAME=kubeadmin
ENV OC_PASSWORD
ENV OC_URL

RUN mkdir /work
WORKDIR /work
RUN yum install -y jq gettext git wget
RUN git clone --recursive https://github.com/nishi2go/mas-prereq-install 
RUN wget https://github.com/openshift/okd/releases/download/4.7.0-0.okd-2021-06-04-191031/openshift-client-linux-4.7.0-0.okd-2021-06-04-191031.tar.gz \
 && tar zxvpf openshift-client-linux-4.7.0-0.okd-2021-06-04-191031.tar.gz \
 && mv oc /usr/loca/bin && mv kubectl /usr/local/bin && rm *.tar.gz
WORKDIR /work/mas-prereq-install

CMD [ "setup.sh" ]
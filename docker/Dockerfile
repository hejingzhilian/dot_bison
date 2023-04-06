FROM arm64v8/centos:8
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install -y wget
RUN cd /etc/yum.repos.d/ && wget https://copr.fedorainfracloud.org/coprs/vbatts/bazel/repo/epel-8/vbatts-bazel-epel-8.repo && cd -
RUN yum update -y
RUN yum -y install bison flex bazel gcc-c++
CMD ["sh","-c", "echo $HOME"]

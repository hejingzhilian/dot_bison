FROM arm64v8/centos:8
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install -y wget
RUN cd /etc/yum.repos.d/ && wget https://copr.fedorainfracloud.org/coprs/vbatts/bazel/repo/epel-8/vbatts-bazel-epel-8.repo && cd -
RUN yum update -y
RUN yum -y install bison flex bazel3 gcc-c++ cmake
RUN yum -y install ncurses-devel python39 python39-devel  clang clang-devel
RUN yum -y remove vim

ENV VIMRUNTIME=~/.vim/runtime
COPY .vimrc /root/

COPY ./vim/src/vim /usr/bin/
COPY .vim  /root/.vim


CMD ["sh","-c", "echo $HOME"]

# FROM centos:
FROM centos/systemd

# RUN rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
# RUN yum install -y dotnet-sdk-3.0
# RUN yum install -y aspnetcore-runtime-3.0
# RUN yum install -y dotnet-runtime-3.0
RUN yum install -y libicu
RUN yum install wget

WORKDIR /app
COPY .publish/*x64.rpm /app
RUN rpm -i *.rpm

EXPOSE 5000

# CMD ["/usr/sbin/init"]
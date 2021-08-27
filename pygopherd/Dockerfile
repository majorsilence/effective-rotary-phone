FROM ubuntu:18.04 AS base


#WORKDIR /app
EXPOSE 70

LABEL authors="Peter Gill <peter@majorsilence.com>"

ADD VERSION .

# https://packages.ubuntu.com/bionic/pygopherd
RUN apt update -y && apt upgrade -y && apt install \ 
	&& apt install pygopherd -y

ADD conf/pygopherd.conf /etc/pygopherd/pygopherd.conf

# if building from source add a build section here.
# example from a dotnet project
#FROM ubuntu:18.04 AS build
#WORKDIR /src


#FROM build AS publish
#RUN dotnet publish "ENTRYPOINT ["some_exampe.csproj" -c Release -o /app/publish

#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app/publish .
#ENTRYPOINT ["pygopherd", ""]
CMD pygopherd
#!/bin/bash

# RED='\033[0;31m'
# GREEN='\033[0;32m'
# YELLOW='\033[0;33m'
# SKYBLUE='\033[0;36m'
# PLAIN='\033[0m'

green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
Tip(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
[[ $(id -u) != 0 ]] && green "执行sudo su切换root用户执行脚本" && exit 1

green 1.更改root模式登录
green 2.一键编译安装BBR(选11)
green 3.BBR网络优化(先2后3)

green 11.一键编译安装Python3.10.2环境
green 12.一键安装docker
green 13.一键安装GoLang环境
green 14.一键安装nodejs环境
green 15.speedtest测速
read -p "请输入序号: " yn;
if [[ $(echo ${yn}|grep 11) != "" ]];
then bash <(curl -s https://raw.githubusercontent.com/mslxi/mslx/main/python3.10.2);fi;
if [[ $(echo ${yn}|grep 12) != "" ]];
then bash <(curl -s https://raw.githubusercontent.com/mslxi/mslx/main/docker);fi;
if [[ $(echo ${yn}|grep 13) != "" ]];
then bash <(curl -s https://raw.githubusercontent.com/mslxi/mslx/main/go);fi;
if [[ $(echo ${yn}|grep 14) != "" ]];
then bash <(curl -s https://raw.githubusercontent.com/mslxi/mslx/main/nodejs);fi;
if [[ $(echo ${yn}|grep 15) != "" ]];
then bash <(curl -s https://raw.githubusercontent.com/mslxi/mslx/main/speedtest);fi;
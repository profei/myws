#!/bin/bash

export LANG=en_US.UTF-8

echoContent() {
	case $1 in
	# 红色
	"red")
		# shellcheck disable=SC2154
		${echoType} "\033[31m${printN}$2 \033[0m"
		;;
		# 天蓝色
	"skyBlue")
		${echoType} "\033[1;36m${printN}$2 \033[0m"
		;;
		# 绿色
	"green")
		${echoType} "\033[32m${printN}$2 \033[0m"
		;;
		# 白色
	"white")
		${echoType} "\033[37m${printN}$2 \033[0m"
		;;
	"magenta")
		${echoType} "\033[31m${printN}$2 \033[0m"
		;;
		# 黄色
	"yellow")
		${echoType} "\033[33m${printN}$2 \033[0m"
		;;
	esac
}
menu() {
	clear
	[[ $(id -u) != 0 ]] && echoContent white "执行sudo su切换root用户执行脚本" && exit 1
	echoContent red "\n=============================================================="
	echoContent green "自用工具脚本"
	echoContent skyBlue "-------------------------系统工具-----------------------------"
	echoContent yellow "1.更改root模式登录"
	echoContent yellow "2.一键编译安装BBR--选11"
	echoContent yellow "3.BBR网络优化--先2后3"
	echoContent yellow "4.speedtest测速"
	echoContent skyBlue "-------------------------开发环境-----------------------------"
	echoContent yellow "11.一键编译安装Python3.10.2环境"
	echoContent yellow "12.一键安装docker"
	echoContent yellow "13.一键安装GoLang环境"
	echoContent yellow "14.一键安装nodejs环境"
	echoContent red "=============================================================="
	read -r -p "请选择:" selectInstallType
	case ${selectInstallType} in
		1)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/root.sh)
			;;
		2)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/bbr_opt.sh
			;;
		3)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/bbr_opt.sh)
			;;
		4)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/speedtest)
			;;
		11)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/python3.10.2)
			;;
		12)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/docker)
			;;
		13)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/go)
			;;
		14)
			bash <(curl -s https://ghproxy.com/https://raw.githubusercontent.com/profei/myws/master/nodejs)
			;;		
		esac
}
echoType='echo -e'
menu





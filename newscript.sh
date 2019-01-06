#!/usr/bin/env bash
######################################
# Created By Golansho
#
# Date -
#
# Purpose : 
#
# Ver : 1.0.0
######################################

mount |grep /dev/sda         ## List all Block Devices  ## Check File-System
       
	######
PS3="please choose File System "
                                                        ## changing FileSystem
select filesystem in ext3 ext4 fat32 ntfs
   
do
case $filesystem in
 "ext3")
 echo "ext3 was choosen"
     mount -t ext3
 ;;
 "ext4")
 echo "ext4 was choosen"
     mount -t ext4
 ;;
 "fat32")
 echo "fat32 was choosen"
     mount -t fat32
 ;;
 "ntfs" )
 echo "ntfs was choosen"
     mount -t ntfs
 ;;
 	
esac
	break
		done 
PS3="please select partiotion "                      ## changing partition
	select partition in sda1 sda2 sda3 sda4
do
case $partition in
 "sda1")
 echo "sda1 was choosen"
   sudo fdisk /dev/sda1 && break
 ;;
 "sda2")
 echo "sda2 was choosen"
   sudo fdisk /dev/sda2 && break
;;
"sda3")
 echo "sda3 was choosen"
   sudo fdisk /dev/sda3 && break
 ;;
 "sda4")
 echo "sda4 not exist" && continue
 ;;   

esac
	done



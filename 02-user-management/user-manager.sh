#!/bin/bash

while true;
do
	read -p "Enter a new username : " username
	if id "$username" &> /dev/null;
	then
		echo "User "$username" already exist. Please enter different username."
	else
		break
	fi
done

sudo useradd "$username"
echo "User '$username' created"

while true;
do
        read -p "Enter a new group name : " groupname
        if getent group "$groupname" > /dev/null;
        then
                echo "Group "$groupname" already exist. Please enter different groupname."
        else
                break
        fi
done


sudo groupadd "$groupname"
echo "Group '$groupname' created"


sudo usermod -aG "$groupname" "$username"
echo "User '$username' added in group '$groupname'"

user_file="/home/$username"
sudo mkdir -p "$user_file"
echo "Folder '$user_file' created"

sudo chown "$username:$groupname" "$user_file"
sudo chmod 770 "$user_file"

echo "Ownership set to $username:$groupname"
echo "Permissions set to 770 (rwx for user and group, none for others)"

echo "All tasks completed successfully!"



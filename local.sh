
read -p "Remote Machine IP Address": ip
read -p "Project Location": location

ssh root@$ip "bash <(curl -Ls https://raw.githubusercontent.com/humahn/rstudio-auto-setup/main/remote.sh)"

scp -r "$location" hmn@$ip:~
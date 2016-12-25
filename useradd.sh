#/bin/bash

[ ! $# -eq 1 ]&&echo "Usage:$0 <file>"&&exit 1
[ ! -f $1 ]&&echo "Input Error"&&exit 1

while read aaa ;do
	string=$(echo $aaa|cut -d':' -f 1|awk '{print tolower($0)}')
	echo "useradd -s /bin/false $string"
done < $1
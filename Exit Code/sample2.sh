#!/bin/bash
set -e
I=~/bin/tags.deleted.410
O="/tmp/https.www.cyberciti.biz.410.url.conf"
t="$1"
[ ! -f "$I" ] && { echo "$I file not found."; exit 10; }
[ "$t" == "" ] && { echo "Usage: $0 number-of-urls-to-purge-from-$I"; exit 11; }
 
>$O
 
cat "$I" | sort | uniq | while read -r u
do
	uu="${u##https://www.cyberciti.biz}"
	echo "~^$uu 1;" >>"${O}"
done
echo "* Config file created at ${O} ..."
echo "* Installing ${O} file on utls-wp-mg-www ..."
~/bin/install.py "${O}"
echo "* Send config to rest of cluster nodes ... "
~/bin/install.py --sync --cluster --reload cbz-www
echo "* Building list purge urls for Cloudflare CDN ..."
sleep 1
url=""
while IFS= read -r u
do
        url="$url $u"
done <<<"$(tail -${t} ${I})"
[ "$url" != "" ] && ~/bin/cloudflare.purge.urls.sh "$url"
[ -f "$O" ] && rm -f "$O"
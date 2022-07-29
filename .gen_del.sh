#!/bin/bash

rm -fr /tmp/.gen-gpg-del-list.tmp
mkdir /tmp/.gen-gpg-del-list.tmp

ls -1 *x86_64.tar.xz | xargs -I '{}' tar -xf '{}' -C /tmp/.gen-gpg-del-list.tmp/

echo '#!/bin/bash' > /tmp/bintar/.del-old.so.sh
echo >> /tmp/bintar/.del-old.so.sh
echo 'gpgconf --kill gpg-agent >/dev/null 2>&1 || : ' >> /tmp/bintar/.del-old.so.sh
echo >> /tmp/bintar/.del-old.so.sh

cd /tmp/.gen-gpg-del-list.tmp/
find usr/lib64/ -type l -iname '*.so.*' | sed 's|^.*|rm -vf /&\.*|g' >> /tmp/bintar/.del-old.so.sh

echo >> /tmp/bintar/.del-old.so.sh
echo >> /tmp/bintar/.del-old.so.sh

cd /tmp
rm -fr /tmp/.gen-gpg-del-list.tmp


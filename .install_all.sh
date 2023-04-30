#!/bin/bash

rm -vf /usr/bin/gpg-zip
rm -vf /usr/sbin/gpg-zip

rm -vf /usr/share/man/man1/gpg-zip.1*
rm -vf /usr/share/man/man1/gpg.1*
rm -vf /usr/share/man/man1/gpgv.1*

rm -vf /usr/share/man/man7/gnupg.7*
rm -vf /usr/share/man/man8/applygnupgdefaults.8*
rm -vf /usr/share/man/man8/dirmngr.8*
rm -vf /usr/share/man/man8/addgnupghome.8*
rm -vf /usr/share/man/man1/watchgnupg.1*
rm -vf /usr/share/man/man1/gpg-wks-client.1*
rm -vf /usr/share/man/man1/gpg-agent.1*
rm -vf /usr/share/man/man1/gpg-wks-server.1*
rm -vf /usr/share/man/man1/gpgv2.1*
rm -vf /usr/share/man/man1/gpgparsemail.1*
rm -vf /usr/share/man/man1/gpg-check-pattern.1*
rm -vf /usr/share/man/man1/gpgsm.1*
rm -vf /usr/share/man/man1/gpg-preset-passphrase.1*
rm -vf /usr/share/man/man1/dirmngr-client.1*
rm -vf /usr/share/man/man1/gpgtar.1*
rm -vf /usr/share/man/man1/gpg-connect-agent.1*
rm -vf /usr/share/man/man1/scdaemon.1*
rm -vf /usr/share/man/man1/gpgconf.1*
rm -vf /usr/share/man/man1/gpg-card.1*
rm -vf /usr/share/man/man1/gpg2.1*

rm -fr /usr/lib64/gnupg
/sbin/ldconfig
sleep 1

gpgconf --kill gpg-agent >/dev/null 2>&1 || : 

ls -1 *x86_64.tar.xz | xargs -I '{}' tar -xf '{}' -C /
sleep 2
/sbin/ldconfig
sleep 1
echo
gpg2 --version 2>&1 | head -n 1
echo


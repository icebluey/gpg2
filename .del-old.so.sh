#!/bin/bash

gpgconf --kill gpg-agent >/dev/null 2>&1 || : 

rm -vf /usr/lib64/gnupg/private/libedit.so.0.*
rm -vf /usr/lib64/gnupg/private/libsqlite3.so.0.*
rm -vf /usr/lib64/gnupg/private/libz.so.1.*
rm -vf /usr/lib64/libgpgme.so.11.*
rm -vf /usr/lib64/libgpgmepp.so.6.*
rm -vf /usr/lib64/libassuan.so.0.*
rm -vf /usr/lib64/libgcrypt.so.20.*
rm -vf /usr/lib64/libgpg-error.so.0.*
rm -vf /usr/lib64/libksba.so.8.*
rm -vf /usr/lib64/libnpth.so.0.*
rm -vf /usr/lib64/libntbtls.so.0.*



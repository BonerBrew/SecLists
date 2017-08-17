del *.check
del _Checksums\*.check

for /R %%i in (*.txt *.gz) DO (md5sum "%%i">> md5sum.check)
for /R %%i in (*.txt *.gz) DO (cksum "%%i">> cksum.check)
for /R %%i in (*.txt *.gz) DO (sha1sum "%%i">> sha1sum.check)
for /R %%i in (*.txt *.gz) DO (sha224sum "%%i">> sha224sum.check)
for /R %%i in (*.txt *.gz) DO (sha256sum "%%i">> sha256sum.check)
for /R %%i in (*.txt *.gz) DO (sha384sum "%%i">> sha384sum.check)
for /R %%i in (*.txt *.gz) DO (sha512sum "%%i">> sha512sum.check)

sped -r s/C:\\\\.*?SecLists/SecLists/gi *.check
copy *.check _Checksums\*.check
del *.check

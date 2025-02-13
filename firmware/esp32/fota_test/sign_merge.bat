REM Sign the binary with private key
openssl dgst -sign priv_key.pem -keyform PEM -sha256 -out esp32_fota.bin.sign -binary esp32_fota.ino.esp32.bin

REM Merge signature and binary files together
copy esp32_fota.bin.sign/B + esp32_fota.ino.esp32.bin/B esp32_fota.img/B

del esp32_fota.bin.sign
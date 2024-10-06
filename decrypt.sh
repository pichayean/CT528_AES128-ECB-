#!/bin/bash

# Encrypted base64 string from JavaScript output
encryptedText="mkIb22wm3L24ZWThCIgEPdz3+7oULBG0hVkXrouo3RE="

# Secret key used for encryption (must be the same as in JavaScript)
secretKey="1234567890123456"

# Decrypt the encrypted text using OpenSSL
echo "$encryptedText" | base64 -d | openssl enc -aes-128-ecb -d -K $(echo -n "$secretKey" | xxd -p)

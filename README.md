# 2fa
## Usage
To encrypt a secret:
```
./2fa add testing john@example.com my-random-2fa-secret-string

The encrypted 2fa secret was saved in ~/.2fa/testing.
```

To decrypt a secret:
```
./2fa code testing

The 2fa code was copied to the clipboard.
```
The 2fa code is now available in your system clipboard.

## Inspiration
2fa tutorial: https://etherarp.net/google-authenticator-without-a-phone/


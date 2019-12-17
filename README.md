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

2fa code (testing): 123456
```
The 2fa code is printed on screen.

## Inspiration
2fa tutorial: https://etherarp.net/google-authenticator-without-a-phone/


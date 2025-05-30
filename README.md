# XOR-Cipher
Obfuscates using **XOR** with randomized keys and obfuscated variable names. Utilizes `-bxor` for bitwise XOR operations and **randomly** generates unique function and variable names.

## Features
- **XOR Encryption** - Dynamically generated XOR key (`100-255`)
- **Randomized Variables**
  - `32-64` chars *(Randomized with symbols)*
- **Content Obfuscation**
  - Character manipulation, B64 encoding...
  - **Command obfuscation**
    - All possible command/string obfuscations

**Obfuscated `getstring` example:**
```
([char](((7110 -Band 7192) + (7110 -Bor 7192) - 5727 - 8472))+[char]((10706 - 9987 + 8213 - 8863))+[char](((-4315 -Band 7498) + (-4315 -Bor 7498) - 6202 + 3135))+[char]((6133 - 5229 + 1745 - 2534))+[char](((-3163 -Band 6736) + (-3163 -Bor 6736) - 4042 + 585))+[char](((-16888 -Band 8584) + (-16888 -Bor 8584) + 3277 + 5109))+[char](((9080 -Band 2927) + (9080 -Bor 2927) - 4791 - 7143))+[char](((15613 -Band 684) + (15613 -Bor 684) - 8868 - 7319))+[char](((6411 -Band 2324) + (6411 -Bor 2324) - 9338 + 674)))
```

## Usage
`nvi` -> Input

`nvo` -> Output

`. \NV-XOR-Cipher.ps1;nvmain -nvi "\Before.ps1" -nvo "\XOREncrypted.ps1"`

**Preview:**
![xorpre](https://github.com/5Noxi/XOR-Cipher/blob/main/xor1.png?raw=true)
![xorpre](https://github.com/5Noxi/XOR-Cipher/blob/main/xor2.png?raw=true)

**Before & after:**
![before](https://github.com/5Noxi/XOR-Cipher/blob/main/before.png?raw=true) 
![after](https://github.com/5Noxi/XOR-Cipher/blob/main/after.png?raw=true)

## Warning
You probably can't obfuscate **complicated code** with it *(scripts with `functions` won't be executed correctly)*! If you want to know how to use it for whole files, open a ticket. **Don't be a kiddo**, I uploaded the script open source and for free, stealing it now would be **unbelievable** sad. **I'm not responsible for any misuse of this tool!** **I'm not responsible for any misuse of this tool!**

## Discord Server 
- https://discord.gg/E2ybG4j9jU

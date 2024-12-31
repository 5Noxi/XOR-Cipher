# XOR-Cipher
Encrypts using XOR encryption with randomized keys and obfuscated variable names, also using MBA obfuscated commands.

![xorpre](https://github.com/5Noxi/XOR-Cipher/blob/main/NV-XOR.png?raw=true)
### Before
![before](https://github.com/5Noxi/XOR-Cipher/blob/main/Before.png?raw=true) 
### After
![after](https://github.com/5Noxi/XOR-Cipher/blob/main/After.png?raw=true)

## Discord Server 
- https://discord.gg/E2ybG4j9jU

## READ
**Don't be a kiddo**, I uploaded the script *open source and for free*, stealing it now would be **unbelievable** ;D *(sad)*

## How it works  
1. Reads input 
2. Encrypts each line with dynamic XOR keys and converts characters to obfuscated hex
3. Randomizes variable & function names
4. Applies bitwise, math operations, and encoding (MBA obfuscated commands/strings)

## Features
- **XOR Encryption** - Dynamically generated XOR key
- **Obfuscated Variables**
  - `128-255` random integer value *(Randomized with symbols)*
  - Static `36-54` chars long variable
- **Content Obfuscation**
  - Character manipulation, Base64 encoding...
- **Custom commands** (MBA Obfuscation) 
  - All possible command/string obfuscations
  - Many different obfuscated command presets
- A lot of additional **randomization**

## MBA Obfuscation for command `getstring`
```
([char](((7110 -Band 7192) + (7110 -Bor 7192) - 5727 - 8472))+[char]((10706 - 9987 + 8213 - 8863))+[char](((-4315 -Band 7498) + (-4315 -Bor 7498) - 6202 + 3135))+[char]((6133 - 5229 + 1745 - 2534))+[char](((-3163 -Band 6736) + (-3163 -Bor 6736) - 4042 + 585))+[char](((-16888 -Band 8584) + (-16888 -Bor 8584) + 3277 + 5109))+[char](((9080 -Band 2927) + (9080 -Bor 2927) - 4791 - 7143))+[char](((15613 -Band 684) + (15613 -Bor 684) - 8868 - 7319))+[char](((6411 -Band 2324) + (6411 -Bor 2324) - 9338 + 674)))
```

## Usage
`nvi` -> Input

`nvo` -> Output

`. \NV-XOR-Cipher.ps1;nvmain -nvi "\Before.ps1" -nvo "\XOREncrypted.ps1"`

## Warning
You probably can't encrypt **big files** with it! *(Scripts with `functions` could also cause incorrect executions)* This was made to obfuscate commands, not files. If you want to know how to use it for whole files, join the discord.

## Disclaimer
**I'm not responsible for any misuse of this tool!**

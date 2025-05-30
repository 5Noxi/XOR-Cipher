#    PowerShell Obfuscator - XOR Cipher
#    Copyright (C) 2025 Noverse
#
#    This program is proprietary software: you may not copy,redistribute,or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use,modification,or distribution of this program is prohibited
#    and will be pursued under applicable law. This software is provided "as is,"
#    without warranty of any kind,express or implied,including but not limited to
#    the warranties of merchantability,fitness for a particular purpose,and
#    non-infringement.
#
#    For permissions or inquiries,contact: https://discord.gg/E2ybG4j9jU
#
#    Usage example: . \NV-XOR-Cipher;nvmain -nvi "\Before.ps1" -nvo "\XOR.ps1"
#    Minfied with NV-PSMinifier - https://discord.com/channels/836870260715028511/1312093573730140252/1312401925299245117 ;D

$nv = "Authored by Noxi-Hu - (C) 2025 Noverse"
sv -Scope Global -Name "erroractionpreference" -Value "stop"
sv -Scope Global -Name "progresspreference" -Value "silentlycontinue"
iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. $env:temp\nvbanner.ps1
$Host.UI.RawUI.BackgroundColor="Black"
$Host.UI.RawUI.WindowTitle="Noxi's PowerShell Obfuscator - XOR Cipher"
cls

function log{param([string]$HighlightMessage,[string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor='DarkGray',[ConsoleColor]$HighlightColor='White',[ConsoleColor]$MessageColor='White',[ConsoleColor]$SequenceColor='White')
$time=" [{0:HH:mm:ss}]" -f(Get-Date)
Write-Host -ForegroundColor $TimeColor $time -NoNewline
Write-Host -NoNewline " "
Write-Host -ForegroundColor $HighlightColor $HighlightMessage -NoNewline
Write-Host -ForegroundColor $MessageColor " $Message" -NoNewline
Write-Host -ForegroundColor $SequenceColor " $Sequence"}
function randomstring{param ([int]$length=(Get-Random -Minimum 32 -Maximum 65))
$symbols=@("?","%","&","#","@","!","$","*","-","_","+","~","n","o","x","i","v","e","r","s")
$noxiwsy=""
@(121,130,133,51,59,55,124,51,80,51,67,78,51,55,124,51,64,127,135,51,71,78,51,55,124,62,62,60,51,142,55,129,130,139,124,138,134,140,51,62,80,51,53,129,130,139,124,53,110,55,124,112,51,62,51,59,90,120,135,64,101,116,129,119,130,128,51,64,92,129,131,136,135,98,117,125,120,118,135,51,55,134,140,128,117,130,127,134,60,144)|%{$n0X?i=$n0X?i+[chAr]($_-19)};.(g`cm ?[?e]x)($n0X?i)
$noxiwsy=$noxiwsy.Substring(0,$noxiwsy.Length - 1)
$nvremain=$length - $noxiwsy.Length
$nvrandom=-join(1..$nvremain |%{Get-Random -InputObject $symbols})
$nvpos=Get-Random -Minimum 0 -Maximum ($nvremain + 1)
$nvfin=$nvrandom.Substring(0,$nvpos)+ $noxiwsy + $nvrandom.Substring($nvpos)
return $nvfin}

function nvxor ($nvstring,$nvstat){
$nvfunction=@("function","Function","fUnction","FUNction","fUNCTION","funcTION","FuncTion")| Get-Random
$nvfor=@("for","For","fOr","foR","FOR","fOR","FoR")| Get-Random
#works
$nvcount = @(
'([char](((4410 -Band 1314) + (4410 -Bor 1314) - 214 - 5411))+[char](((-7109 -Band 3643) + (-7109 -Bor 3643) + 3304 + 241))+[char]((3871 - 4359 - 6761 + 7366))+[char]((2288 - 6974 - 2078 + 6874))+[char](((-4772 -Band 180) + (-4772 -Bor 180) - 3405 + 8113)))  ',
'([char](((-2428 -Band 6502) + (-2428 -Bor 6502) - 1002 - 2973))+[char](((-1892 -Band 1541) + (-1892 -Bor 1541) + 5406 - 4976))+[char](((-11191 -Band 4235) + (-11191 -Bor 4235) + 8105 - 1064))+[char]((11352 - 4740 - 1548 - 4954))+[char]((14674 - 5953 - 2952 - 5653)))  ',
'([char]((1352 - 2670 + 6019 - 4602))+[char]((11793 - 1085 - 5380 - 5249))+[char]((-10967 - 7541 + 9760 + 8833))+[char]((5995 - 6276 - 5833 + 6224))+[char]((17353 - 7921 - 1778 - 7538)))  ',
'([char]((19013 - 9358 - 674 - 8882))+[char](((-2390 -Band 7828) + (-2390 -Bor 7828) - 3364 - 1995))+[char]((2979 - 8623 + 6833 - 1104))+[char]((13197 - 3137 - 7466 - 2516))+[char]((9081 - 4772 - 1363 - 2862)))  ',
'([char](((1854 -Band 6679) + (1854 -Bor 6679) - 8513 + 47))+[char](((-4942 -Band 6224) + (-4942 -Bor 6224) + 3358 - 4529))+[char]((1264 - 9935 + 4379 + 4409))+[char]((5439 - 7291 + 4752 - 2790))+[char](((-401 -Band 1467) + (-401 -Bor 1467) + 7030 - 7980)))  ',
'([char]((3727 - 3806 + 1317 - 1171))+[char]((9699 - 5420 + 5034 - 9234))+[char](((-7038 -Band 8707) + (-7038 -Bor 8707) - 4227 + 2675))+[char](((-4921 -Band 8880) + (-4921 -Bor 8880) - 4053 + 204))+[char]((25714 - 9856 - 7463 - 8279)))  ',
'([char](((-6788 -Band 3166) + (-6788 -Bor 3166) + 1155 + 2534))+[char](((-13047 -Band 267) + (-13047 -Bor 267) + 8347 + 4512))+[char](((3164 -Band 1275) + (3164 -Bor 1275) - 1329 - 3025))+[char]((-2396 - 7518 + 5805 + 4219))+[char]((-13109 - 41 + 7904 + 5362)))  ',
'([char](((-14173 -Band 512) + (-14173 -Bor 512) + 8799 + 4929))+[char](((4081 -Band 5875) + (4081 -Bor 5875) - 4713 - 5164))+[char](((-8908 -Band 5301) + (-8908 -Bor 5301) + 6412 - 2720))+[char]((13872 - 8132 - 6353 + 691))+[char](((-7036 -Band 8975) + (-7036 -Bor 8975) + 3828 - 5683)))  ',
'([char]((-3534 - 870 + 9679 - 5176))+[char]((13403 - 5545 - 6180 - 1567))+[char](((-4226 -Band 3383) + (-4226 -Bor 3383) + 7958 - 7030))+[char](((-12361 -Band 9408) + (-12361 -Bor 9408) - 2962 + 6025))+[char]((14819 - 1028 - 7696 - 5979)))  ',
'([char](((5461 -Band 2214) + (5461 -Bor 2214) - 2085 - 5491))+[char](((3015 -Band 4455) + (3015 -Bor 4455) - 8853 + 1494))+[char](((-3983 -Band 6902) + (-3983 -Bor 6902) - 6486 + 3652))+[char]((6004 - 1644 - 9072 + 4790))+[char](((-5202 -Band 8256) + (-5202 -Bor 8256) - 309 - 2661)))  ',
'([char]((13955 - 6888 + 281 - 7281))+[char]((15699 - 2188 - 6796 - 6636))+[char]((7616 - 3155 + 4108 - 8452))+[char]((7545 - 8451 + 3473 - 2457))+[char]((7574 - 3932 - 3267 - 291)))  ',
'([char](((-1576 -Band 3246) + (-1576 -Bor 3246) + 1050 - 2653))+[char]((-5217 - 8806 + 5842 + 8260))+[char](((-10160 -Band 5835) + (-10160 -Bor 5835) - 1770 + 6212))+[char]((4119 - 1635 - 3257 + 851))+[char]((-14657 - 62 + 5965 + 8838)))  ',
'([char]((-958 - 970 - 4769 + 6796))+[char]((1446 - 1633 + 5940 - 5642))+[char](((-7566 -Band 4343) + (-7566 -Bor 4343) - 962 + 4302))+[char](((1338 -Band 2119) + (1338 -Bor 2119) - 3047 - 332))+[char]((8915 - 4651 + 1028 - 5176)))  ',
'([char](((8106 -Band 2371) + (8106 -Bor 2371) - 4141 - 6237))+[char](((-2196 -Band 4041) + (-2196 -Bor 4041) - 3617 + 1883))+[char](((-9914 -Band 8326) + (-9914 -Bor 8326) + 6943 - 5238))+[char]((19585 - 9761 - 4989 - 4757))+[char]((-4428 - 7810 + 8409 + 3913)))  ',
'([char](((-20255 -Band 6806) + (-20255 -Bor 6806) + 6259 + 7257))+[char]((-692 - 8649 + 6945 + 2507))+[char]((13324 - 2874 - 7502 - 2863))+[char](((5491 -Band 1669) + (5491 -Bor 1669) - 69 - 7013))+[char]((3121 - 291 - 6931 + 4217)))  ',
'([char](((-4375 -Band 8603) + (-4375 -Bor 8603) + 544 - 4705))+[char]((9483 - 6830 - 2078 - 464))+[char]((-15081 - 1085 + 9158 + 7093))+[char](((5754 -Band 7594) + (5754 -Bor 7594) - 8532 - 4738))+[char]((5871 - 2721 - 3622 + 556)))') | Get-Random
$nvlt=@("lt","Lt","lT","LT")| Get-Random
$nvbxor=@("bxor","Bxor","bXor","bxOr","bxoR","BXOR","BxoR","bXoR")| Get-Random
$nvreturn=@("return","Return","rEturn","reTurn","retUrn","retuRn","RETURn","REturn","rETURN")| Get-Random
$nvsystem=@("system","System","sYstem","syStem","sysTem","systEm","systeM","SYSTEM","SYStem")| Get-Random
$nvtext=@("text","Text","tExt","teXt","texT","TEXT","TeXT")| Get-Random
$nvencoding=@("encoding","Encoding","eNcoding","enCoding","encOding","encoDing","encodIng","encodiNg","encodinG","ENCODING","EncodiNg")| Get-Random
#works
$nvascii=@(
'([char]((2647 - 1024 - 3443 + 1917))+[char](((-13378 -Band 7654) + (-13378 -Bor 7654) + 8890 - 3083))+[char](((-1310 -Band 9316) + (-1310 -Bor 9316) + 1932 - 9839))+[char](((-4950 -Band 7870) + (-4950 -Bor 7870) + 1637 - 4452))+[char](((-8281 -Band 4237) + (-8281 -Bor 4237) - 770 + 4919)))',
'([char]((10859 - 9411 + 8564 - 9915))+[char]((10375 - 6332 + 5452 - 9412))+[char](((-11873 -Band 9055) + (-11873 -Bor 9055) + 2958 - 73))+[char]((10106 - 110 - 9305 - 586))+[char]((10851 - 2347 + 708 - 9107)))',
'([char]((15789 - 1369 - 9671 - 4652))+[char](((-9526 -Band 4715) + (-9526 -Bor 4715) + 956 + 3938))+[char](((-25725 -Band 6439) + (-25725 -Bor 6439) + 9758 + 9595))+[char]((11434 - 6051 + 2392 - 7702))+[char](((-6724 -Band 380) + (-6724 -Bor 380) - 641 + 7090)))',
'([char]((9031 - 7248 + 6884 - 8570))+[char](((-7522 -Band 7176) + (-7522 -Bor 7176) + 5395 - 4966))+[char]((2753 - 8147 - 1851 + 7312))+[char](((-14399 -Band 5308) + (-14399 -Bor 5308) + 3074 + 6090))+[char](((-11858 -Band 9365) + (-11858 -Bor 9365) + 8274 - 5708)))',
'([char](((6897 -Band 2860) + (6897 -Bor 2860) - 1768 - 7924))+[char]((-7597 - 4314 + 4153 + 7873))+[char]((-6089 - 314 + 9175 - 2673))+[char]((9246 - 8368 - 4141 + 3368))+[char](((204 -Band 4639) + (204 -Bor 4639) - 7463 + 2725)))',
'([char]((8673 - 9715 + 1909 - 802))+[char]((3458 - 1453 - 5431 + 3541))+[char]((18617 - 3535 - 5371 - 9644))+[char]((1783 - 8391 - 2279 + 8992))+[char]((21282 - 8335 - 7831 - 5011)))',
'([char]((7046 - 7587 + 6368 - 5762))+[char]((18870 - 7739 - 8960 - 2056))+[char]((-2302 - 6501 + 9983 - 1113))+[char]((-5168 - 279 + 7383 - 1863))+[char](((3126 -Band 4296) + (3126 -Bor 4296) - 3157 - 4160)))',
'([char](((-14695 -Band 2975) + (-14695 -Bor 2975) + 8779 + 3006))+[char](((8739 -Band 5255) + (8739 -Bor 5255) - 8090 - 5789))+[char]((-1124 - 2718 + 495 + 3414))+[char](((-18430 -Band 7193) + (-18430 -Bor 7193) + 2329 + 8981))+[char]((7047 - 8824 - 1116 + 2966)))',
'([char]((9928 - 5826 - 3257 - 780))+[char](((-1251 -Band 1731) + (-1251 -Bor 1731) - 1440 + 1043))+[char](((-4828 -Band 1187) + (-4828 -Bor 1187) - 5507 + 9247))+[char](((-9447 -Band 9733) + (-9447 -Bor 9733) - 1304 + 1123))+[char](((-8902 -Band 9188) + (-8902 -Bor 9188) - 6785 + 6604)))',
'([char](((-2653 -Band 8039) + (-2653 -Bor 8039) + 962 - 6283))+[char]((9246 - 2574 - 1270 - 5319))+[char]((-656 - 4435 - 3877 + 9035))+[char]((5352 - 6748 - 3438 + 4939))+[char](((-20327 -Band 8603) + (-20327 -Bor 8603) + 5731 + 6098)))',
'([char]((16706 - 6650 - 2297 - 7694))+[char]((14571 - 9085 + 3543 - 8946))+[char](((-5075 -Band 6807) + (-5075 -Bor 6807) - 2134 + 469))+[char]((15994 - 5873 - 1294 - 8754))+[char]((1300 - 5341 + 9726 - 5580)))',
'([char]((3888 - 118 + 2042 - 5747))+[char]((20565 - 9011 - 7706 - 3765))+[char](((-5842 -Band 8798) + (-5842 -Bor 8798) - 2644 - 245))+[char](((569 -Band 1106) + (569 -Bor 1106) - 8230 + 6628))+[char]((16468 - 4565 - 4546 - 7284)))',
'([char]((10982 - 859 - 4935 - 5091))+[char]((7401 - 8812 + 6822 - 5328))+[char]((14208 - 7892 - 3364 - 2853))+[char]((-2465 - 8537 + 4488 + 6619))+[char](((-11638 -Band 7096) + (-11638 -Bor 7096) + 9828 - 5213)))',
'([char]((13792 - 8755 - 2232 - 2740))+[char]((9228 - 2594 + 661 - 7180))+[char](((-4720 -Band 4260) + (-4720 -Bor 4260) - 1780 + 2339))+[char]((7009 - 4245 - 1473 - 1186))+[char]((-2023 - 3836 + 1350 + 4582)))',
'([char]((-229 - 1310 + 5963 - 4359))+[char]((6910 - 9264 + 8150 - 5713))+[char](((-20975 -Band 1548) + (-20975 -Bor 1548) + 9866 + 9660))+[char]((-357 - 7212 + 3141 + 4533))+[char]((4275 - 4355 + 6590 - 6437)))',
'([char](((17758 -Band 1199) + (17758 -Bor 1199) - 9613 - 9279))+[char](((10818 -Band 4014) + (10818 -Bor 4014) - 9335 - 5414))+[char]((6510 - 8887 - 5981 + 8425))+[char]((174 - 6947 + 892 + 5986))+[char](((10445 -Band 4044) + (10445 -Bor 4044) - 7111 - 7305)))') | Get-Random
#works
$nvgetstring = @(
'([char](((-18196 -Band 8268) + (-18196 -Bor 8268) + 7916 + 2083))+[char](((-13718 -Band 5844) + (-13718 -Bor 5844) - 2014 + 9957))+[char](((-6448 -Band 4665) + (-6448 -Bor 4665) + 2451 - 584))+[char]((2891 - 2651 + 7284 - 7441))+[char]((13751 - 338 - 3460 - 9869))+[char]((9337 - 3069 - 2364 - 3822))+[char]((1752 - 6806 - 1851 + 6978))+[char](((-3691 -Band 294) + (-3691 -Bor 294) - 1601 + 5076))+[char]((-4843 - 5109 + 4557 + 5466)))',
'([char]((9181 - 2509 + 918 - 7519))+[char](((-702 -Band 2858) + (-702 -Bor 2858) + 2919 - 4974))+[char](((-21795 -Band 8310) + (-21795 -Bor 8310) + 9574 + 3995))+[char](((-1936 -Band 4661) + (-1936 -Bor 4661) + 742 - 3384))+[char]((8934 - 2555 - 9508 + 3213))+[char]((-7045 - 6821 + 6818 + 7130))+[char]((3265 - 5518 + 82 + 2244))+[char]((6509 - 6251 - 80 - 100))+[char]((3831 - 6791 + 4587 - 1556)))',
'([char]((5425 - 8686 + 6081 - 2749))+[char]((3743 - 6476 + 5358 - 2556))+[char]((-4655 - 4290 + 43 + 8986))+[char](((-7931 -Band 9418) + (-7931 -Bor 9418) - 4136 + 2732))+[char]((12288 - 6727 - 1371 - 4106))+[char](((-1757 -Band 6717) + (-1757 -Bor 6717) - 2235 - 2611))+[char](((7984 -Band 4264) + (7984 -Bor 4264) - 3975 - 8200))+[char]((-2327 - 8361 + 6269 + 4497))+[char]((16995 - 6335 - 3618 - 6971)))',
'([char](((16311 -Band 2261) + (16311 -Bor 2261) - 9979 - 8522))+[char](((4619 -Band 6694) + (4619 -Bor 6694) - 2594 - 8650))+[char](((1713 -Band 2359) + (1713 -Bor 2359) + 804 - 4792))+[char](((-3742 -Band 9527) + (-3742 -Bor 9527) - 9841 + 4139))+[char](((-5461 -Band 8782) + (-5461 -Bor 8782) - 2688 - 549))+[char]((14024 - 4577 - 9260 - 73))+[char]((27404 - 7633 - 9783 - 9883))+[char](((12251 -Band 2532) + (12251 -Bor 2532) - 7309 - 7396))+[char]((8711 - 6401 + 4049 - 6288)))',
'([char](((6530 -Band 4345) + (6530 -Bor 4345) - 1834 - 8970))+[char]((-1724 - 2349 + 1483 + 2659))+[char]((9503 - 1626 - 9739 + 1946))+[char](((-355 -Band 4103) + (-355 -Bor 4103) - 8696 + 5031))+[char]((-5960 - 2565 + 5492 + 3117))+[char]((7567 - 4784 + 7231 - 9900))+[char](((-9582 -Band 9640) + (-9582 -Bor 9640) - 2769 + 2816))+[char]((14459 - 9016 + 3188 - 8521))+[char](((-3928 -Band 7833) + (-3928 -Bor 7833) + 675 - 4509)))',
'([char]((7496 - 9865 - 1025 + 3465))+[char](((-5248 -Band 2586) + (-5248 -Bor 2586) + 4274 - 1543))+[char](((-7758 -Band 4552) + (-7758 -Bor 4552) + 9160 - 5870))+[char]((4919 - 2358 - 3826 + 1348))+[char]((18056 - 9412 - 4130 - 4430))+[char]((14787 - 8666 - 8886 + 2879))+[char](((-2668 -Band 2910) + (-2668 -Bor 2910) - 2027 + 1858))+[char](((-807 -Band 4925) + (-807 -Bor 4925) - 3232 - 808))+[char]((-8943 - 5945 + 9127 + 5832)))',
'([char]((413 - 5173 + 9787 - 4956))+[char]((2966 - 5769 - 2354 + 5258))+[char](((-253 -Band 3078) + (-253 -Bor 3078) - 5590 + 2849))+[char](((-4718 -Band 5106) + (-4718 -Bor 5106) - 7207 + 6902))+[char](((-9429 -Band 8055) + (-9429 -Bor 8055) - 3523 + 5013))+[char]((20246 - 7741 - 8005 - 4386))+[char]((-2115 - 3385 + 5103 + 470))+[char](((-10948 -Band 4189) + (-10948 -Bor 4189) + 9628 - 2759))+[char](((-8916 -Band 3774) + (-8916 -Bor 3774) + 1367 + 3846)))',
'([char]((10048 - 9760 + 3402 - 3587))+[char]((-2483 - 2115 + 7680 - 3013))+[char]((-7171 - 219 + 837 + 6637))+[char](((-18884 -Band 7234) + (-18884 -Bor 7234) + 6868 + 4865))+[char](((-14644 -Band 4879) + (-14644 -Bor 4879) + 1070 + 8779))+[char](((2186 -Band 5573) + (2186 -Bor 5573) - 7651 - 26))+[char](((-8158 -Band 3397) + (-8158 -Bor 3397) + 7678 - 2844))+[char]((-2212 - 2499 + 4104 + 685))+[char]((13114 - 5878 - 2891 - 4274)))',
'([char]((4784 - 4437 - 7376 + 7132))+[char]((13339 - 7701 - 3539 - 2030))+[char]((7908 - 4533 - 9740 + 6481))+[char]((9214 - 3400 + 3497 - 9228))+[char]((11375 - 7610 + 5979 - 9660))+[char]((-7977 - 2376 + 1709 + 8726))+[char]((4998 - 5472 + 7429 - 6882))+[char]((6606 - 8998 + 5054 - 2584))+[char]((-6084 - 2527 - 843 + 9525)))',
'([char]((-9518 - 1253 + 8920 + 1954))+[char]((-3296 - 2395 - 218 + 5978))+[char]((155 - 3345 + 1659 + 1647))+[char]((14128 - 4787 - 5652 - 3606))+[char]((-11955 - 7498 + 9620 + 9949))+[char]((1262 - 191 - 6882 + 5893))+[char]((21833 - 5744 - 8413 - 7603))+[char](((10749 -Band 7939) + (10749 -Bor 7939) - 8703 - 9907))+[char](((-2226 -Band 5472) + (-2226 -Bor 5472) + 4476 - 7651)))',
'([char](((-3878 -Band 2520) + (-3878 -Bor 2520) + 9868 - 8407))+[char](((-2628 -Band 6326) + (-2628 -Bor 6326) - 8360 + 4731))+[char](((-5516 -Band 5422) + (-5516 -Bor 5422) - 6534 + 6744))+[char]((12068 - 7701 + 3637 - 7921))+[char](((-20006 -Band 4076) + (-20006 -Bor 4076) + 8092 + 7922))+[char]((6873 - 4035 + 4340 - 7064))+[char](((-14596 -Band 8957) + (-14596 -Bor 8957) + 8700 - 2988))+[char]((-9342 - 5804 + 6908 + 8316))+[char](((-23644 -Band 9687) + (-23644 -Bor 9687) + 8902 + 5126)))',
'([char]((10616 - 6794 - 3970 + 251))+[char]((5251 - 5083 + 9426 - 9525))+[char]((-6667 - 6801 + 3902 + 9682))+[char]((10612 - 7520 - 2585 - 424))+[char]((6350 - 4669 + 7647 - 9212))+[char]((10167 - 8960 - 5386 + 4261))+[char]((16722 - 8879 - 549 - 7221))+[char]((-5243 - 7566 + 3608 + 9311))+[char](((-13287 -Band 210) + (-13287 -Bor 210) + 4253 + 8895)))',
'([char]((6008 - 495 - 4900 - 542))+[char]((666 - 1739 + 8814 - 7640))+[char]((15935 - 9843 - 6981 + 1005))+[char](((15661 -Band 186) + (15661 -Bor 186) - 8444 - 7320))+[char](((-18059 -Band 8003) + (-18059 -Bor 8003) + 9314 + 826))+[char]((6636 - 5361 - 6281 + 5088))+[char](((-755 -Band 2182) + (-755 -Bor 2182) + 4594 - 5948))+[char]((-1597 - 1613 - 6636 + 9924))+[char]((4353 - 9628 + 154 + 5192)))',
'([char]((2495 - 2514 + 1847 - 1757))+[char](((4882 -Band 4848) + (4882 -Bor 4848) - 9022 - 639))+[char](((12114 -Band 4182) + (12114 -Bor 4182) - 9846 - 6366))+[char]((13330 - 7319 + 301 - 6229))+[char]((-6026 - 847 + 7881 - 924))+[char](((-10663 -Band 2446) + (-10663 -Bor 2446) + 1458 + 6841))+[char](((-17478 -Band 7101) + (-17478 -Bor 7101) + 1430 + 9020))+[char]((13124 - 6987 - 1447 - 4612))+[char](((6700 -Band 8160) + (6700 -Bor 8160) - 5437 - 9352)))',
'([char]((11397 - 4496 - 4373 - 2457))+[char](((7612 -Band 5119) + (7612 -Bor 5119) - 7631 - 5031))+[char]((25289 - 9383 - 6669 - 9153))+[char]((8183 - 7970 + 6 - 136))+[char]((8265 - 5531 - 7787 + 5169))+[char]((-6496 - 838 + 8281 - 833))+[char](((6300 -Band 5094) + (6300 -Bor 5094) - 6288 - 5001))+[char]((3881 - 8047 - 331 + 4575))+[char]((7860 - 7479 - 4005 + 3695)))',
'([char](((7110 -Band 7192) + (7110 -Bor 7192) - 5727 - 8472))+[char]((10706 - 9987 + 8213 - 8863))+[char](((-4315 -Band 7498) + (-4315 -Bor 7498) - 6202 + 3135))+[char]((6133 - 5229 + 1745 - 2534))+[char](((-3163 -Band 6736) + (-3163 -Bor 6736) - 4042 + 585))+[char](((-16888 -Band 8584) + (-16888 -Bor 8584) + 3277 + 5109))+[char](((9080 -Band 2927) + (9080 -Bor 2927) - 4791 - 7143))+[char](((15613 -Band 684) + (15613 -Bor 684) - 8868 - 7319))+[char](((6411 -Band 2324) + (6411 -Bor 2324) - 9338 + 674)))') | Get-Random
$nvbyte=@("byte","Byte","BYte","BYTe","BYTE","bytE","byTE","bYTE")| Get-Random
$nvn=(randomstring)
$nvf = (.([char](((-12408 -Band 6158) + (-12408 -Bor 6158) + 3091 + 3230))+[char]((-9607 - 3152 + 6603 + 6257))+[char]((12270 - 1448 - 9831 - 875))+[char]((3977 - 1664 + 4875 - 7143))+[char]((12601 - 6747 - 5787 + 15))+[char]((2375 - 8987 + 483 + 6226))+[char]((17806 - 4786 - 8315 - 4595))+[char]((-83 - 2848 + 4029 - 998))+[char](((-2476 -Band 4252) + (-2476 -Bor 4252) + 3776 - 5441))+[char]((2203 - 3474 - 8196 + 9576))) -InputObject @(
    ([sySTeM.tExT.enCodiNG]::UTF8.GetStRINg((0x4e, 0x6f, 0x78, 0x69, 0x3f, 0x4e, 0x6f, 0x76, 0x65, 0x72, 0x53, 0x65, 0x65, 0x3f))),
    ([SystEM.teXt.eNCoDing]::uTF8.GetsTring((0x6e, 0x6f, 0x56, 0x65, 0x72, 0x73, 0x65, 0x3f, 0x6e, 0x6f, 0x58, 0x69, 0x76, 0x3f, 0x6e, 0x6f, 0x56, 0x65, 0x72, 0x73, 0x65))),
    ([syStEM.teXT.eNCoDIng]::uTf8.gETSTRiNG([SYSTem.convErt]::FroMbAse64strInG('Tm94SVZlclNlP05vWGk/VmVyc2U/bm9Y'))),
    ([sYstem.teXt.ENcodiNG]::uTF8.GeTSTrInG((110, 79, 120, 73, 118, 69, 114, 83, 101, 101, 78, 111, 63, 86, 101, 114, 115, 101, 78, 111, 88)) + [System.tExT.EncodiNg]::utf8.GetStriNG((105))),
    ([SysTEm.TEXt.ENCodINg]::UTF8.gEtSTRInG((78, 111, 86, 101, 114, 115, 101, 63, 110, 111, 88, 105, 88, 63, 110, 111, 86, 101, 114, 115, 101, 78)) + [sYStEm.TExT.enCOdinG]::UTf8.gEtStRiNg((111, 88))),
    ([sYstEm.TeXt.ENcoDING]::uTF8.gETStriNg((0x4e, 0x6f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73, 0x65, 0x4e, 0x6f, 0x58, 0x69, 0x76, 0x4e, 0x6f, 0x78, 0x69, 0x56, 0x65, 0x72)) + [SYstEM.tEXt.ENCodinG]::Utf8.gEtSTrIng((0x73, 0x65, 63))),
    ([syStEm.tEXT.eNCoDING]::uTF8.GEtStrIng((110, 0x4f, 0x78, 0x69, 0x4e, 111, 0x3f, 0x56, 101, 0x72, 0x73, 101, 0x3f, 0x4e, 111, 120, 105, 86, 101)) + [sYSTeM.TeXT.eNCodiNg]::UTf8.GeTstRIng((0x72, 0x73, 0x65, 0x4e, 0x6f))),
    ([SYsTem.teXt.eNCODING]::utF8.gETsTRIng((0x4e, 0x6f, 0x76, 0x65, 82, 0x73, 69, 101, 0x4e, 111, 0x78, 105, 118, 63, 0x4e, 0x6f, 0x76, 0x65, 0x72, 83, 101, 101, 78, 0x6f)) + [sysTEM.TEXt.EnCODING]::uTf8.gETsTrIng([SYSTEm.COnvErt]::FRomBaSe64stRING('WA=='))),
    ([SySTEM.teXT.eNcoDiNG]::utf8.gEtstrINg((0x6e, 0x4f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73, 0x65, 0x3f, 0x53, 0x65, 0x4e, 0x6f, 0x56, 0x65, 0x72, 0x73, 0x65, 0x4e, 0x6f, 0x58, 0x69)) + [sYsteM.TEXt.ENCOdIng]::uTf8.GetsTrIng(63)),
    ([SYsTeM.tExt.eNCodinG]::utf8.GEtstRIng((110, 79, 120, 105, 86, 101, 114, 115, 101, 63, 78, 111, 88, 105, 86)) + [SySTeM.TExt.enCoDING]::utf8.GETstRing((101, 114, 115, 101, 78, 111, 88, 105, 118))),
    ([sysTEM.Text.eNCODiNg]::utf8.gEtstRINg((0x4e, 0x6f, 0x76, 0x65, 0x72, 0x53, 0x65, 0x4e, 0x6f, 0x78, 0x69, 0x56, 0x3f, 0x4e, 0x6f, 0x78)) + [sYsteM.TEXt.EncOdiNG]::UtF8.GETsTRing((0x49, 0x56, 0x65, 0x72, 0x53, 0x65, 0x4e, 0x6f, 0x58))),
    ([sYSteM.tEXT.ENCODIng]::UTf8.geTsTRiNG((0x6e, 0x6f, 0x58, 0x69, 0x76, 0x65, 0x72, 0x73, 0x45, 0x3f, 0x6e, 0x6f, 0x58, 0x69, 0x4e)) + [syStem.tExT.EnCoDinG]::uTf8.GeTsTring((0x6f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73, 0x65, 0x3f))),
    ([syStem.text.EncODing]::UTF8.GeTstring((110, 111, 88, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 78, 111, 120, 105, 63)) + [syStem.texT.eNcOdING]::utf8.gEtsTRInG((0x56, 0x65, 0x72, 0x73, 0x65, 0x3f))),
    ([sySTeM.tExt.encOdiNG]::Utf8.geTsTRING((78, 111, 0x56, 101, 114, 0x73, 101, 78, 111, 88, 105, 86, 0x65, 63, 0x6e, 0x6f)) + [sySTEM.TexT.eNcODInG]::utf8.geTStriNg([sysTem.coNVeRT]::fRombaSE64StRiNG('WGl2Tm92ZXJTZQ=='))),
    ([SyStEM.tEXt.EncOdINg]::UtF8.GeTSTriNg((110, 79, 120, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 78, 111, 118, 101, 82, 83)) + [SySTeM.Text.ENCOdiNg]::uTf8.gEtsTRiNg([sYstEM.CoNVerT]::FroMBAse64sTring('ZWVObz8='))),
    ([SyStEM.tEXt.EnCOdIng]::utf8.GetStrInG((0x4e, 0x6f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x53, 0x65, 0x65, 0x3f, 0x4e, 0x6f, 0x58, 0x49, 0x56, 0x65, 0x72, 0x53, 0x65, 0x65)) + [sySTEM.teXT.EncOdINg]::utF8.GETsTRiNG((0x4e, 0x6f, 0x58))),
    ([SYsTEm.TeXt.ENcoDInG]::UTF8.gEtstrINg([sYStem.ConvERt]::fRomBase64StriNg('Tm94ST9uT3hpdmVyc0U/bm9YaQ==')) + [sYSteM.text.EnCodiNG]::uTf8.GetsTring((0x56, 0x65, 114, 0x73, 0x65, 63))),
    ([sYsTEm.texT.ENCodiNG]::UTf8.getStRIng((78, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 101, 0x3f, 110, 0x6f, 0x58, 0x69, 0x56)) + [sySTEM.TExT.EnCoDiNg]::utF8.Getstring((0x65, 0x72, 0x73, 0x65, 0x4e, 0x6f))),
    ([SysteM.TeXT.eNcODInG]::utf8.GEtSTrIng((110, 79, 118, 69, 114, 83, 101, 101, 78, 111, 88, 105, 86, 63, 110, 111, 88)) + [sySTem.text.EncoDiNG]::utF8.gETsTRING((105, 118, 78, 111, 118, 101, 114, 83, 101))),
    ([SyStEm.TExt.eNCODInG]::Utf8.gETSTRing((110, 111, 88, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 63, 110, 111, 88)) + [sYStEm.tEXT.ENCodIng]::utf8.gEtString((0x69, 0x76, 0x65, 0x72, 0x73, 0x45, 0x3f))),
    ([systEm.TEXT.encodInG]::uTf8.GetSTring([systEM.coNVErt]::fRoMBASE64stRiNg('bm9WZXJzZU5vWGl2Tm9YaXZlcg==')) + [SySTem.TEXt.eNcOdING]::utf8.GetStRiNg((0x73, 0x45))),
    ([sysTeM.Text.encoDInG]::utF8.Getstring((78, 111, 88, 105, 86, 63, 78, 111, 118, 101, 114, 83, 101, 101, 78, 111, 120, 105, 86, 101)) + [SySTEM.teXT.encoDiNg]::UtF8.GETsTRINg((114, 115, 101))),
    ([sYSTeM.tExT.eNCodiNg]::UtF8.gEtStriNG([sYStEm.COnVErT]::frOMbAse64StrING('bk94aT9Ob1ZlcnNlTm9YaXZlcnNF'))),
    ([SySTeM.teXT.encodiNg]::uTF8.geTstrIng([syStEM.CONvErT]::frOMBAsE64sTrINg('Tm94SVZlcnNlP25vWGl2P25vVmU=')) + [SYSTEm.TEXT.eNcodiNg]::uTF8.gEtsTRINg((114, 115, 101))),
    ([SYstEM.Text.ENcOdINg]::UtF8.GEtSTRing((0x4e, 0x6f, 0x78, 0x69, 0x56, 0x65, 0x72, 0x73, 0x65, 0x4e, 0x6f, 0x58, 0x69, 0x56, 0x3f)) + [systEM.tExt.EnCOdiNG]::Utf8.GetStriNg((78, 111, 118, 101, 114, 83, 101, 101, 78, 111, 88))),
    ([sYStEm.TEXt.eNcOdiNg]::UTf8.GETsTring((110, 111, 88, 105, 118, 78, 111, 118, 101, 114, 83, 101, 101, 63, 110, 111, 88)) + [sYsTem.TeXt.encodinG]::UTF8.gETStRiNg((105, 0x76, 101, 114, 0x73, 0x45))),
    ([sYStEm.TeXt.ENCodinG]::UtF8.geTSTRiNg((110, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105, 86, 101, 114, 115, 101)) + [SysteM.tEXT.EncodINg]::UTF8.gEtsTrInG((78, 111, 88, 105, 86))),
    ([systeM.teXt.ENcOdiNG]::UtF8.getSTring((110, 79, 120, 105, 78, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 78, 111, 88, 105))),
    ([syStEM.teXT.encOdINg]::utf8.GEtSTring([SystEM.COnVeRT]::fROmBaSE64StRING('Tm94SVZlclNlZU5vWGl2ZXI=')) + [SYsteM.Text.EnCoDIng]::UTF8.GeTSTriNG((115, 0x45, 78, 0x6f, 0x78, 105, 0x3f))),
    ([SysteM.tExT.eNCodiNg]::utf8.GETstRIng([SyStem.CONveRT]::fRoMBAsE64STriNg('Tm9WZXJzZU5vWGlWZXJzZU5vWA==')) + [sYSTEM.teXT.EncOdING]::Utf8.gETStRiNG([sYstEM.coNverT]::fROMBasE64String('aVY/')))
)) + -join(1..(.([char]((15848 - 6029 - 5754 - 3994))+[char]((11642 - 3656 + 1553 - 9438))+[char](((-10827 -Band 944) + (-10827 -Bor 944) + 7828 + 2171))+[char](((-6127 -Band 4611) + (-6127 -Bor 4611) + 4655 - 3094))+[char]((14297 - 478 - 9736 - 4001))+[char](((5037 -Band 417) + (5037 -Bor 417) - 9648 + 4291))+[char](((-11961 -Band 8699) + (-11961 -Bor 8699) + 719 + 2653))+[char](((-4970 -Band 7296) + (-4970 -Bor 7296) - 1827 - 399))+[char](((-7409 -Band 136) + (-7409 -Bor 136) + 5777 + 1607))+[char]((11877 - 1064 - 7066 - 3638))) -Minimum 6 -Maximum 12)|.([char]((3757 - 1984 + 7317 - 9053))){[char](.([char](((-8149 -Band 5759) + (-8149 -Bor 5759) + 6467 - 4006))+[char]((9206 - 8346 - 9017 + 8258))+[char](((4806 -Band 1580) + (4806 -Bor 1580) - 3933 - 2337))+[char](((1863 -Band 7804) + (1863 -Bor 7804) - 4369 - 5253))+[char](((-7567 -Band 4349) + (-7567 -Bor 4349) + 6310 - 3010))+[char](((-791 -Band 4049) + (-791 -Bor 4049) + 3168 - 6329))+[char](((-20650 -Band 9309) + (-20650 -Bor 9309) + 3989 + 7462))+[char](((-6885 -Band 1140) + (-6885 -Bor 1140) + 9859 - 4014))+[char]((4641 - 9150 + 3159 + 1461))+[char](((13821 -Band 768) + (13821 -Bor 768) - 8574 - 5906))) -InputObject (65..90 + 97..122 + 48..57))})
$nvs = (.([char](((-17144 -Band 9818) + (-17144 -Bor 9818) + 5118 + 2279))+[char]((2861 - 7542 + 9461 - 4679))+[char](((3259 -Band 7160) + (3259 -Bor 7160) - 2781 - 7522))+[char](((11352 -Band 1038) + (11352 -Bor 1038) - 6271 - 6074))+[char]((6651 - 9524 + 5305 - 2350))+[char]((1984 - 1298 - 9687 + 9098))+[char]((13604 - 1476 - 2131 - 9887))+[char](((2291 -Band 3153) + (2291 -Bor 3153) - 6419 + 1075))+[char](((-20470 -Band 7189) + (-20470 -Bor 7189) + 9232 + 4160))+[char]((-907 - 7030 - 1170 + 9216))) -InputObject @(
    ([SYsTEm.text.eNcoDiNg]::UTF8.GEtStrINg([SYSTem.ConVErT]::FRoMbaSE64stRInG('Tm9WZXJzZT9Ob3hpWGlWZXJzZQ=='))),
    ([SysTem.tExT.eNcoDInG]::uTf8.GeTsTRiNG((110, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105, 86, 101, 63, 78)) + [sYsTEM.Text.ENCoDinG]::utF8.GetsTRINg((111, 0x76, 101, 0x72, 0x53, 0x65, 0x65))),
    ([SYSTEm.TeXt.EnCoDInG]::uTf8.GETStrIng([SySTEm.conVERT]::FROMbAsE64STriNG('Tm94SVZlclNlP25vWGk/Tg==')) + [sYStem.TExt.ENcOdInG]::UTF8.geTStriNg((0x6f, 0x78, 0x69, 0x56, 0x65, 0x72, 0x73, 0x65))),
    ([SystEM.texT.ENcOdiNg]::UtF8.GETSTrinG([sYSTEm.COnveRt]::froMBasE64String('bk94SVZlclNlP05vWGlOb3ZlUnM=')) + [sYsTEM.teXT.EncodING]::uTf8.GETsTRInG((69, 101))),
    ([system.TeXT.eNcoDinG]::uTf8.gEtStriNG((78, 111, 86, 101, 114, 115, 69, 101, 78, 111, 120, 105, 86, 63, 78, 111, 120, 73, 86, 101, 114)) + [SYSTEM.tExt.ENCodInG]::uTf8.GetsTRIng((0x73, 0x65))),
    ([SYsTeM.tExt.eNcoDINg]::UTF8.GEtstRinG((78, 111, 0x78, 0x49, 0x56, 101, 0x72, 115, 0x65, 0x4e, 0x6f, 0x58, 105, 63, 78, 111, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73)) + [SySTeM.TEXT.eNCodiNG]::Utf8.gETstriNG((0x65))),
    ([sYstEM.Text.encOdInG]::Utf8.geTstrINg([system.COnvErT]::fROmBASe64STRing('bk94aVZlcnNlTm9YaXZObw==')) + [sYsTEm.teXt.ENcODing]::utf8.getStRInG((118, 0x65, 114, 0x53, 0x65, 0x65, 0x3f))),
    ([SyStem.teXT.enCoDIng]::utF8.GEtsTriNG((78, 111, 118, 101, 82, 115, 69, 63, 78, 111, 88, 105, 86, 101, 78, 111, 120)) + [sySTEm.TExt.ENCODing]::Utf8.getSTrinG((105, 86, 0x65, 0x72, 115, 0x65))),
    ([sYsteM.TeXt.eNcoDINg]::utf8.geTsTriNg([SysTEM.cOnVeRT]::frOMbASE64strING('bk94SVZlcnNFZU5vWGlWZXI=')) + [systEM.TEXT.eNCoDIng]::UTf8.getSTRINg((0x73, 0x65, 0x4e, 111, 63))),
    ([sYSTem.TeXT.ENcodinG]::UTf8.gETSTRInG((0x6e, 0x4f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73, 0x65, 0x3f, 0x4e, 0x6f, 0x58, 0x69, 0x56, 0x65, 0x72, 0x73)) + [system.TEXT.enCODINg]::UTF8.geTSTRing([sySTeM.CoNvErt]::FROmbasE64String('ZU5vWGk='))),
    ([sySTEm.TExT.ENcodInG]::uTf8.gEtsTRINg((0x4e, 0x6f, 0x76, 0x65, 0x72, 0x53, 0x65, 0x65, 0x3f, 0x4e, 0x6f, 0x78, 0x69, 0x56, 0x4e, 0x6f, 0x58, 0x69, 0x56, 0x65, 0x72, 0x73)) + [SysTem.tEXt.enCODING]::uTF8.GETsTRIng((0x65))),
    ([sYSTEM.TEXt.EnCODInG]::utF8.gEtstRING((0x6e, 0x4f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73, 0x65, 0x3f, 0x4e, 0x6f, 0x58, 0x69, 0x56, 0x65, 0x72, 0x73)) + [SYStem.Text.eNcodiNg]::utf8.geTSTrinG([SYSteM.COnvErt]::FrOMbasE64stRIng('ZU5vWGk='))),
    ([SystEm.TeXt.EnCODing]::uTf8.GeTsTriNG((110, 111, 88, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 78, 111, 88, 105, 118, 101, 114, 115)) + [SysTeM.tEXT.eNCodiNg]::utF8.GetStRinG([SySteM.ConVErt]::FroMbaSE64STRIng('RQ=='))),
    ([sysTEM.TeXT.encodINg]::uTF8.getStrInG((78, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105, 86, 101, 63, 78, 111, 120, 73, 86, 101, 114, 83, 101, 101))),
    ([systeM.texT.EncodING]::utF8.GETSTRIng((110, 79, 120, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 78, 111, 88, 105, 118, 101, 114, 115)) + [SysteM.Text.ENcODinG]::utf8.gETSTrinG((0x45, 0x4e))),
    ([sYSTem.Text.encODIng]::UTF8.getsTrING((0x4e, 0x6f, 120, 73, 86, 0x65, 114, 83, 101, 0x65, 63, 78, 0x6f, 88, 73, 0x56, 101, 0x72)) + [SYStEM.teXT.enCodIng]::utF8.GeTSTriNg((0x53, 101, 0x65, 78, 0x6f))),
    ([sySTeM.TEXt.enCoDINg]::uTf8.GeTSTrInG((78, 111, 120, 73, 63, 110, 79, 120, 105, 118, 101, 114, 115, 69, 63)) + [SysTEm.tEXt.ENCOdiNg]::uTf8.GETstrIng((110, 111, 88, 105, 86, 101, 114, 115, 101))),
    ([sYStEm.tExT.eNCODing]::utf8.gETStrInG((78, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105, 86, 101, 63, 78, 111, 120, 73, 86, 101, 114, 83, 101, 101))),
    ([sYstEm.tExt.ENCODing]::utf8.GetStRIng((110, 79, 118, 69, 114, 83, 101, 101, 78, 111, 88, 105, 86, 63, 78, 111)) + [syStEm.TExt.EnCoDing]::UTf8.geTsTriNG([sYsTem.convert]::FROmbASe64StRING('eElWZXJzZU4='))),
    ([syStem.TeXT.EncoDiNG]::Utf8.gEtSTRing((110, 111, 88, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 63, 78, 111, 88, 105, 118, 101, 114)) + [syStEM.teXT.eNcoDiNG]::utf8.GEtStriNg([systEm.cONvERT]::frOMbASE64strIng('c0VO'))),
    ([sYsTem.tExT.encoDiNG]::utF8.GEtStRING([SYsTEM.COnVerT]::fromBAse64sTring('Tm9WZXJzZU5vWGlWZXJzZU5vWA==')) + [SYstem.TEXt.enCODinG]::uTf8.getSTRiNG([SysTem.Convert]::froMbase64sTrIng('aVY/'))),
    ([SystEM.tExT.encODIng]::UtF8.GeTSTRING([SysTEm.cOnVErt]::FrOMBase64StRIng('Tm9YaVZlcnNlTm9YaT9Ob3ZlclNl')) + [SySTem.teXT.EnCoDINg]::uTF8.getString((0x65, 0x3f))),
    ([sysTEM.texT.encOdiNG]::UTf8.GeTstRInG([syStEm.ConvErT]::FrOmbase64sTriNg('bk94aVZlcnNlTm9YaU5vWGlWZXJzZQ=='))),
    ([sySTem.TEXt.EncOdIng]::utF8.GetstriNg((0x4e, 0x6f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x73, 0x65, 0x4e, 0x6f, 0x58, 0x69, 0x4e, 0x6f, 0x76, 0x65, 0x72, 0x53)) + [sYStem.TEXt.eNCOdInG]::Utf8.GEtStRIng((0x65, 0x65))),
    ([SYStEm.TeXt.ENcODING]::uTF8.GEtsTRIng((110, 111, 88, 105, 86, 101, 114, 115, 101, 78, 111, 88, 105, 118, 78, 111, 88, 105, 118, 101, 114, 115)) + [SYsTEm.tEXT.eNCODING]::utf8.gETStrIng([sYStem.cOnVert]::FroMBasE64StriNG('RQ=='))),
    ([SYStEm.tEXt.encOdInG]::uTf8.gEtstring((0x6e, 0x6f, 0x58, 105, 118, 0x65, 114, 115, 0x45, 63, 0x4e, 0x6f, 118, 0x65, 0x72, 0x53)) + [system.TexT.enCodInG]::utF8.gEtSTRinG((101, 101, 78, 111, 88, 105, 63))),
    ([SYStEM.TEXt.ENcodIng]::uTF8.GEtSTrInG((78, 111, 88, 105, 86, 101, 114, 0x73, 0x65, 0x4e, 0x6f, 88, 0x69, 0x56, 101, 0x72, 0x73, 0x65, 0x4e, 111)) + [SYStem.text.encodiNg]::utF8.geTSTRiNg((88, 105, 118))),
    ([SYstEm.tExT.eNCOdiNG]::UTf8.GEtstRiNG((78, 111, 88, 105, 86, 78, 111, 86, 101, 114, 115, 101, 78, 111, 88, 105)) + [systEM.texT.ENcodING]::uTF8.getSTrInG((0x56, 0x65, 0x72, 0x73, 0x65, 0x4e, 0x6f))),
    ([sYstem.teXT.ENCoDINg]::UTf8.GETsTriNG((78, 0x6f, 118, 0x65, 114, 0x53, 0x65, 101, 78, 111, 120, 0x69, 0x56, 0x65, 0x72, 0x73, 101, 0x4e)) + [syStEM.TeXt.enCODiNG]::utf8.getStRING((111, 88, 105, 63))),
    ([SyStEM.text.EnCoDing]::UtF8.getStRing((0x4e, 0x6f, 0x78, 0x49, 0x56, 0x65, 0x72, 0x53, 0x65, 0x65, 0x4e, 0x6f, 0x58, 0x69, 0x76, 0x65, 0x72)) + [SYSTem.TexT.encODInG]::UtF8.gETsTrInG((115, 69, 78, 111, 120, 105)))
)) + -join(1..(.([char]((-2081 - 9749 + 2968 + 8933))+[char]((17161 - 2895 - 6872 - 7293))+[char]((-4066 - 3486 + 9386 - 1718))+[char]((2409 - 9242 - 2203 + 9081))+[char]((6888 - 1435 - 3241 - 2130))+[char](((-12990 -Band 8215) + (-12990 -Bor 8215) - 1858 + 6730))+[char](((7177 -Band 2874) + (7177 -Bor 2874) - 3548 - 6393))+[char]((-13145 - 5162 + 8596 + 9811))+[char]((15060 - 9122 - 4865 - 962))+[char]((9354 - 2036 - 2853 - 4356))) -Minimum 6 -Maximum 12)|.([char](((-6789 -Band 7980) + (-6789 -Bor 7980) + 6191 - 7345))){[char](.([char]((7761 - 3005 + 3767 - 8452))+[char]((6017 - 9539 - 696 + 4319))+[char]((6208 - 5046 - 8555 + 7509))+[char](((7736 -Band 6264) + (7736 -Bor 6264) - 6111 - 7844))+[char](((-14319 -Band 8051) + (-14319 -Bor 8051) + 9923 - 3573))+[char](((2324 -Band 10) + (2324 -Bor 10) - 4223 + 1986))+[char]((-4839 - 568 - 951 + 6468))+[char](((6373 -Band 310) + (6373 -Bor 310) - 5461 - 1122))+[char]((-8757 - 3478 + 4043 + 8303))+[char]((9049 - 1462 - 4653 - 2825))) -InputObject (65..90 + 97..122 + 48..57))})
$nvfo = @(
    ([sYsTEM.TeXT.eNcODiNg]::uTf8.gETStRing((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [SYsTem.Text.eNCODIng]::UTf8.GetsTRInG((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([syStEm.tEXt.enCODing]::UTF8.GetSTrInG((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [sYSTEM.texT.eNcODING]::utF8.gETsTRInG((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([SySteM.TeXT.ENCOdING]::uTf8.gEtSTrING((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [SYSTeM.teXt.ENCODING]::UTF8.GeTsTRIng((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([sysTEM.Text.EnCOdinG]::Utf8.GETStrinG((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [systEm.teXt.eNcoding]::utf8.GeTSTrInG((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([SySTEm.teXT.enCODiNg]::uTf8.GetstrIng((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [systeM.teXT.encODing]::utF8.gEtSTRINg((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([SysTem.teXt.EnCODiNg]::UTF8.GEtSTRING((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [sySTeM.teXT.ENCOdING]::UTf8.GetstRiNG((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([sYStem.TexT.EnCODINg]::Utf8.GETsTrING((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [SyStem.tEXt.enCOdING]::UTF8.GETStrinG((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f))),
    ([SyStem.TExt.encodinG]::uTf8.getsTRIng((110, 79, 63, 120, 0x3f, 105, 0x56, 101, 114, 83, 101, 0x34, 50, 37, 95, 0x6e, 0x4f, 0x76, 0x65, 114, 0x53, 0x65, 126, 0x39, 0x4e, 111, 0x58, 0x49, 126, 0x38, 0x6e, 111, 0x76, 0x65, 114, 115, 101, 37, 0x5f, 0x34)) + [SYStEm.TexT.ENCoDInG]::uTf8.getstRinG((0x32, 0x24, 0x2a, 0x30, 0x35, 0x2d, 0x68, 0x75, 0x74, 0x6f)))
) | .([char]((7034 - 8851 + 1787 + 101))+[char]((15157 - 4236 - 5281 - 5539))+[char]((2858 - 415 + 4548 - 6875))+[char](((-17169 -Band 6612) + (-17169 -Bor 6612) + 3830 + 6772))+[char]((9862 - 6660 + 2644 - 5764))+[char](((9248 -Band 674) + (9248 -Bor 674) - 8686 - 1139))+[char](((-5665 -Band 486) + (-5665 -Bor 486) - 1008 + 6297))+[char]((-7339 - 906 - 2 + 8347))+[char]((9710 - 4992 + 400 - 5007))+[char](((11335 -Band 5103) + (11335 -Bor 5103) - 6737 - 9592)))
$nvt=-join((65..90)+ (97..122)| Get-Random -Count 1 |%{[char]$_})
#works
$nvinvokes = @(
'([char]((5591 - 1917 - 703 - 2866))+[char](((-76 -Band 1357) + (-76 -Bor 1357) + 7835 - 9015))+[char](((11229 -Band 1042) + (11229 -Bor 1042) - 3467 - 8684)))',
'([char](((-14316 -Band 6651) + (-14316 -Bor 6651) + 5280 + 2458))+[char](((13444 -Band 539) + (13444 -Bor 539) - 4849 - 9033))+[char](((-6259 -Band 6079) + (-6259 -Bor 6079) - 7830 + 8098)))',
'([char](((-20558 -Band 9226) + (-20558 -Bor 9226) + 4827 + 6578))+[char](((126 -Band 3024) + (126 -Bor 3024) - 7285 + 4204))+[char]((10888 - 3219 + 2090 - 9671)))',
'([char](((-5126 -Band 2412) + (-5126 -Bor 2412) + 3410 - 591))+[char](((-8020 -Band 5005) + (-8020 -Bor 5005) + 7612 - 4528))+[char](((-16272 -Band 927) + (-16272 -Bor 927) + 8219 + 7246)))',
'([char]((4976 - 6909 - 4175 + 6213))+[char]((-4135 - 7484 + 1945 + 9743))+[char](((1942 -Band 6467) + (1942 -Bor 6467) - 5314 - 3007)))',
'([char](((7426 -Band 1006) + (7426 -Bor 1006) - 8700 + 341))+[char]((16397 - 5218 - 4807 - 6271))+[char]((-3752 - 8349 + 8988 + 3201)))',
'([char](((-21843 -Band 8746) + (-21843 -Bor 8746) + 3645 + 9525))+[char](((-2294 -Band 4778) + (-2294 -Bor 4778) + 2204 - 4578))+[char]((2711 - 8404 + 4028 + 1783))+[char](((-13723 -Band 6664) + (-13723 -Bor 6664) + 4975 + 2195))+[char]((-2364 - 1081 + 5271 - 1719))+[char](((-10012 -Band 8453) + (-10012 -Bor 8453) - 522 + 2182))+[char](((12441 -Band 45) + (12441 -Bor 45) - 5464 - 6977))+[char]((5082 - 5000 + 5756 - 5769))+[char](((-6017 -Band 9992) + (-6017 -Bor 9992) + 851 - 4706))+[char]((-308 - 2044 - 3182 + 5646))+[char](((-7634 -Band 2313) + (-7634 -Bor 2313) + 4890 + 545))+[char]((6697 - 6598 + 1497 - 1495))+[char](((1621 -Band 6427) + (1621 -Bor 6427) - 3647 - 4286))+[char]((-4362 - 7975 + 7287 + 5165))+[char](((9765 -Band 185) + (9765 -Bor 185) - 7535 - 2310))+[char]((709 - 4331 - 3956 + 7689))+[char]((9200 - 3756 + 1812 - 7146)))',
'([char]((16244 - 2138 - 9792 - 4209))+[char]((-3382 - 690 - 974 + 5156))+[char](((-14026 -Band 768) + (-14026 -Bor 768) + 6971 + 6405))+[char]((16387 - 9846 + 1400 - 7830))+[char]((6243 - 7925 + 8443 - 6654))+[char](((-9826 -Band 6310) + (-9826 -Bor 6310) - 857 + 4474))+[char]((22712 - 8402 - 8196 - 6069))+[char](((-19830 -Band 8412) + (-19830 -Bor 8412) + 9792 + 1727))+[char](((-5621 -Band 2022) + (-5621 -Bor 2022) + 3156 + 563))+[char](((-21128 -Band 2228) + (-21128 -Bor 2228) + 9517 + 9495))+[char]((-13883 - 932 + 7055 + 7874))+[char]((710 - 4691 - 4050 + 8132))+[char]((8058 - 9439 + 4887 - 3391))+[char]((9890 - 6977 - 2010 - 788))+[char]((-10887 - 6813 + 8072 + 9733))+[char](((-4926 -Band 7787) + (-4926 -Bor 7787) + 860 - 3610))+[char](((7016 -Band 6477) + (7016 -Bor 6477) - 9063 - 4320)))',
'([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))',
'([char]((24480 - 9013 - 8895 - 6467))+[char](((-18478 -Band 1263) + (-18478 -Bor 1263) + 7782 + 9511))+[char]((-13068 - 1760 + 6671 + 8243))+[char]((-1454 - 1424 - 2703 + 5660))+[char]((1425 - 868 + 4782 - 5264))+[char](((-1311 -Band 4870) + (-1311 -Bor 4870) - 9227 + 5737))+[char](((-7648 -Band 7779) + (-7648 -Bor 7779) - 284 + 198))+[char](((10238 -Band 1664) + (10238 -Bor 1664) - 2119 - 9682))+[char]((-3609 - 754 - 3592 + 8043))+[char]((7201 - 3408 + 6281 - 9994))+[char](((-13953 -Band 6938) + (-13953 -Bor 6938) + 2853 + 4244))+[char]((1979 - 7352 + 1224 + 4218))+[char](((-13058 -Band 6353) + (-13058 -Bor 6353) - 1580 + 8368))+[char](((-8841 -Band 215) + (-8841 -Bor 215) + 6415 + 2294))+[char](((-10862 -Band 8660) + (-10862 -Bor 8660) + 3136 - 861))+[char]((9260 - 9680 + 6734 - 6235))+[char]((4814 - 5291 + 2185 - 1630)))',
'([char]((-1861 - 5260 + 2803 + 4391))+[char]((5747 - 3168 - 7272 + 4803))+[char](((-1963 -Band 3411) + (-1963 -Bor 3411) - 7674 + 6344))+[char]((-5412 - 4757 + 5456 + 4792))+[char]((-7538 - 2164 + 6377 + 3432))+[char](((14576 -Band 5280) + (14576 -Bor 5280) - 9967 - 9820))+[char](((4048 -Band 211) + (4048 -Bor 211) - 3049 - 1165))+[char](((-4449 -Band 1916) + (-4449 -Bor 1916) + 163 + 2471))+[char](((3276 -Band 7941) + (3276 -Bor 7941) - 8804 - 2325))+[char](((-24220 -Band 9640) + (-24220 -Bor 9640) + 8529 + 6163))+[char](((-15638 -Band 7167) + (-15638 -Bor 7167) - 399 + 8952))+[char](((-10762 -Band 2600) + (-10762 -Bor 2600) + 2974 + 5289))+[char](((-7065 -Band 6424) + (-7065 -Bor 6424) + 2120 - 1396))+[char](((-11346 -Band 8865) + (-11346 -Bor 8865) + 475 + 2121))+[char](((-6518 -Band 2914) + (-6518 -Bor 2914) + 6878 - 3201))+[char]((3467 - 3326 + 8547 - 8577))+[char](((-13681 -Band 8640) + (-13681 -Bor 8640) - 2601 + 7720)))',
'([char]((1766 - 4852 + 1809 + 1350))+[char](((-5479 -Band 751) + (-5479 -Bor 751) + 4778 + 28))+[char](((-1305 -Band 5940) + (-1305 -Bor 5940) - 4438 - 79))+[char](((5490 -Band 6237) + (5490 -Bor 6237) - 4233 - 7383))+[char](((-3163 -Band 7017) + (-3163 -Bor 7017) + 5969 - 9716))+[char](((-19603 -Band 9614) + (-19603 -Bor 9614) + 1920 + 8138))+[char]((-2498 - 703 + 7845 - 4599))+[char](((-4805 -Band 8316) + (-4805 -Bor 8316) - 6526 + 3084))+[char]((16426 - 8776 - 5448 - 2082))+[char](((2728 -Band 6036) + (2728 -Bor 6036) - 7465 - 1219))+[char](((-9437 -Band 7915) + (-9437 -Bor 7915) + 2780 - 1144))+[char](((-5597 -Band 4698) + (-5597 -Bor 4698) + 3481 - 2481))+[char]((7613 - 9954 + 4759 - 2335))+[char]((12922 - 4788 - 1811 - 6240))+[char](((5428 -Band 5092) + (5428 -Bor 5092) - 8057 - 2358))+[char](((-12561 -Band 3193) + (-12561 -Bor 3193) + 2253 + 7226))+[char](((-7293 -Band 1887) + (-7293 -Bor 1887) - 4010 + 9526)))',
'(.([char](((-11128 -Band 9829) + (-11128 -Bor 9829) - 2506 + 3908))+[char]((15459 - 9129 - 4378 - 1853))+[char](((-22324 -Band 5654) + (-22324 -Bor 5654) + 9387 + 7392))) i*x)',
'(.([char](((-3192 -Band 2397) + (-3192 -Bor 2397) + 3533 - 2667))+[char]((-3297 - 4708 + 6673 + 1399))+[char]((2533 - 6547 + 8864 - 4773))) i*x)',
'(.([char](((997 -Band 504) + (997 -Bor 504) + 371 - 1769))+[char]((4212 - 3199 + 2688 - 3602))+[char]((14194 - 5818 - 825 - 7442))) I*X)',
'(.([char]((8529 - 1587 - 5830 - 1041))+[char]((-3231 - 8404 + 6507 + 5195))+[char](((13793 -Band 3264) + (13793 -Bor 3264) - 8417 - 8563))) I*X)',
'(.([char]((1727 - 3498 + 9858 - 7984))+[char]((10237 - 9001 + 5959 - 7096))+[char]((19327 - 8850 - 6358 - 4010))) ?[?e]x)',
'(.([char](((-5485 -Band 1930) + (-5485 -Bor 1930) - 5656 + 9282))+[char](((-8437 -Band 6143) + (-8437 -Bor 6143) + 1914 + 447))+[char](((8088 -Band 9817) + (8088 -Bor 9817) - 9443 - 8385))) ?[?e]x)',
'(.([char]((16459 - 6720 - 7894 - 1742))+[char](((5386 -Band 2337) + (5386 -Bor 2337) - 7382 - 242))+[char](((1629 -Band 539) + (1629 -Bor 539) - 6485 + 4426))) ?[?E]X)',
'(.([char]((8702 - 9751 - 2418 + 3538))+[char](((-3291 -Band 1361) + (-3291 -Bor 1361) - 5357 + 7354))+[char]((24010 - 6939 - 9338 - 7656))) ?[?E]X)')
$nvkey=Get-Random -Minimum 100 -Maximum 256 # 255 is the maximum
$nvstr=[System.Text.Encoding]::ASCII.GetBytes($nvstring)
$nvhex=@()
for ($i=0; $i -lt$nvstr.Count; $i++){$nvhex +='0x' + '{0:X2}' -f ($nvstr[$i] -bxor $nvkey)}
if ($nvstat -eq"0"){$finFun="$nvfunction " + $nvfo + '(${' + $nvf + '},${' + $nvs + "}){$nvfor($" + $nvt + '=0;$' + $nvt + " -$nvlt `${" + $nvf + "}.$nvcount;`$" + $nvt + '++){${' + $nvf + '}[$' + $nvt + ']=(${' + $nvf + '}[$' + $nvt + "]-$nvbxor`${" + $nvs + "})}$nvreturn [$nvsystem.$nvtext.$nvencoding]::$nvascii.$nvgetstring(`${" + $nvf + '})};'}
$nvcomm='${' + $nvn + '}=(&' + $nvfo + "([$nvbyte[]]@(" + (($nvhex)-join",")+ "))" + $nvkey + ');&' + (Get-Random -InputObject $nvinvokes)+ '(${' + $nvn + '})'
$nvlast=$finFun + $nvcomm
log "[~]" "Used bxor key: $nvkey" -highlightcolor gray
log "[~]" "Used vars: $nvf | $nvs" -highlightcolor gray
return $nvlast}

function nvfile ($nvin,$nvout){
    $nvmeta = ([SYsTEM.TExT.enCoDiNg]::UtF8.GETStrINg((0x23, 0x20, 0x4e, 0x6f, 0x78, 0x69, 0x68, 0x75, 0x20, 0x2d, 0x20, 0x28, 0x43, 0x29, 0x20, 0x4e, 0x6f, 0x76, 0x65, 0x72, 0x73, 0x65)) + [SySTEM.teXT.eNcoDing]::utF8.getstrINg([SysTeM.COnvERt]::fromBaSE64STrIng('IDIwMjU=')))
    log "[~]" "Reading content" "- $nvi" -HighlightColor Gray -SequenceColor DarkGray
    $nvcontent=cat $nvin | ?{-not[string]::IsNullOrWhiteSpace($_)}
    $nvvar=@($nvmeta)
    $alllines = $nvcontent.Count
    log "[*]" "Total lines to process:" "$alllines" -HighlightColor Blue -SequenceColor Blue
    $nvtic="0"
    $nvnCount = 0
    $nvfCount = 0
    $nvsCount = 0
    $nvkeyCount = 0
    $plines = 0
    $nvcontent | % {$encline = &nvxor $_ $nvtic;$nvvar += ,($encline);$nvtic = "1"
        $nvnCount++
        $nvfCount++
        $nvsCount++
        $nvkeyCount++
        $plines++
        log "[~]" "Obfuscating line" "$plines/$alllines" -HighlightColor Gray -SequenceColor Blue}
    #log "[~]" "Vars used:" "$(($nvnCount + $nvfCount + $nvsCount))" -HighlightColor Gray -SequenceColor Blue
    #log "[~]" "Keys used:" "$nvkeyCount"  -HighlightColor Gray -SequenceColor Magenta
    log "[+]" "Output at" "- $nvo" -HighlightColor green -SequenceColor DarkGray
    $nvvar | Out-File -FilePath $nvout -Encoding UTF8
    log "[/]" "Press any key to exit" -HighlightColor Yellow
    [System.Console]::ReadKey()> $null
    exit}

function nvmain{
param ([string]$nvi,[string]$nvo)
bannercyan
if (-not(Test-Path -Path $nvi)){log "[-]" "Input file not found at -" "$nvi" -HighlightColor Red -SequenceColor DarkGray
log "[/]" "Press any key to exit" -HighlightColor Yellow
[System.Console]::ReadKey()> $null
exit}
$nvres=nvfile -nvin $nvi -nvout $nvo}

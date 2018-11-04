/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Sat Nov  3 16:02:38 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000018C2 (6338)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_PR_.CPPC, FieldUnitObj)
    External (_PR_.CPU0._PPC, MethodObj)    // 0 Arguments
    External (_SB_.ADP1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.DHCF, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.H_EC.E907, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ECA2, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.LIDM, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.PSAP, IntObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS11, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS12, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS13, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)
    External (BNUM, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PNOT, MethodObj)    // 0 Arguments
    External (PWRS, FieldUnitObj)

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        OperationRegion (PRT0, SystemIO, 0xB2, 0x04)
        Field (PRT0, DWordAcc, Lock, Preserve)
        {
            SSMP,   8, 
            SSM2,   8
        }

        OperationRegion (I2EC, SystemIO, 0x0380, 0x04)
        Field (I2EC, ByteAcc, Lock, Preserve)
        {
            Offset (0x01), 
            ADDH,   8, 
            ADDL,   8, 
            ADDA,   8
        }

        OperationRegion (ECF4, EmbeddedControl, Zero, 0xFF)
        Field (ECF4, ByteAcc, Lock, Preserve)
        {
            Offset (0x18), 
            Offset (0x19), 
            Offset (0x1A), 
            Offset (0x1B), 
            Offset (0x1C), 
            Offset (0x3C), 
            Offset (0x3D), 
            Offset (0x3E), 
            Offset (0x3F), 
            Offset (0x40), 
            VPWR,   1
        }

        OperationRegion (ECF3, EmbeddedControl, Zero, 0xFF)
        Field (ECF3, ByteAcc, Lock, Preserve)
        {
            VCMD,   8, 
            VDAT,   8, 
            VSTA,   8, 
            Offset (0x04), 
            AIND,   8, 
            ANUM,   8, 
            F1PW,   8, 
            F2PW,   8, 
            F1RM,   8, 
            F2RM,   8, 
            ECLC,   1, 
            BTSM,   1, 
            CDMB,   1, 
            CD2B,   1, 
            BTCM,   1, 
            BCCM,   1, 
            MBBD,   1, 
            BTIL,   1, 
            BTPF,   1, 
            FCGM,   1, 
            M2BD,   1, 
            BTOV,   1, 
                ,   1, 
                ,   1, 
            BT1S,   1, 
            QKSP,   1, 
            ACST,   2, 
            SPSU,   1, 
            ADSU,   1, 
            B2CD,   1, 
            B2CM,   1, 
            SHPS,   1, 
            Offset (0x13), 
            PSTA,   8, 
            DSTA,   8, 
            Offset (0x18), 
            SMPR,   8, 
            SMST,   8, 
            SMAD,   8, 
            SMCM,   8, 
            SMDX,256,//SMD0,256, 
            BCNT,   8, 
            SMAL,   8, 
            SMA0,   8, 
            SMA1,   8, 
            RPWR,   1, 
            WPSR,   1, 
            LSTE,   1, 
            TAST,   1, 
            Offset (0x41), 
            S3ON,   1, 
            S4ON,   1, 
            S5ON,   1, 
            Offset (0x42), 
            NOST,   1, 
            CRRE,   1, 
            Offset (0x43), 
            ACOS,   1, 
            KBLS,   1, 
            KBEN,   1, 
            TPOK,   1, 
            TPDS,   1, 
            RCST,   1, 
            UCSP,   1, 
            UCEN,   1, 
            SYSA,   1, 
            AUMO,   1, 
            HTKC,   1, 
            S4FG,   1, 
                ,   1, 
            BFUC,   2, 
            FG78,   1, 
                ,   7, 
            TPCS,   1, 
            ALSC,   1, 
            AKBC,   1, 
            AKBS,   1, 
            ALSS,   1, 
            KBLC,   1, 
                ,   1, 
            HTKS,   1, 
            Offset (0x47), 
            EVS2,   8, 
            EVS3,   8, 
            OSSW,   1, 
            ROLO,   1, 
            LSTA,   1, 
            PRNO,   1, 
            VOLD,   1, 
            VOLU,   1, 
            BTON,   1, 
            WLEN,   1, 
            MIF2,   8, 
            MIF3,   8, 
            MIF4,   8, 
            BRIL,   8, 
            CRKF,   8, 
            PAID,   1, 
            PAIG,   1, 
            I2CS,   1, 
            Offset (0x50), 
            DR0T,   8, 
            DR1T,   8, 
            TPTP,   8, 
            VGAT,   8, 
            PCHT,   8, 
            SYST,   8, 
            SCPT,   8, 
            CTMP,   8, 
            FTMP,   7, 
            Offset (0x5E), 
            TMPC,   8, 
            Offset (0x60), 
            BC0H,8,BC1H,8,BC2H,8,BC3H,8, 
            B2CH,   32, 
            B1MO,   16, 
            B2MO,   16, 
            B1SN,   16, 
            B2SN,   16, 
            BDT0,8,BDT1,8, 
            B2DT,   16, 
            BCY0,8,BCY1,8, 
            FUSL,   8, 
            FUSH,   8, 
            BMIL,   8, 
            BMIH,   8, 
            HIDL,   8, 
            HIDH,   8, 
            FMVL,   8, 
            FMVH,   8, 
            DAVL,   8, 
            DAVH,   8, 
            B2IN,   1, 
            B2VA,   1, 
            B2IC,   1, 
            B2FU,   1, 
                ,   1, 
            B2DE,   1, 
            B2AN,   1, 
            Offset (0x81), 
                ,   1, 
            B2WC,   1, 
            B2PC,   1, 
            B2NC,   1, 
            B2DO,   1, 
            B2WO,   1, 
            B2PO,   1, 
            B2NO,   1, 
            B2TM,   16, 
            Offset (0x86), 
            Offset (0x88), 
            B2RS,   16, 
            Offset (0x8B), 
            TPTY,   3, 
            Offset (0x8C), 
            Offset (0x8F), 
            BXMA,64,//B1MA,64, 
            Offset (0x98), 
            BYMA,64,//B2MA,64, 
            Offset (0xA2), 
            Offset (0xA4), 
            Offset (0xA6), 
            B2CV,   16, 
            Offset (0xAA), 
            RTP0,8,PTP1,8, 
            B0ET,8,B1ET,8, 
            Offset (0xB0), 
            CPUT,   8, 
            Offset (0xB2), 
            Offset (0xB3), 
            Offset (0xB4), 
            GPUT,   8, 
            Offset (0xB6), 
            BTM0,8,BTM1,8, 
            B0PV,8,B1PV,8, 
            Offset (0xBC), 
            B1CV,   16, 
            Offset (0xC1), 
            B1DI,   1, 
            B1IC,   1, 
            BATN,   1, 
            Offset (0xC2), 
            BAC0,8,BAC1,8, 
            BDC0,8,BDC1,8, 
            BDV0,8,BDV1,8, 
            BDCW,   16, 
            BDCL,   16, 
            BFC0,8,BFC1,8, 
            BAPR,   16, 
            BCR0,8,BCR1,8, 
            B1AR,   16, 
            Offset (0xE0), 
            LUX1,   8, 
            LUX2,   8, 
            SBMA,   8, 
            Offset (0xF0), 
            BAPS,   1, 
            B1FU,   1, 
            BATT,   1, 
            B1DE,   1, 
            B1AN,   1, 
            Offset (0xF1), 
                ,   1, 
            B1WC,   1, 
            B1PC,   1, 
            B1NC,   1, 
            B1DO,   1, 
            B1WO,   1, 
            B1PO,   1, 
            B1NO,   1, 
            Offset (0xF5), 
            F1SP,   16, 
            F2SP,   16, 
            FAN1,   8, 
            FAN2,   8, 
            BCG1,   16, 
            BCG2,   16
        }

        Mutex(BATM, 0)
        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (ECA2)
                {
                    If (And (BNUM, One))
                    {
                        Return (0x1F)
                    }
                }

                Return (0x0B)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Name (BPKG, Package (0x0D)
                {
                    Zero, 
                    Ones, 
                    Ones, 
                    One, 
                    Ones, 
                    Zero, 
                    Zero, 
                    0x64, 
                    Zero, 
                    "VIUU4", 
                    "BAT20101001", 
                    "LiP", 
                    "Lenovo IdeaPad"
                })
                Name (BPKH, Package (0x0D)
                {
                    Zero, 
                    Ones, 
                    Ones, 
                    One, 
                    Ones, 
                    Zero, 
                    Zero, 
                    0x64, 
                    Zero, 
                    "VIUU4", 
                    "BAT20101001", 
                    "LION", 
                    "Lenovo IdeaPad"
                })
                Name (MDST, Buffer (0x05)
                {
                    "    "
                })
                Name (SNST, Buffer (0x05)
                {
                    "    "
                })
                Name (TPST, Buffer (0x05)
                {
                    "    "
                })
                Name (LENV, Buffer (0x09)
                {
                    "        "
                })
                If (ECA2)
                {
                    Store (B1B2(BFC0,BFC1), Local0)
                    If (Local0)
                    {
                        Store (B1B2(BDC0,BDC1), Index (BPKG, One))
                        Store (Local0, Index (BPKG, 0x02))
                        Store (B1B2(BDV0,BDV1), Index (BPKG, 0x04))
                        Divide (Local0, 0x0A, Local1, Local2)
                        Store (Local2, Index (BPKG, 0x05))
                        Divide (Local0, 0x14, Local1, Local2)
                        Store (Local2, Index (BPKG, 0x06))
                        Store (B1B2(BDC0,BDC1), Index (BPKH, One))
                        Store (Local0, Index (BPKH, 0x02))
                        Store (B1B2(BDV0,BDV1), Index (BPKH, 0x04))
                        Divide (Local0, 0x0A, Local1, Local2)
                        Store (Local2, Index (BPKH, 0x05))
                        Divide (Local0, 0x14, Local1, Local2)
                        Store (Local2, Index (BPKH, 0x06))
                    }
                }

                If (LEqual (B1B4(BC0H,BC1H,BC2H,BC3H), 0x0050694C))
                {
                    Return (BPKG)
                }
                Else
                {
                    Return (BPKH)
                }
            }

            Method (POSW, 1, NotSerialized)
            {
                If (And (Arg0, 0x8000))
                {
                    If (LEqual (Arg0, 0xFFFF))
                    {
                        Return (Ones)
                    }
                    Else
                    {
                        Not (Arg0, Local0)
                        Increment (Local0)
                        And (Local0, 0xFFFF, Local0)
                        Return (Local0)
                    }
                }
                Else
                {
                    Return (Arg0)
                }
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Acquire (BATM, 0xFFFF)
                Name (PKG1, Package (0x04)
                {
                    Ones, 
                    Ones, 
                    Ones, 
                    Ones
                })
                If (ECA2)
                {
                    ShiftLeft (B1IC, One, Local0)
                    Or (B1DI, Local0, Local1)
                    Store (Local1, Index (PKG1, Zero))
                    Store (B1B2(BCR0,BCR1), Local2)
                    Store (POSW (Local2), Local2)
                    Store (B1B2(B0PV,B1PV), Local3)
                    Divide (Local3, 0x03E8, Local4, Local3)
                    Multiply (Local2, Local3, Local2)
                    Store (Local2, Index (PKG1, One))
                    Store (B1B2(BAC0,BAC1), Index (PKG1, 0x02))
                    Store (B1B2(B0PV,B1PV), Index (PKG1, 0x03))
                }

                Release (BATM)
                Return (PKG1)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB)
            }
        }

        Device (VPC0)
        {
            Name (_HID, "VPC2004")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_VPC, 0xFCFDE104)
            Name (VPCD, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CFG, 0, NotSerialized)
            {
                Return (_VPC)
            }

            Method (VPCR, 1, Serialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (VCMD, VPCD)
                }
                Else
                {
                    Store (VDAT, VPCD)
                }

                Return (VPCD)
            }

            Method (VPCW, 2, Serialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (Arg1, VCMD)
                }
                Else
                {
                    Store (Arg1, VDAT)
                }

                Return (Zero)
            }

            Method (SVCR, 1, Serialized)
            {
                If (LEqual (Arg0, Zero)){}
                If (LEqual (Arg0, One)){}
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, AUMO)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Store (One, AUMO)
                }
            }

            Method (HALS, 0, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (One, KBLC))
                {
                    Or (Local0, 0x10, Local0)
                }

                If (LEqual (One, KBLS))
                {
                    Or (Local0, 0x20, Local0)
                }

                If (LEqual (One, UCSP))
                {
                    Or (Local0, 0x40, Local0)
                }

                If (LEqual (One, UCEN))
                {
                    Or (Local0, 0x80, Local0)
                }

                If (LEqual (One, HTKS))
                {
                    Or (Local0, 0x0200, Local0)
                }

                If (LEqual (Zero, HTKC))
                {
                    Or (Local0, 0x0400, Local0)
                }

                Return (Local0)
            }

            Method (SALS, 1, Serialized)
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (One, KBLS)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x09))
                {
                    Store (Zero, KBLS)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x0A))
                {
                    Store (One, UCEN)
                    Store (0x33, SSM2)
                    Store (0xCA, SSMP)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x0B))
                {
                    Store (Zero, UCEN)
                    Store (0x32, SSM2)
                    Store (0xCA, SSMP)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x0E))
                {
                    Store (Zero, HTKC)
                    Store (0x31, SSM2)
                    Store (0xCA, SSMP)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x0F))
                {
                    Store (One, HTKC)
                    Store (0x30, SSM2)
                    Store (0xCA, SSMP)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (GBMD, 0, NotSerialized)
            {
                Store (0x10000000, Local0)
                If (LEqual (One, CDMB))
                {
                    Or (Local0, One, Local0)
                }

                If (LEqual (One, BTSM))
                {
                    Or (Local0, 0x02, Local0)
                }

                If (LEqual (One, FCGM))
                {
                    Or (Local0, 0x04, Local0)
                }

                If (LEqual (One, MBBD))
                {
                    Or (Local0, 0x08, Local0)
                }

                If (LEqual (One, M2BD))
                {
                    Or (Local0, 0x10, Local0)
                }

                If (LEqual (One, BTSM))
                {
                    Or (Local0, 0x20, Local0)
                }

                If (LEqual (One, BTIL))
                {
                    Or (Local0, 0x80, Local0)
                }

                If (LEqual (One, BTPF))
                {
                    Or (Local0, 0x0100, Local0)
                }

                If (LEqual (Zero, BTCM))
                {
                    Or (Local0, 0x0200, Local0)
                }

                If (LEqual (One, BTOV))
                {
                    Or (Local0, 0x0800, Local0)
                }

                If (LEqual (One, ACST))
                {
                    Or (Local0, 0x8000, Local0)
                }

                If (LEqual (0x02, ACST))
                {
                    Or (Local0, 0x00010000, Local0)
                }

                If (LEqual (0x03, ACST))
                {
                    Or (Local0, 0x00018000, Local0)
                }

                If (LEqual (One, QKSP))
                {
                    Or (Local0, 0x00020000, Local0)
                }

                If (LEqual (One, SPSU))
                {
                    Or (Local0, 0x00040000, Local0)
                }

                If (LEqual (One, ADSU))
                {
                    Or (Local0, 0x00080000, Local0)
                }

                If (LEqual (One, SHPS))
                {
                    Or (Local0, 0x00400000, Local0)
                }

                Return (Local0)
            }

            Method (SBMC, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (Zero, CDMB)
                    Return (Zero)
                }

                If (LEqual (Arg0, One))
                {
                    Store (One, CDMB)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Store (One, BTCM)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x05))
                {
                    Store (Zero, BTCM)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x06))
                {
                    Store (Zero, BTSM)
                }

                If (LEqual (Arg0, 0x07))
                {
                    Store (Arg0, SBMA)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg0, SBMA)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x09))
                {
                    Store (One, SHPS)
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x0A)){}
                If (LEqual (Arg0, 0x0B)){}
                If (LEqual (Arg0, 0x10))
                {
                    Store (Zero, SHPS)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (MHCF, 1, NotSerialized)
            {
                Store (Arg0, Local0)
                And (Local0, 0x20)
                ShiftRight (Local0, 0x05, Local0)
                Store (Local0, BFUC)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (BFWB, Buffer (0x25){})
                CreateByteField (BFWB, Zero, FB0)
                CreateByteField (BFWB, One, FB1)
                CreateByteField (BFWB, 0x02, FB2)
                CreateByteField (BFWB, 0x03, FB3)
                CreateField (BFWB, 0x20, 0x0100, FB4)
                CreateByteField (BFWB, 0x24, FB5)
                If (LLessEqual (SizeOf (Arg0), 0x25))
                {
                    If (LNotEqual (SMPR, Zero))
                    {
                        Store (SMST, FB1)
                    }
                    Else
                    {
                        Store (Arg0, BFWB)
                        Store (FB2, SMAD)
                        Store (FB3, SMCM)
                        Store (FB5, BCNT)
                        Store (FB0, Local0)
                        If (LEqual (And (Local0, One), Zero))
                        {
                            WECB(0x1C,256,FB4)
                        }

                        Store (FB0, SMPR)
                        Store (0x03E8, Local0)
                        While (SMPR)
                        {
                            Sleep (One)
                            Decrement (Local0)
                        }

                        Store (FB0, Local0)
                        If (LNotEqual (And (Local0, One), Zero))
                        {
                            Store (RECB(0x1C, 256), FB4)
                        }

                        Store (SMST, FB1)
                    }

                    Return (BFWB)
                }
            }

            Method (SMTF, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Return (B1B2(B0ET,B1ET))
                }

                If (LEqual (Arg0, One))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (MHIF, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Name (RETB, Buffer (0x0A){})
                    Store (FUSL, Index (RETB, Zero))
                    Store (FUSH, Index (RETB, One))
                    Store (BMIL, Index (RETB, 0x02))
                    Store (BMIH, Index (RETB, 0x03))
                    Store (HIDL, Index (RETB, 0x04))
                    Store (HIDH, Index (RETB, 0x05))
                    Store (FMVL, Index (RETB, 0x06))
                    Store (FMVH, Index (RETB, 0x07))
                    Store (DAVL, Index (RETB, 0x08))
                    Store (DAVH, Index (RETB, 0x09))
                    Return (RETB)
                }
            }

            Method (GSBI, 1, NotSerialized)
            {
                Name (BT11, Zero)
                Name (BTIF, Buffer (0x53){})
                CreateWordField (BTIF, Zero, IFDC)
                CreateWordField (BTIF, 0x02, IFFC)
                CreateWordField (BTIF, 0x04, IFRC)
                CreateWordField (BTIF, 0x06, IFAT)
                CreateWordField (BTIF, 0x08, IFAF)
                CreateWordField (BTIF, 0x0A, IFVT)
                CreateWordField (BTIF, 0x0C, IFCR)
                CreateWordField (BTIF, 0x0E, IFTP)
                CreateWordField (BTIF, 0x10, IFMD)
                CreateWordField (BTIF, 0x12, IFFD)
                CreateWordField (BTIF, 0x14, IFDV)
                CreateField (BTIF, 0xB0, 0x50, IFCH)
                CreateField (BTIF, 0x0100, 0x40, IFDN)
                CreateField (BTIF, 0x0140, 0x60, IFMN)
                CreateField (BTIF, 0x01A0, 0xB8, IFBC)
                CreateField (BTIF, 0x0258, 0x40, IFBV)
                Store (Divide (B1B2(BDC0,BDC1), 0x0A, ), IFDC)
                Store (Divide (B1B2(BFC0,BFC1), 0x0A, ), IFFC)
                Store (Divide (B1B2(BAC0,BAC1), 0x0A, ), IFRC)
                Store (B1B2(RTP0,PTP1), IFAT)
                Store (B1B2(B0ET,B1ET), IFAF)
                Store (B1B2(B0PV,B1PV), IFVT)
                Store (B1B2(BCR0,BCR1), IFCR)
                Store (B1B2(BTM0,BTM1), IFTP)
                Store (B1B2(BDT0,BDT1), IFMD)
                Store (B1B2(BDT0,BDT1), IFFD)
                Store (B1B2(BDV0,BDV1), IFDV)
                Store (Zero, IFCH)
                Store (B1B4(BC0H,BC1H,BC2H,BC3H), IFCH)
                Store (Zero, IFDN)
                Store (RECB(0x98, 64), IFDN)
                Store (Zero, IFMN)
                Store (RECB(0x8F, 64), IFMN)
                Store (Zero, IFBC)
                Store (0x17, BT11)
                While (BT11)
                {
                    Store (0x08, ADDH)
                    Store (Add (0x41, BT11), ADDL)
                    Sleep (0x02)
                    Store (ADDA, Index (BTIF, Add (0x33, BT11)))
                    Decrement (BT11)
                }

                Store (Zero, IFBV)
                Store (BMIL, Index (BTIF, 0x4B))
                Store (BMIH, Index (BTIF, 0x4C))
                Store (HIDL, Index (BTIF, 0x4D))
                Store (HIDH, Index (BTIF, 0x4E))
                Store (FMVL, Index (BTIF, 0x4F))
                Store (FMVH, Index (BTIF, 0x50))
                Store (DAVL, Index (BTIF, 0x51))
                Store (DAVH, Index (BTIF, 0x52))
                Store (BTIF, E907)
                Return (BTIF)
            }

            Method (HODD, 0, NotSerialized)
            {
                Return (0xFF)
            }

            Method (SODD, 1, Serialized)
            {
            }

            Method (GBID, 0, Serialized)
            {
                Name (GBUF, Package (0x04)
                {
                    Buffer (0x02)
                    {
                         0x00, 0x00                                     
                    }, 

                    Buffer (0x02)
                    {
                         0x00, 0x00                                     
                    }, 

                    Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    }, 

                    Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    }
                })
                Store (B1B2(BCY0,BCY1), Index (DerefOf (Index (GBUF, Zero)), Zero))
                Store (Zero, Index (DerefOf (Index (GBUF, One)), Zero))
                Store (BMIL, Index (DerefOf (Index (GBUF, 0x02)), Zero))
                Store (BMIH, Index (DerefOf (Index (GBUF, 0x02)), One))
                Store (HIDL, Index (DerefOf (Index (GBUF, 0x02)), 0x02))
                Store (HIDH, Index (DerefOf (Index (GBUF, 0x02)), 0x03))
                Store (FMVL, Index (DerefOf (Index (GBUF, 0x02)), 0x04))
                Store (FMVH, Index (DerefOf (Index (GBUF, 0x02)), 0x05))
                Store (DAVL, Index (DerefOf (Index (GBUF, 0x02)), 0x06))
                Store (DAVH, Index (DerefOf (Index (GBUF, 0x02)), 0x07))
                Store (Zero, Index (DerefOf (Index (GBUF, 0x03)), Zero))
                Return (GBUF)
            }
        }

        Method (_Q30, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x30)
            Sleep (0x012C)
            Store (One, PWRS)
            PNOT ()
        }

        Method (_Q31, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x31)
            Sleep (0x012C)
            Store (Zero, PWRS)
            PNOT ()
        }

        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x31)
            Store (RPWR, PWRS)
            Notify (\_SB.ADP1, 0x80)
            PNOT ()
        }

        Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPCB.H_EC.VPC0, 0x80)
        }

        Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x38)
            Sleep (0x012C)
            DHCF (0x02, Zero)
        }

        Method (_Q39, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x39)
            Sleep (0x012C)
            DHCF (0x03, Zero)
        }

        Method (_Q32, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x32)
            PNOT ()
        }

        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x33)
            Sleep (0x05DC)
            Store (Zero, BNUM)
            Or (BNUM, BAPS, BNUM)
            Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x80)
            Sleep (0x05DC)
            Notify (\_SB.PCI0.LPCB.H_EC.BAT1, 0x81)
            PNOT ()
        }

        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
        {
            LIDM ()
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
        {
            LIDM ()
        }

        Name (ECPS, Zero)
        Method (PCA2, 0, NotSerialized)
        {
            Store (ECPS, Local0)
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP.PSAP))
            {
                If (LLess (ECPS, \_SB.PCI0.PEG0.PEGP.PSAP))
                {
                    Store (\_SB.PCI0.PEG0.PEGP.PSAP, Local0)
                }
            }

            If (CondRefOf (\_PR.CPU0._PPC))
            {
                Store (Local0, \_PR.CPPC)
                PNOT ()
            }

            Return (Local0)
        }

        Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x72)
            If (LNotEqual (PSTA, 0xFF))
            {
                Store (PSTA, ECPS)
                PCA2 ()
                Store (Zero, PAID)
            }
        }

        Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (Zero, 0x73)
            Notify (\_SB.PCI0.PEG0.PEGP, DSTA)
            Store (Zero, PAIG)
        }
        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
            Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
            Return(BYTE)
        }
        Method (RECB, 2, Serialized)
        // Arg0 - offset in bytes from zero-based
        // Arg1 - size of buffer in bits
        {
            ShiftRight(Arg1, 3, Arg1)
            Name(TEMP, Buffer(Arg1) { })
            Add(Arg0, Arg1, Arg1)
            Store(0, Local0)
            While (LLess(Arg0, Arg1))
            {
                Store(RE1B(Arg0), Index(TEMP, Local0))
                Increment(Arg0)
                Increment(Local0)
            }
            Return(TEMP)
        }
        Method (WE1B, 2, NotSerialized)
        {
            OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
            Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
            Store(Arg1, BYTE)
        }
        Method (WECB, 3, Serialized)
        // Arg0 - offset in bytes from zero-based EC
        // Arg1 - size of buffer in bits
        // Arg2 - value to write
        {
            ShiftRight(Arg1, 3, Arg1)
            Name(TEMP, Buffer(Arg1) { })
            Store(Arg2, TEMP)
            Add(Arg0, Arg1, Arg1)
            Store(0, Local0)
            While (LLess(Arg0, Arg1))
            {
                WE1B(Arg0, DerefOf(Index(TEMP, Local0)))
                Increment(Arg0)
                Increment(Local0)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (GPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10){}
            })
            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
            Store (One, REV)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
            Store (Arg0, VISI)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
            Store (Arg1, GPOS)
            Return (PCKG)
        }

        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PCKG, Zero))
            Return (PCKG)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x04))
        }

        Device (CRGB)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (0x04)
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Name (UPCP, Package (0x04)
                {
                    0xFF, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Return (UPCP)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDS, Package (0x01)
                {
                    Buffer (0x10)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                    }
                })
                Name (PLDR, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0xC8, 0x00, 0xA1, 0x00                         
                    }
                })
                Return (PLDR)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x05))
        }

        Device (CRGB)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (0x05)
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Name (UPCP, Package (0x04)
                {
                    0xFF, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Return (UPCP)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDS, Package (0x01)
                {
                    Buffer (0x10)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                    }
                })
                Name (PLDR, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0xC8, 0x00, 0xA1, 0x00                         
                    }
                })
                Return (PLDR)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x07))
        }

        Device (CRGB)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (0x07)
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Name (UPCP, Package (0x04)
                {
                    0xFF, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Return (UPCP)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDS, Package (0x01)
                {
                    Buffer (0x10)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                    }
                })
                Name (PLDR, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0xC8, 0x00, 0xA1, 0x00                         
                    }
                })
                Return (PLDR)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x05))
        }

        Device (CRGB)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (0x14)
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Name (UPCP, Package (0x04)
                {
                    0xFF, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Return (UPCP)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDS, Package (0x01)
                {
                    Buffer (0x10)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                    }
                })
                Name (PLDR, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0xC8, 0x00, 0xA1, 0x00                         
                    }
                })
                Return (PLDR)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x08))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x09))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x06))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x0C))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS11)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x0D))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS12)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x0E))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS13)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x0F))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS14)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x10))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x11))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x12))
        }
    }
    Method (B1B2, 2, NotSerialized)
    {
        Return(Or(Arg0, ShiftLeft(Arg1, 8)))
    }
    Method (B1B4, 4, NotSerialized)
    {
        Store(Arg3, Local0)
        Or(Arg2, ShiftLeft(Local0, 8), Local0)
        Or(Arg1, ShiftLeft(Local0, 8), Local0)
        Or(Arg0, ShiftLeft(Local0, 8), Local0)
        Return(Local0)
    }
    
    
}


#  Zeus (Zbot) Banking Trojan - Malware Analysis Lab

This repository contains my malware analysis project on the **Zeus (Zbot) Banking Trojan**, performed in a self-hosted isolated lab using **REMnux** and **FLARE VM**. The goal was to conduct both static and dynamic analysis to understand the behavior and indicators of this well-known financial malware.

---

##  Lab Setup

- **OS Platforms**:  
  -  REMnux (Linux) — static analysis & network simulation  
  -  FLARE VM (Windows) — dynamic analysis, reversing
- **Analysis Tools Used**:  
  `PeStudio`, `FLOSS`, `Capa`, `Cutter`, `Procmon`, `Wireshark`, `INetSim`, `DNSChef`, `YARA`

---

##  Sample Details

- **Filename**: `invoice_2318362983713_823931342io.pdf.exe`
- **MD5**: `EA039A854D20D7734C5ADD48F1A51C34`
- **SHA1**: `9615DCA4C0E46B8A39DE5428AF7DB060399230B2`
- **SHA256**: `69E966E730557FDE8FD84317CDEF1ECE00A8BB3470C0B58F3231E170168AF169`

---

##  Static Analysis

- **Detection**: 65/71 AV engines flagged as malicious on VirusTotal.
- **File Format**: PE executable (not packed)
- **DLLs Used**: `KERNEL32.dll`, `USER32.dll`, `SHLWAPI.dll`

---

###  Extracted Strings & API Calls

One line per string (see `strings.txt` for full list). Examples:

# cs301
Assembly Language Programming projects from the Fall 2021 semester at UAF.

# Final Project: Reverse Engineering Prior CTF
**Purpose:** Disassemble a binary and add relevant comments under each line.

## Problem Solving
This project started with an [EC2 instance](https://aws.amazon.com/ec2/) on AWS running Amazon Linux. I practiced running class examples of x86 Assembly, shifting towards two Capture The Flag (CTF) events that dealt with reverse engineering binary files. Some early attempts at running code are in the `practice` directory.

Reverse engineering binary and executable files is a crucial skill for several reasons. Functional analysis and understanding the behavior allow for a better notion of the intentions behind its construction and purpose – both vitally important for cyber defense and malware deconstruction.

## Technical Approach
Upon becoming more accustomed to [MetaCTF's](https://metactf.com/) `Baffling Buffer 1` and [Google CTF’s](https://capturetheflag.withgoogle.com/) `rev-cpp` challenges, I focused on annotating unknown assembly and source code. Initial feedback followed with the recommendation of the Binary Bomb Challenge – a unique problem set to hone skills in both reverse engineering and understanding of the underlying assembly language.

[Ghidra](https://github.com/NationalSecurityAgency/ghidra) is a free and open-source tool developed by the [National Security Agency](https://www.nsa.gov/resources/everyone/ghidra/), which provides fascinating insights into both a loaded binary and its automatic analysis. As shown below, this allows us to use the imported results summary to understand how the binary was compiled and use auto analysis to determine the flow of the program to best guess C code based on its respective assembly language.

<img width="611" alt="CS 301 Import Results Summary" src="https://user-images.githubusercontent.com/7608183/145669901-a860a48d-034f-4fb6-8cf1-a118dcd72fe3.png">

One example process includes the annotation of unrecognized assembly. With hosting support from the [UAF Cyber Security Club](https://www.csc.uaf.edu/), I used a [Kali Linux](https://www.kali.org/) virtual machine to run the challenge’s executables and static binaries through Ghidra for the initial project scope.

## Project Code
Finalized and commented code can be found in the [annotation.asm](https://github.com/TechSolomon/cs301/blob/main/src/annotation.asm) file in the `src` directory, along with additional notes from the Binary Bomb Challenge in the [NOTES.md](https://github.com/TechSolomon/cs301/blob/main/src/NOTES.md) and [STRINGS.md](https://github.com/TechSolomon/cs301/blob/main/src/STRINGS.md) files.

Some of the most common instructions inside the binary’s function main included: `PUSH`, `MOV`, `SUB`, `CMP`, `JNZ`, `JMP`, `CALL`, `TEST`, and `XOR`. As shown below, Ghidra greatly assisted in best guessing the flow of control of C code based on the underlying Assembly Language.

<img width="1440" alt="CS 301 Binary Bomb 2" src="https://user-images.githubusercontent.com/7608183/145669904-2bbbb435-cc75-4083-9b55-941fab43a758.png">

## Conclusion
Lessons learned with this project included code comment consistency and the organization of a project across multiple operating systems (Linux, macOS, & virtual machine). My favorite aspect would be exploring different binary files and comprehending the underlying data structures and control flow from various diffusion tasks.

In the future, I hope to experiment more with tracking my progress of assembly translation into other high-level languages and trying out other disassemblers, such as IDA Pro. I look forward to taking what I have learned from the Binary Bomb Challenge and applying it to future CTF events and projects – all while inter-splicing an improved understanding of the underlying assembly language.

## Further Reading
- [Trail of Bits – Auditing Binaries: CTF Field Guide](https://trailofbits.github.io/ctf/vulnerabilities/binary.html)
- [GitHub Security Lab – Capture The Flag](https://securitylab.github.com/ctf/)
- [CTFtime Writeups](https://ctftime.org/writeups)

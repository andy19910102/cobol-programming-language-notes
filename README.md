# COBOL Programming Language Notes

COBOL(Common Business Oriented Language)

COBOL (/ˈkoʊbɒl, -bɔːl/; an acronym for "common business-oriented language") is a compiled English-like computer programming language designed for business use. It is an imperative, procedural and, since 2002, object-oriented language. COBOL is primarily used in business, finance, and administrative systems for companies and governments. COBOL is still widely used in applications deployed on mainframe computers, such as large-scale batch and transaction processing jobs. However, due to its declining popularity and the retirement of experienced COBOL programmers, programs are being migrated to new platforms, rewritten in modern languages or replaced with software packages. Most programming in COBOL is now purely to maintain existing applications; however, many large financial institutions were still developing new systems in COBOL as late as 2006.

By 2019, the number of COBOL programmers was shrinking fast due to retirements, leading to an impending skills gap in business and government organizations which still use mainframe systems for high-volume transaction processing. Efforts to rewrite systems in newer languages have proven expensive and problematic, as has the outsourcing of code maintenance, thus proposals to train more people in COBOL are advocated.

During the COVID-19 pandemic and the ensuing surge of unemployment, several US states reported a shortage of skilled COBOL programmers to support the legacy systems used for unemployment benefit management. Many of these systems had been in the process of conversion to more modern programming languages prior to the pandemic, but the process had to be put on hold. Similarly, the US Internal Revenue Service rushed to patch its COBOL-based Individual Master File in order to disburse the tens of millions of payments mandated by the Coronavirus Aid, Relief, and Economic Security Act.

- 80% of Financial Transactions
- 95% of ATM Transactions
- Social Security Administration runs on COBOL
- Department of Defenses Payment System
- Internal Revenue Service Runs on COBOL
- US State Financial Systems Run on COBOL

## Install COBOL in MacOS

1. Get a HomeBrew

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

1.1 Add Homebrew to PATH

```shell
$ echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/YOUR_USERNAME/.zprofile
$ eval "$(/opt/homebrew/bin/brew shellenv)"
```

2. Install gnu-cobol

```shell
$ brew install gnu-cobol
```

3. Check version 

```shell
$ cobc -version

cobc (GnuCOBOL) 3.1.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
Written by Keisuke Nishida, Roger While, Ron Norman, Simon Sobisch, Edward Hart
Built     Oct 29 2021 07:50:17
Packaged  Dec 23 2020 12:04:58 UTC
C version "Apple LLVM 13.0.0 (clang-1300.0.29.3)"
```

## Compile and run the program

### Example 1

coboltut.cob

```cobol
       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
AUTHOR. Huang An Sheng.
DATE-WRITTEN. Aug 05th 2022
ENVIRONMENT DIVISION. 
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 UserName PIC X(30) VALUE "You".
01 Num1     PIC 9 VALUE ZEROS.
01 Num2     PIC 9 VALUE ZEROS.
01 Total    PIC 99 VALUE 0.
01 SSNum.
       02 SSArea   PIC 999.
       02 SSGroup  PIC 99.
       02 SSSerial PIC 9999.
01 PIValue CONSTANT AS 3.14.
*> ZERO, ZEROES
*> SPACE SPACES
*> HIGH-VALUES
*> LOW-VALUES

PROCEDURE DIVISION.
DISPLAY "What is your name " WITH NO ADVANCING
ACCEPT UserName
DISPLAY "Hello " UserName 


STOP RUN.
```

Compile the coboltut.cob

```shell
$ cobc -x coboltut.cob
```

Run the program

```shell
$ ./coboltut
```

### Example 2

MathFunctions.cob

```cobol
       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. MathFunctions.
AUTHOR. Huang An Sheng.
DATE-WRITTEN. Aug 05th 2022
ENVIRONMENT DIVISION. 
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Num1 PIC 9 VALUE 5.
01 Num2 PIC 9 VALUE 4.
01 Num3 PIC 9 VALUE 3.
01 Ans PIC S99V99 VALUE 0.
01 Rem PIC 9V99.

PROCEDURE DIVISION.

ADD Num1 TO Num2 GIVING Ans
DISPLAY Ans
SUBTRACT Num1 FROM Num2 GIVING Ans
DISPLAY Ans
MULTIPLY Num1 BY Num2 GIVING Ans
DISPLAY Ans
DIVIDE Num1 INTO Num2 GIVING Ans
DISPLAY Ans
DIVIDE Num1 INTO Num2 GIVING Ans REMAINDER Rem
DISPLAY "Remainer " Rem

STOP RUN.
```

Compile the MathFunctions.cob

```shell
$ cobc -x MathFunctions.cob
```

Run the program

```shell
$ ./MathFunctions
```

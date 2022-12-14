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

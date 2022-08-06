       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. Paragraphs.
AUTHOR. Huang An Sheng.
DATE-WRITTEN. Aug 05th 2022
ENVIRONMENT DIVISION. 
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
SubOne.
       DISPLAY "In Paragraph 1"
       PERFORM SubTwo
       DISPLAY "Returned to Paragraph 1"
       PERFORM  SubFour 2 TIMES
       STOP RUN.
SubThree.
       DISPLAY "In Paragraph 3".

SubTwo.
       DISPLAY "In Paragraph 2"
       PERFORM SubThree
       DISPLAY "Returned to Paragraph 2".

SubFour.
       DISPLAY "Repeat"

STOP RUN.

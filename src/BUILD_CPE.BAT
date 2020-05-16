REM ================= PSX DEVELOPMENT ENVIRONMENT VARIABLES =============
REM       RELEASE 1.8 LIBRARY 3.6.1 Date: 1-31-1998 Time: 21:38:44
set PATH=c:\psyq\bin;
set PSX_PATH=c:\psyq\bin
set LIBRARY_PATH=c:\psyq\lib
set C_PLUS_INCLUDE_PATH=c:\psyq\include
set C_INCLUDE_PATH=c:\psyq\include
set PSYQ_PATH=c:\psyq\bin

set COMPILER_PATH=c:\psyq\bin
set GO32=DPMISTACK 1000000 
set G032TMP=c:\TEMP
set TMPDIR=c:\TEMP

echo "Starting CCPSX.EXE..."
CCPSX.EXE main.c -o BUILD.CPE >> c:\LOG.TXT
echo "Finished CCPSX.EXE"

EXIT

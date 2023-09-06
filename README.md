# Fortran-90-adjust-left
https://gcc.gnu.org/onlinedocs/gfortran/ADJUSTL.html


Next: ADJUSTR — Right adjust a string, Previous: ACOSH — Inverse hyperbolic cosine function, Up: Intrinsic Procedures   [Contents][Index]
8.9 ADJUSTL — Left adjust a string

Description:

    ADJUSTL(STRING) will left adjust a string by removing leading spaces. Spaces are inserted at the end of the string as needed.
Standard:

    Fortran 90 and later
Class:

    Elemental function
Syntax:

    RESULT = ADJUSTL(STRING)
Arguments:
    STRING	The type shall be CHARACTER.
Return value:

    The return value is of type CHARACTER and of the same kind as STRING where leading spaces are removed and the same number of spaces are inserted on the end of STRING.
Example:

    program test_adjustl
      character(len=20) :: str = '   gfortran'
      str = adjustl(str)
      print *, str
    end program test_adjustl

See also:

    ADJUSTR — Right adjust a string,
    TRIM — Remove trailing blank characters of a string 

ian@ian-HP-Convertible-x360-11-ab1XX:~$ gfortran test_adjustl.f08 -o test_adjustl
ian@ian-HP-Convertible-x360-11-ab1XX:~$ ./test_adjustl
 gfortran            
ian@ian-HP-Convertible-x360-11-ab1XX:~$ cat test_adjustl.f08
       program test_adjustl
       character(len=20) :: str = '   gfortran'
       str = adjustl(str)
       print *, str
       end program test_adjustl
ian@ian-HP-Convertible-x360-11-ab1XX:~$ sloccount test_adjustl.f08
Have a non-directory at the top, so creating directory top_dir
Adding /home/ian/test_adjustl.f08 to top_dir
Categorizing files.
Computing results.


SLOC	Directory	SLOC-by-Language (Sorted)
0       top_dir         (none)
SLOC total is zero, no further analysis performed.
ian@ian-HP-Convertible-x360-11-ab1XX:~$ cp test_adjustl.f08 test_adjustl.f
ian@ian-HP-Convertible-x360-11-ab1XX:~$ sloccount test_adjustl.f
Have a non-directory at the top, so creating directory top_dir
Adding /home/ian/test_adjustl.f to top_dir
Categorizing files.
Finding a working MD5 command....
Found a working MD5 command.
Computing results.


SLOC	Directory	SLOC-by-Language (Sorted)
5       top_dir         fortran=5


Totals grouped by language (dominant language first):
fortran:          5 (100.00%)




Total Physical Source Lines of Code (SLOC)                = 5
Development Effort Estimate, Person-Years (Person-Months) = 0.00 (0.01)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 0.04 (0.42)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 0.02
Total Estimated Cost to Develop                           = $ 104
 (average salary = $56,286/year, overhead = 2.40).
SLOCCount, Copyright (C) 2001-2004 David A. Wheeler
SLOCCount is Open Source Software/Free Software, licensed under the GNU GPL.
SLOCCount comes with ABSOLUTELY NO WARRANTY, and you are welcome to
redistribute it under certain conditions as specified by the GNU GPL license;
see the documentation for details.
Please credit this data as "generated using David A. Wheeler's 'SLOCCount'."
ian@ian-HP-Convertible-x360-11-ab1XX:~$ ian@ian-HP-Convertible-x360-11-ab1XX:~$ ls *.f
airy.f    bessik.f  chebev.f        sineof.f
beschb.f  bessjy.f  fortrancallc.f  xairy.f
ian@ian-HP-Convertible-x360-11-ab1XX:~$ ls *.f08
adjust.f08  fortrancallc.f08
ian@ian-HP-Convertible-x360-11-ab1XX:~$ cp adjust.f08 test_adjustl.f08
ian@ian-HP-Convertible-x360-11-ab1XX:~$ gfortran test_adjust1.f08 -o test_adjustl
f951: Error: Cannot open file ‘test_adjust1.f08’
<built-in>: Fatal Error: cannot open input file: test_adjust1.f08
compilation terminated.
ian@ian-HP-Convertible-x360-11-ab1XX:~$ gfortran test_adjustl.f08 -o test_adjustl
ian@ian-HP-Convertible-x360-11-ab1XX:~$ ./test_adjustl
 gfortran            
ian@ian-HP-Convertible-x360-11-ab1XX:~$ cat test_adjustl.f08
       program test_adjustl
       character(len=20) :: str = '   gfortran'
       str = adjustl(str)
       print *, str
       end program test_adjustl
ian@ian-HP-Convertible-x360-11-ab1XX:~$ sloccount test_adjustl.f08
Have a non-directory at the top, so creating directory top_dir
ian@ian-HP-Convertible-x360-11-ab1XX:~$ ing David A. Wheeler's 'SLOCCount'.";


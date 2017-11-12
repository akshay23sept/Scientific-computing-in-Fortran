A debugger tool is used to search for errors in the programs.

A debugger program steps through the code and allows you to examine the values in the variables and other data objects during execution of the program.

It loads the source code and you are supposed to run the program within the debugger. Debuggers debug a program by:

Setting breakpoints,
Stepping through the source code,
Setting watch points.
Breakpoints specify where the program should stop, specifically after a critical line of code. Program executions after the variables are checked at a breakpoint.

Debugger programs also check the source code line by line.

Watch points are the points where the values of some variables are needed to be checked, particularly after a read or write operation.

The gdb Debugger
The gdb debugger, the GNU debugger comes with Linux operating system. For X windows system, gdb comes with a graphical interface and the program is named xxgdb.

Following table provides some commands in gdb:

Command	Purpose
break	Setting a breakpoint
run	Starts execution
cont	Continues execution
next	Executes only the next line of source code, without stepping into any function call
step	Execute the next line of source code by stepping into a function in case of a function call.
The dbx Debugger
There is another debugger, the dbx debugger, for Linux.

The following table provides some commands in dbx:

Command	Purpose
stop[var]	Sets a breakpoint when the value of variable var changes.
stop in [proc]	It stops execution when a procedure proc is entered
stop at [line]	It sets a breakpoint at a specified line.
run	Starts execution.
cont	Continues execution.
next	Executes only the next line of source code, without stepping into any function call.
step	Execute the next line of source code by stepping into a function in case of a function call.

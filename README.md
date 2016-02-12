C64-Cross-Development README
============================

(C) 2015, Marcel Dümmel marcel.duemmel@aquasign.net


0. Introduction
---------------

This packages forms a simple template for cross-developing C64-programs in an
unix environment.

It automates the building process by using modern tools like GNU Make and
provides some scripts to optimise the edit-build-run-circle.


1. Requirements
---------------

This template is tested on Mac OS X 10.9, but it should run unchanged on any
modern UNIX-like operating system.

Further requirements:

   - a build-environment providing a GNU-compatible make-command
   - a recent ACME cross-assembler
   - VICE-Emulator (tested with version 2.4)

The VICE-destribution provides several tools. At least two of them should be 
accessable throw the path-variable:

   - x64	the c64-emulator
   - petcat	a ascii-to-commodore-basic compiler 

2. Initialization
-----------------

To start a new project based on ghis template frist run the script init.sh   
It will delete all example files and the .git-directory. I'll initiate a new
Git-repository for your project. So you don't have to deal with commits only
related to the template-development but instead you'll get a clean startup
platform for your project.
 

3. Build-process 
----------------

The build-process is quite straite forward, presuming you are familiar with
Makefiles. If not I refer to gnu-projects webpage for informations.
(http://www.gnu.org/software/make/)

The binaries will be written in the `drive`-directory, which will be important
in the next section.


4. Running the code
-------------------

To run the assembled binaries, run the command

$ tools/startemulator

which will call the VICE-Emulator and automatically mount the `drive`-directory
as device no. 8 within the emulated c64-system. Now you can load your program
by typing

LOAD "PROGRAMNAME",8,1


5. Goodies
----------

The directories `lib` and `tools` (will) provide additional functionality to
provide you with a little convenience:


### lib 

Here you'll find some assembler routines. Currently there's only a little
Basic-Start-Routine, but more will come. :-)


### tools

Here you'll find a couple of bash-scripts to suit recurring tasks. For example
`bin2basicdata` converts binary data to BASIC data-lines.

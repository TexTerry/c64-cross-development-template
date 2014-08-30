C64-Cross-Development README
============================

(C) 2014, Marcel Dümmel marcel.duemmel@aquasign.net


0. Introduction
---------------

This packages forms a simple template for cross-developing C64-programs in a
unix environment.

It automates the building process by using modern tools like GNU Make and
provides some scripts to optimise the edit-build-run-circle.


1. Requirements
---------------

This template is tested on Mac OS X 10.9, but it should run unchanges on any
modern UNIX-like operating system.

Further requirements are:

   - a build-environment providing a GNU-compatible make-command
   - a recent ACME cross-assembler
   - VICE-Emulator (tested with version 2.4)

The VICE-destribution provides several tools. At least two of them should be 
accessable throw the path-variable:

   - x64	the c64-emulator
   - petcat	a ascii-to-commodore-basic compiler 


2. Build-process 
----------------

The build-process is quite straite forward, presuming you are familiar with
Makefiles. If not I refer to gnu-projects webpage for informations.
(http://www.gnu.org/software/make/)

the binaries will be written in the `drive`-directory, which will be important
in the next section.


3. Running the code
-------------------

To run the assembled binaries, run the command

$ scripts/startemulator

which will call the VICE-Emulator and automatically mount the `drive`-directory
as device no. 8 within the emulated c64-system. Now you can load your program
by typing

LOAD "PROGRAMNAME",8,1




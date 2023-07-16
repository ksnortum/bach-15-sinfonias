# bach-15-sinfonias
LilyPond source files for Johann Sebastian Bach's 15 Sinfonias.

## Requirements
LilyPond version 2.24.0 or higher. (*Note:* LilyPond is not always backwards-compatible.  If you have a later version, be sure to run `convert.ly` on all the files.  All files were compiled with version 2.24.1.)

## Producing PDFs or other outputs
You can always go to my latest release [here](https://github.com/ksnortum/bach-15-sinfonias/releases/latest), or use [Frescobaldi](https://www.frescobaldi.org/), or create the PDFs from the command line.  It is assumed that `lilypond` is in the PATH of your system.

`cd` into your installation directory and type:

        lilypond 15-sinfonias-book.ly

This should produce a PDF and fifteen MIDI files.

The PDF produced will have point-and-click info in it, which you may not want (it makes the file size much bigger).  To avoid this use the `-dno-point-and-click` command line option.  This is explained in detail [here](https://lilypond.org/doc/v2.24/Documentation/usage/command_002dline-usage).

There are also fifteen LilyPond files to create the sinfonias separately: `sinfonia-no1-C-maj.ly`, `sinfonia-no2-C-min.ly`, etc.

## Thanks
Many thanks to @phmcarty for his proofreading and, when the sources disagreed, investigating.

## Licensing
This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit [http://creativecommons.org/licenses/by-sa/4.0/](http://creativecommons.org/licenses/by-sa/4.0/).

## Questions, problems, etc.
If you have a question about these source files or how to produce a PDF, you can contact me at: **knute (at) snortum (dot) net** or create a pull request.

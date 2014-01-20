Shell scripting
===============

In this project, you will construct scripts to do the following:

 * `gordo`:         Find the five folders in the current directory 
                    consuming the most space.

 * `mp3dups`:       Report duplicate MP3s (by file contents, not
                    file name) on a computer.

 * `recap`:         Take a list of names whose first and last names 
                    have been lower-cased, and properly recapitalize
                    them.

 * `oxbane`:        Find all words in English that have x as their
                    second letter, and n as their second-to-last.

 * `rot13`:         Apply rot13 encoding/decoding to standard in.

 * `space-invader`: Replace all spaces in a filename with underscore 
                    for a given directory.

 * `intersect`:     Computes the lines common to two files.

 * `crackgen`:      Generates a password hash file from a dictionary.

 * `passcrack`:     Attempts to crack a password database whose
                    passwords were hashed but not salted using the
                    output of the previous program.

 * `validate`:      Validates a username and password against a
                    database whose passwords have been properly
                    salted and hashed.

Recommended tools: `bash` or `zsh`, `md5sum`, 
                   `diff`, `sort`, `uniq`, `cut`,
                   `sed`, `awk`, `du`. 


Testing
=======

Running `make test` will run all of your scripts against the
supplied test inputs in the `data` directory.  The results will
be dumped into the `results` directory for inspection.

Running `make compare` will `diff` the `results` directory with
the supplied `expected-results` directory, which contains the
output of the tools when run against the provided test inputs
in the `data` directory.


Requirements
------------

Complete each of the scripts in the `./scripts` directory according to
the specification in the comments.

You can use any programming language you want that exists on the
server, as long as the script has the desired behavior when executed.

**WARNING**: Do not delete the comment lines.  The project spec may be
updated/clarified, and in the process, these comments may be updated.  If you
modify them, you could might get conflicts when you pull changes from the
master.

If you think a specification is ambiguous, please email [me] immediately for a
ruling.


Pointers
--------

* [A Unix survival guide](http://matt.might.net/articles/basic-unix/)

* [Settling into Unix](http://matt.might.net/articles/settling-into-unix/)

* [Programming in bash](http://matt.might.net/articles/bash-by-example/)

* [Sculpting text with regex, sed and awk](http://matt.might.net/articles/sculpting-text/)


[me]: http://matt.might.net/

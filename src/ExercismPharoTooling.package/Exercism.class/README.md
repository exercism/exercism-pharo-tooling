# Exercism
I am an exporter for code solutions created for the Pharo language track of Exercism.io.

## Description
This tool re-uses parts _file out_ feature already built into Pharo. It exports two files containing the  Smalltalk code from a class. One file is place in the `<exercise>` directory. The other file is placed in the `<exercise>/.ghost` directory.

Files in the root of the `<exercise>` directory have been scrubbed of all meta data and machine artifacts to improve readability. These files are for viewing code on Exercism.io.

The `.ghost` directory files contain the additional meta data that is needed to make them machine readable. This allows them to be _filed in_ to another Pharo image. 

In keeping with Exercism convention, solutions should be exported to the directory `HOME/exercism/pharo/<exercise>` where `<exercise>` is the name of the class being exported, and the name of the exercise the solution is for. The value for this directory is available in the class method #exercismDirectory in the 'constants' protocol.

### Instance Variables
`homeDirectory` - The users HOME directory, typically available as an environment variable from the Operating System.
`exercismDirectory` - The directory containing the Exercism exercises. This will typically be `exercism/pharo/`.

### Constants
`exercismDirectory` - The directory to which files will be exported.
`fileExtension` - The file extension of the exported code file.

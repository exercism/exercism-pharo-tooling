# Exercism
I am an exporter for code solutions created for the Pharo language track of Exercism.io.

## Description
This tool re-uses parts _file out_ feature already built into Pharo. It exports two files containing the  Smalltalk code from a class. One file is place in the `<exercise>` directory. The other file is placed in the `<exercise>/.ghost` directory.

I do not create the directory tree for the exercise. I assume it has already been created by the exercism command line tool with `exercism fetch pharo`. For the exercise `hello-world` I would expect to see this directory tree:

```shell
HelloWorld/
|-- .ghost/
|     |-- HelloWorld.st
|     |-- HelloWorldTest.st
|-- HelloWorld.st
|-- HelloWorldTest.st
 ```

Files in the root of the `HelloWorld` directory have been scrubbed of all meta data and machine artifacts to improve readability. These files are for viewing code on Exercism.io.

The `.ghost` directory files contain the additional meta data that is needed to make them machine readable. This allows them to be _filed in_ to another Pharo image. 

In keeping with Exercism convention, solutions should be exported to the directory `HOME/exercism/pharo/<exercise>` where `<exercise>` is the name of the class being exported, and the name of the exercise the solution is for. The value for this directory is available in the class method #exercismDirectory in the 'constants' protocol.

### Usage
Write your solution to an exercise in a class. After a solution to an exercise has been made, in the Playground enter the following message send, then right click with the mouse and select `Do it`. Replace the `HelloWorld` with the name of the class you want to export (unless you really want to export the `HelloWorld` class):
```smalltalk
Exercism exportClass: HelloWorld
```

#### Assumptions
- The name of the class to be exported is the same as the exercise name.

### Instance Variables
`exerciseDirectory` - The directory containing the Exercism exercises. This will typically be `exercism/pharo/<exercise-name>`.
`exportFile` - The name of the file being exported. Both the human and machine readable files share this name.
`ghostDirectory` - The directory containing the machine readable files. These can be _filed in_ to a Pharo image.
`exerciseClass` - The class containing the exercise solution. 

### Constants
Constants are provided as class methods that simply return the expected value.
`exercismDirectory` - The parent directory of the Exercism Pharo language track.
`fileExtension` - The file extension of the exported code file.
`ghostDirectory` - The directory for hiding machine readable files not for human editing or reading.

### Troubleshooting
These are some possible errors that may be encountered, or have been encountered in development, and the known cause and solution for them.

#### #nextChunkPut: was sent to nil
To export the code a `FileStream` must be created. The file path provided to the `FileStream` must already exist on the computer. If it doesn't the `FileStream` will be `nil`. The file path should  be created when the exercise is downloaded with `exercism fetch pharo <exercise-name>`. The file path provided to `FileStream` might not match with the correct path. The code for this is in `Exercism>>#exportClass:`.
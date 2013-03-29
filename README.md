# ClusterFuck - Distributed Programming Language

## Introduction
ClusterFuck (working name, subject to change) is an experiment in creating a _distributed_ programming language. It cannot be emphasised enough that it's not about creating programming language suitable for distributed computing. No, it's rather about creating a programming language that _itself_ is distributed.

Instructions can be implemented in different programming languages and run on different hosts. The running program can be copied or even move between hosts.

## Components
* [CAVEAT](https://github.com/DevL/CAVEAT) A virtual machine capable of loading and executing a program in a binary format.
* An assembler for parsing virtual assembly and converting it to a binary format.
* A mechanism for broadcasting and finding instruction capabilities.

## Design Goals
* More assembler! Assembley programming is fun, but not something that a fraction of developers get to do.
* More computers! Distributed instruction set. An instruction should be able to be executed on a completely different host than the bulk of the program.
* More languages! Simple protocol for discovering and broadcasting instruction implementations. It should be possible, nay encouraged, to implement an instruction in another programming language.

## Virtual Machine Characteristics
* The virtual machine should be simple and straightforward. With strictly limited resources, the VM can be small enough to be copied in its entirety from one node to another. About 64Kb of addressable memory is a likely candidate.
* A [Load/Store architecture](http://en.wikipedia.org/wiki/Load-store_architecture) entails that only registers and not the entire memory needs to be passed to an instruction node for computation.

## Roadmap
TBD


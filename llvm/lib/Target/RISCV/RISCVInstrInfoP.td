//===-- RISCVInstrInfoP.td - RISC-V 'P' instructions -------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the RISC-V instructions from the standard 'P',
// Programmable Accelerator Network, 'PAN'
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// PAN specific DAG Nodes.
//===----------------------------------------------------------------------===//
// None at this time

//===----------------------------------------------------------------------===//
// Instructions
//===----------------------------------------------------------------------===//

let Predicates = [HasStdExtP, IsRV64] in {
def FUTURE  : Load_pi<0b111, "future">,  Sched<[WriteFUTURE, ReadMemBase]>;
def RFUTURE : Load_pi<0b101, "rfuture">, Sched<[ReadSFUTURE, ReadMemBase]>;
def SFUTURE : Load_pi<0b100, "sfuture">, Sched<[ReadRFUTURE, ReadMemBase]>;
} // Predicates = [HasStdExtP, IsRV64]

//===----------------------------------------------------------------------===//
// Pseudo-instructions and codegen patterns
//===----------------------------------------------------------------------===//
// None at this time

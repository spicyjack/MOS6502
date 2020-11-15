//
//  InstructionMode.swift
//  MOS6502
//
//  Created by Stuart on 15/11/2020.
//

import Foundation

enum InstructionMode {
    case immediate   //  use the value directly following the operand
    case zeroPage
    case zeroPageX
    case absolute
    case absoluteX
    case absoluteY
    case indirectX
    case indirectY
    case implied
    case accumulator
    case relative
}

struct Instruction {
    let mode: InstructionMode
    let syntax: String
    let hexCode: UInt8
    let len: Int
    let cycles: Int
    let flagsAffected: [StatusFlag]
    let requiresAdditionalCycles: Bool
    let cyclesToAdd: Int
    let description: String
    
    // Add a closure that should be executed for this instruction
}

enum StatusFlag {
    case N      // Negative
    case V      // Overflow
    case nu1    // Unused
    case nu2    // Unused
    case D      // Decimal
    case I      // Interrupt Disable
    case Z      // Zero
    case C      // Carry
}
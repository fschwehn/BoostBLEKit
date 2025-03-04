//
//  Boost.swift
//  BoostBLEKit
//
//  Created by Shinichiro Oba on 20/07/2018.
//  Copyright © 2018 bricklife.com. All rights reserved.
//

import Foundation

public final class Boost {
    
    public final class MoveHub: Hub {
        
        public init() {}
        
        public var connectedIOs: [PortId : IOType] = [
            0x32: .rgbLight,
            0x00: .builtInMotor,
            0x01: .builtInMotor,
            0x10: .builtInMotor,
            0x3a: .tiltSensor,
            0x3b: .currentSensor,
            0x3c: .voltageSensor,
        ]
        
        public let portMap: [Port: PortId] = [
            .A:     0x00,
            .B:     0x01,
            .C:     0x02,
            .D:     0x03,
            .AB:    0x10,
        ]
        
        public func canSupportAsMotor(ioType: IOType) -> Bool {
            switch ioType {
            case .interactiveMotor, .builtInMotor, .mediumMotor, .trainMotor, .ledLight:
                return true
            default:
                return false
            }
        }
    }
    
    public final class MoveHubV1: Hub {
        
        public init() {}
        
        public var connectedIOs: [PortId : IOType] = [
            0x32: .rgbLight,
            0x37: .builtInMotor,
            0x38: .builtInMotor,
            0x39: .builtInMotor,
            0x3a: .tiltSensor,
            0x3b: .currentSensor,
            0x3c: .voltageSensor,
        ]
        
        public let portMap: [Port: PortId] = [
            .A:     0x37,
            .B:     0x38,
            .C:     0x01,
            .D:     0x02,
            .AB:    0x39,
        ]
        
        public func canSupportAsMotor(ioType: IOType) -> Bool {
            switch ioType {
            case .interactiveMotor, .builtInMotor, .mediumMotor, .trainMotor, .ledLight:
                return true
            default:
                return false
            }
        }
    }
}

//
//  MessagePart.swift
//  SoftU2F
//
//  Created by Benjamin P Toews on 2/7/17.
//

import Foundation

// Part of a APDU message (header/trailer).
public protocol MessagePart {
    init(reader: DataReader) throws
}

// Implement RawConvertible
extension MessagePart {
    public init(raw: Data) throws {
        let reader = DataReader(data: raw)
        try self.init(reader: reader)
    }
}

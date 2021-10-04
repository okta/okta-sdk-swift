//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-09-18.
//

import Foundation

extension String {
    func expanded(using: [String:OktaClientArgument]) -> String {
        using.reduce(self) { (string, argument) in
            string.replacingOccurrences(of: "{\(argument.key)}", with: argument.value.stringValue)
        }
    }
}

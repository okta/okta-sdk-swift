//
//  File.swift
//  
//
//  Created by Mike Nachbaur on 2021-09-18.
//

import Foundation

#if canImport(UIKit)
import UIKit
#endif

internal func deviceModel() -> String {
    var system = utsname()
    uname(&system)
    let model = withUnsafePointer(to: &system.machine.0) { ptr in
        return String(cString: ptr)
    }
    return model
}

extension String {
    func expanded(using: [String:OktaClientArgument]) -> String {
        using.reduce(self) { (string, argument) in
            string.replacingOccurrences(of: "{\(argument.key)}", with: argument.value.stringValue)
        }
    }
    
    static func userAgent() -> String {
        let device = "Device/\(deviceModel())"
        #if os(iOS)
        let os = "iOS/\(UIDevice.current.systemVersion)"
        #elseif os(watchOS)
        let os = "watchOS/\(UIDevice.current.systemVersion)"
        #elseif os(tvOS)
        let os = "tvOS/\(UIDevice.current.systemVersion)"
        #elseif os(macOS)
        let osVersion = ProcessInfo.processInfo.operatingSystemVersion
        let os = "macOS/\(osVersion.majorVersion).\(osVersion.minorVersion).\(osVersion.patchVersion)"
        #endif
        return "okta-sdk-swift/\(Version) \(os) \(device)"
    }
}

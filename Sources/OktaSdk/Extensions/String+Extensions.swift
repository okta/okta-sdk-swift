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

private let deviceModel: String = {
    var system = utsname()
    uname(&system)
    let model = withUnsafePointer(to: &system.machine.0) { ptr in
        return String(cString: ptr)
    }
    return model
}()

private let systemName: String = {
    #if os(iOS)
        return "iOS"
    #elseif os(watchOS)
        return "watchOS"
    #elseif os(tvOS)
        return "tvOS"
    #elseif os(macOS)
        return "macOS"
    #elseif os(Linux)
        return "linux"
    #endif
}()

private let systemVersion: String = {
    #if os(iOS) || os(watchOS) || os(tvOS)
        return UIDevice.current.systemVersion
    #else
        let osVersion = ProcessInfo.processInfo.operatingSystemVersion
        return "\(osVersion.majorVersion).\(osVersion.minorVersion).\(osVersion.patchVersion)"
    #endif
}()

extension String {
    func expanded(using: [String:OktaClientArgument]) -> String {
        using.reduce(self) { (string, argument) in
            string.replacingOccurrences(of: "{\(argument.key)}", with: argument.value.stringValue)
        }
    }
    
    static var userAgent: String {
        "okta-sdk-swift/\(Version) \(systemName)/\(systemVersion) Device/\(deviceModel)"
    }
}

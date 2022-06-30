//
// Copyright (c) 2021-Present, Okta, Inc. and/or its affiliates. All rights reserved.
// The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
//
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.
//

import Foundation
import AnyCodable

protocol JSONEncodable {
    func encodeToJSON() -> Any
}

extension Bool: JSONEncodable {
    func encodeToJSON() -> Any { self as Any }
}

extension Float: JSONEncodable {
    func encodeToJSON() -> Any { self as Any }
}

extension Int: JSONEncodable {
    func encodeToJSON() -> Any { self as Any }
}

extension Int32: JSONEncodable {
    func encodeToJSON() -> Any { NSNumber(value: self as Int32) }
}

extension Int64: JSONEncodable {
    func encodeToJSON() -> Any { NSNumber(value: self as Int64) }
}

extension Double: JSONEncodable {
    func encodeToJSON() -> Any { self as Any }
}

extension String: JSONEncodable {
    func encodeToJSON() -> Any { self as Any }
}

extension RawRepresentable where RawValue: JSONEncodable {
    func encodeToJSON() -> Any { self.rawValue as Any }
}

private func encodeIfPossible<T>(_ object: T) -> Any {
    if let encodableObject = object as? JSONEncodable {
        return encodableObject.encodeToJSON()
    } else {
        return object as Any
    }
}

extension Array: JSONEncodable {
    func encodeToJSON() -> Any {
        self.map(encodeIfPossible)
    }
}

extension Set: JSONEncodable {
    func encodeToJSON() -> Any {
        Array(self).encodeToJSON()
    }
}

extension Dictionary: JSONEncodable {
    func encodeToJSON() -> Any {
        var dictionary = [AnyHashable: Any]()
        for (key, value) in self {
            dictionary[key] = encodeIfPossible(value)
        }
        return dictionary as Any
    }
}

extension Data: JSONEncodable {
    func encodeToJSON() -> Any {
        self.base64EncodedString(options: Data.Base64EncodingOptions())
    }
}

extension Date: JSONEncodable {
    func encodeToJSON() -> Any {
        CodableHelper.dateFormatter.string(from: self) as Any
    }
}

extension URL: JSONEncodable {
    func encodeToJSON() -> Any {
        self
    }
}

extension UUID: JSONEncodable {
    func encodeToJSON() -> Any {
        self.uuidString
    }
}

extension AnyCodable: Hashable {
    // swiftlint:disable cyclomatic_complexity
    public func hash(into hasher: inout Hasher) {
        switch value {
        case let value as Bool:
            hasher.combine(value)
        case let value as Int:
            hasher.combine(value)
        case let value as Int8:
            hasher.combine(value)
        case let value as Int16:
            hasher.combine(value)
        case let value as Int32:
            hasher.combine(value)
        case let value as Int64:
            hasher.combine(value)
        case let value as UInt:
            hasher.combine(value)
        case let value as UInt8:
            hasher.combine(value)
        case let value as UInt16:
            hasher.combine(value)
        case let value as UInt32:
            hasher.combine(value)
        case let value as UInt64:
            hasher.combine(value)
        case let value as Float:
            hasher.combine(value)
        case let value as Double:
            hasher.combine(value)
        case let value as String:
            hasher.combine(value)
        case let value as [String: AnyCodable]:
            hasher.combine(value)
        case let value as [AnyCodable]:
            hasher.combine(value)
        default:
            hasher.combine(0)
        }
    }
    // swiftlint:enable cyclomatic_complexity
}

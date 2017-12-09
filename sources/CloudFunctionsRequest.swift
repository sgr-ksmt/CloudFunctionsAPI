//
//  CloudFunctionsRequest.swift
//  CloudFunctionsAPI
//
//  Created by suguru-kishimoto on 2017/12/09.
//  Copyright © 2017年 Suguru Kishimoto. All rights reserved.
//

import Foundation
import APIKit

public protocol CloudFunctionsRequest: Request {
    var user: CloudFunctionsAuth { get }
    var authFields: [String: String] { get }
    var originalHeaderFields: [String: String] { get }
}

extension CloudFunctionsRequest {
    var baseURL: URL {
        return CloudFunctionsAPI.Configuration.shared.baseURL
    }

    public var baseAuthFields: [String: String]  {
        return [
            AuthKeys.id: user.id,
            AuthKeys.token: user.cfToken,
        ]
    }

    var authFields: [String: String] {
        return baseAuthFields
    }

    var headerFields: [String : String] {
        let f = authFields
        return f.reduce(into: originalHeaderFields) { $0[$1.key] = $1.value }
    }
}

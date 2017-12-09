//
//  CloudFunctionsAuth.swift
//  CloudFunctionsAPI
//
//  Created by suguru-kishimoto on 2017/12/09.
//  Copyright © 2017年 Suguru Kishimoto. All rights reserved.
//

import Foundation

public protocol CloudFunctionsAuth {
    var id: String { get }
    var token: String { get }
}

public struct AuthKeys {
    private init() {}
    static let id = "auth-id"
    static let token = "auth-token"
}

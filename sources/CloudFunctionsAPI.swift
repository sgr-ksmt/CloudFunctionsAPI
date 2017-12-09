//
//  CloudFunctionsAPI.swift
//  CloudFunctionsAPI
//
//  Created by suguru-kishimoto on 2017/12/09.
//  Copyright © 2017年 Suguru Kishimoto. All rights reserved.
//

import Foundation

public class CloudFunctionsAPI {
    public class Configuration {
        open static let shared = Configuration()
        public var baseURL: URL = URL(string: "/")!

        public init() {
        }
    }
}

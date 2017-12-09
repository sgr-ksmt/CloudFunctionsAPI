//
//  DecodableDataParser.swift
//  CloudFunctionsAPI
//
//  Created by suguru-kishimoto on 2017/12/09.
//  Copyright © 2017年 Suguru Kishimoto. All rights reserved.
//

import Foundation
import APIKit

open class DecodableDataParser: DataParser {
    open var contentType: String? {
        return "application/json"
    }

    open func parse(data: Data) throws -> Any {
        return data
    }
}

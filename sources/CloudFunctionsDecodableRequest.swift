//
//  CloudFunctionsDecodableRequest.swift
//  CloudFunctionsAPI
//
//  Created by suguru-kishimoto on 2017/12/09.
//  Copyright © 2017年 Suguru Kishimoto. All rights reserved.
//

import Foundation
import APIKit

public protocol CloudFunctionsDecodableRequest: CloudFunctionsRequest where Response: Decodable {
    var decoder: JSONDecoder { get }
}

extension CloudFunctionsDecodableRequest {
    var dataParser: DataParser {
        return DecodableDataParser()
    }

    var decoder: JSONDecoder {
        return JSONDecoder()
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        return try decoder.decode(Response.self, from: data)
    }
}

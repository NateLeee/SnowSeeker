//
//  Bundle-Decodable.swift
//  SnowSeeker
//
//  Created by Nate Lee on 9/2/20.
//  Copyright © 2020 Nate Lee. All rights reserved.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else { fatalError("Failed to locate \(file) in bundle.") }
        
        guard let data = try? Data(contentsOf: url) else { fatalError("Failed to read data from \(url.absoluteString).") }
        
        guard let decoded = try? JSONDecoder().decode(T.self, from: data) else { fatalError("Failed to decode data.") }
        
        return decoded
    }
}

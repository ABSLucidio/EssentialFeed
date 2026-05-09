//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by l.barbosa.de.souza on 09/05/26.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

//
//  File.swift
//  
//
//  Created by Mazen DEKHIL on 26/02/2024.
//
public struct DFPConfiguration {
    public var merchantId: String 
    public var apiKey: String
    public init(merchantId: String, apiKey:String) {
        self.merchantId = merchantId
        self.apiKey = apiKey
    }
}

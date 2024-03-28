//
//  Created by Mazen DEKHIL on 28/03/2024.
//
import Foundation

public struct GetDeviceHashCommand {
    let apiKey : String
}
public class GetDeviceHash : UseCase {
    private var _gateway : FingerPrintGateway
    public typealias I = GetDeviceHashCommand
    public typealias O = String
    init(gateway : FingerPrintGateway){
        _gateway = gateway
    }
    public func execute(request: GetDeviceHashCommand?) async throws -> String{
        return try await _gateway.getDeviceHash(apiKey: request!.apiKey)
    }
}

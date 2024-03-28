//
//  Created by Mazen DEKHIL on 28/03/2024.
//
import Foundation
public class InMemoryDependencyContainer : DependencyContainer {
    let getDeviceHash: GetDeviceHash
       public init() {
           let inMemoryFingerPrintGateway = InMemoryFingerPrintGateway()
           getDeviceHash = GetDeviceHash(gateway: inMemoryFingerPrintGateway)
       }
}

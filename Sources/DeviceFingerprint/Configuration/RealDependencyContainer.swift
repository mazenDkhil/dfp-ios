//
//  Created by Mazen DEKHIL on 28/03/2024.
//
import Foundation

public class RealDependencyContainer : DependencyContainer {
    let getDeviceHash: GetDeviceHash
       public init() {
           let dfpFingerPrintGateway = DFPFingerPrintGateway()
           getDeviceHash = GetDeviceHash(gateway: dfpFingerPrintGateway)
       }
}

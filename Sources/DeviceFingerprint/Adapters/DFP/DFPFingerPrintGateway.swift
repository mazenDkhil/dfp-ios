//
//  Created by Mazen DEKHIL on 28/03/2024.
//

import Foundation
import FingerprintPro

public class DFPFingerPrintGateway : FingerPrintGateway{
    
    func getDeviceHash(apiKey: String) async throws -> String {
        let configuration = Configuration(
            apiKey: apiKey,
            region: Region.eu
        )
       var client = FingerprintProFactory.getInstance(configuration)
        
        do {
            let deviceHash = try await client.getVisitorId()
            return deviceHash
        } catch {
            throw DeviceFingerprintError.failedToGetDeviceHash
        }
    }
}

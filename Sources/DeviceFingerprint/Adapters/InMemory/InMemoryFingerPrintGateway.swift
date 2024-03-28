//
//  Created by Mazen DEKHIL on 28/03/2024.
//

import Foundation

public class InMemoryFingerPrintGateway : FingerPrintGateway{
    func getDeviceHash(apiKey: String) async throws -> String {
        return "FakeDeviceHash"
    }
}

//
//  Created by Mazen DEKHIL on 26/02/2024.
//
import Foundation
protocol FingerPrintGateway {
    func getDeviceHash(apiKey: String) async throws-> String
}


import Foundation

public struct DeviceFingerprint {
    private var apiKey: String?
    private var container: DependencyContainer
    public init(dfpConfiguration: DFPConfiguration) {
        self.container = DIContainer.shared
        self.apiKey = dfpConfiguration.apiKey
    }

    public func getDeviceHash() async throws {
        Task {
            do {
                let deviceHash = try await container.getDeviceHash.execute(request: GetDeviceHashCommand(apiKey: self.apiKey ?? ""))
               return deviceHash
            } catch{
                throw error
            }
        }
    }
}

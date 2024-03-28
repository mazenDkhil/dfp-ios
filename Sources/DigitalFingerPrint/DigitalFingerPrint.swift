import FingerprintPro

public struct DigitalFingerPrint {
    private var client: FingerprintClientProviding?
    
    public init(dfpConfiguration: DFPConfiguration) {
        let configuration = Configuration(
            apiKey: dfpConfiguration.apiKey,
            region: Region.eu
        )
        self.client = FingerprintProFactory.getInstance(configuration)
    }

    public func getDeviceHash() async {
        guard let client = self.client else {
            print("FingerprintProFactory client is not initialized.")
            return
        }
        
        do {
            let visitorId = try await client.getVisitorId()
            print(visitorId)
        } catch {
            print("FAILED TO GET DEVICE HASH")
        }
    }
}

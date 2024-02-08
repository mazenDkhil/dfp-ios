// The Swift Programming Language
// https://docs.swift.org/swift-book
import FingerprintPro

public struct DigitalFingerPrint {
 
    public func initSdk() async {
      
        let configuration = Configuration(
          apiKey: "RCSwyLohbl2J4z9GJ91F",
          region: Region.eu
        );
        let client = FingerprintProFactory.getInstance(configuration)

        do {
          let visitorId = try await client.getVisitorId()
          print(visitorId)
        } catch {

        }
    }
}

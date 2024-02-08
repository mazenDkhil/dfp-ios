// The Swift Programming Language
// https://docs.swift.org/swift-book
import FingerprintPro

public struct DigitalFingerPrint {
   
    public init() async {
      
        let configuration = Configuration(
          apiKey: "2QS3r072OajKcaVwizy8",
          region: Region.eu
        );
        let client = FingerprintProFactory.getInstance(configuration)

        do {
          let visitorId = try await client.getVisitorId()
          print(visitorId)
        } catch {
          // process error
        }
    }
}

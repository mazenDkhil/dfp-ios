//
//  Created by Mazen DEKHIL on 28/03/2024.
//
import Foundation

public class DIContainer : DependencyContainer {
    let getDeviceHash: GetDeviceHash
    static let shared = DIContainer()
    init(){
        let dependencyContainer = RealDependencyContainer()
        self.getDeviceHash = dependencyContainer.getDeviceHash
    }
}

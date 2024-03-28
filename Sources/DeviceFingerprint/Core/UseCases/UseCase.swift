//
//  Created by Mazen DEKHIL on 28/03/2024.
//

import Foundation
public protocol UseCase {
    associatedtype I
    associatedtype O
    func execute(request : I?) async throws -> O
}

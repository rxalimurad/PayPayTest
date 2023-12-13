import PassKit
import UIKit

@available(iOS 14.0, *)
class IssuerAuthorizationExtensionHandler: UIViewController, PKIssuerProvisioningExtensionAuthorizationProviding {
    var completionHandler: ((PKIssuerProvisioningExtensionAuthorizationResult) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up view and authenticate user.
    }

    func authenticateUser() {
        let userAuthenticated = true // User authentication outcome.
        
        let authorizationResult: PKIssuerProvisioningExtensionAuthorizationResult = userAuthenticated ? .authorized : .canceled

        self.completionHandler?(authorizationResult)
    }
}

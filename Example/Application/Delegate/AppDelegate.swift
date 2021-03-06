import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {

    override convenience init() {
        self.init(assembly: Container().appDelegateAssembly)
    }

    init(assembly: AppDelegateAssembly) {
        self.assembly = assembly
        super.init()
    }

    fileprivate let assembly: AppDelegateAssembly
    var window: UIWindow?

}

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = assembly.window
        let navigationController = assembly.navigationController
        navigationController.viewControllers = [assembly.rootViewController]
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }

}

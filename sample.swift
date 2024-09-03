import UIKit

// AppDelegate: アプリケーションのライフサイクルを管理する
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // UIWindowの初期化
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // メインとなるViewControllerの設定
        let mainViewController = ViewController()
        window?.rootViewController = mainViewController
        
        // ウィンドウを表示
        window?.makeKeyAndVisible()
        
        return true
    }
}

// ViewController: アプリのメイン画面を表示する
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 背景色を設定
        view.backgroundColor = .white

        // ラベルの設定
        let label = UILabel()
        label.text = "Hello, World!"
        label.textAlignment = .center
        label.frame = view.bounds

        // ラベルを画面に追加
        view.addSubview(label)
    }
}

// メインのエントリーポイント
UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(AppDelegate.self)
)

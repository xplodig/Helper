
import Foundation

class OnBoardingConfigrator {
    
   public static var isUserOnBoard: Bool {
        get {
            let value = UserDefaults.standard.value(forKey: "Onboard") as? Bool
            return value ?? false
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "Onboard")
        }
    }
}


class LoginConfigrator {
    
   public static var isUserLogedIn: Bool {
        get {
            let value = UserDefaults.standard.value(forKey: "logedin") as? Bool
            return value ?? false
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "logedin")
        }
    }
    
}

class SessionConfigrator {
    
   public static var userId: String {
        get {
            let value = UserDefaults.standard.value(forKey: "_Id") as? String
            return value ?? ""
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "_Id")
        }
    }
    
      static var userToken: String {
        get {
            let value = UserDefaults.standard.value(forKey: "_token") as? String
            return value ?? ""
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "_token")
        }
    }
    
}

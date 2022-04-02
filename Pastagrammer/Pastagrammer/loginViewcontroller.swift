//
//  loginViewcontroller.swift
//  Pastagrammer
//
//  Created by Shiv Patel on 4/1/22.
//

import UIKit
import Parse
class loginViewcontroller: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    


    @IBAction func onSignin(_ sender: Any) {
         let username = usernameField.text!
         let password = passwordField.text!
        PFUser.logInWithUsername(inBackground: username , password: password) { (user,error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginsegue", sender: nil)
            }else{
                print("Error:\(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.signUpInBackground { success, error in
            if success{
                self.performSegue(withIdentifier: "loginsegue", sender: nil)
            }else{
                print("Error:\(error?.localizedDescription)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

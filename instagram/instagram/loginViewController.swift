//
//  loginViewController.swift
//  instagram
//
//  Created by Shiv Patel on 3/26/22.
//
import Parse
import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var usernamefield: UITextField!
    @IBOutlet weak var passwordfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onsignin(_ sender: Any) {
        let username = usernamefield.text
            let password = passwordfield.text
            PFUser.logInWithUsername(inBackground: username!, password: password!)
             { (user, error) in
                if user != nil{
                        self.performSegue(withIdentifier: "loginSegue", sender: nil)
                } else {
                    print ("Error")

                }
             }}
            
    
        
    
    
    @IBAction func onsignup(_ sender: Any) {
        var user = PFUser()
        user.username = usernamefield.text
        user.password = passwordfield.text
        user.signUpInBackground{(success, Error )in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            print ("Error on sign up")

        }

    }
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

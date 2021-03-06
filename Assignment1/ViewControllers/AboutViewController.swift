//
//  AboutViewController.swift
//  Assignment1
//
//  Created by Qingqing Wu on 2021-02-05.
//

import UIKit

class AboutViewController: UIViewController {

    // Declaration of variables from interface builder
    @IBOutlet var lbInfo : UILabel!
    @IBOutlet var btAboutMe : UIButton!
    @IBOutlet var btAboutUs : UIButton!
    
    // Function of about me button clicked
    @IBAction func labelInfoAboutMeClicked(sender : UIButton){
        onClickAboutMe()
    }
    
    // Function of about us button clicked
    @IBAction func labelInfoAboutUsClicked(sender : UIButton){
        onClickAboutUs()
    }
    
    func onClickAboutMe(){
        lbInfo.text = "My name is Qingqing Wu, you are welcome to call me Mia. I am currently in SDNE program at Sheridan College. This is my first multipage app about wallpaper search. I really hope you will like it!"
    }
    
    func onClickAboutUs(){
        lbInfo.text = "Welcome to WalSearch! We provide you with wallpapers searching on Pexels website where gathers all types of wallpapers from talent creators"
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

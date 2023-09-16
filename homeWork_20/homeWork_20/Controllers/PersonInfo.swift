//
//  PersonInfo.swift
//  homeWork_20
//
//  Created by Евгений Лойко on 16.09.23.
//

import UIKit

class PersonInfo: UIViewController {
    
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        setPersonsInfo()
    }
    
    private func setPersonsInfo() {
        guard let name = person?.name,
              let surname = person?.surname,
              let phone = person?.number,
              let email = person?.email
        else { return }
        self.navigationItem.title = "\(name) \(surname)"
        phoneLbl.text = "Number: \(phone)"
        emailLbl.text = "Email: \(email)"
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

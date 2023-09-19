//
//  PersonsListTVC.swift
//  homeWork_20
//
//  Created by Евгений Лойко on 13.09.23.
//

import UIKit

class PersonsListTVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PersonsList.makePersonsList()
        self.navigationItem.title = "Persons List"
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        PersonsList.persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = PersonsList.persons[indexPath.row]
        cell.textLabel?.text = "\(person.name) \(person.surname)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 50 }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool { true }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            PersonsList.persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool { true }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentPerson = PersonsList.persons.remove(at: fromIndexPath.row)
        PersonsList.persons.insert(currentPerson, at: to.row)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let vc = segue.destination as? PersonInfo {
            vc.person = PersonsList.persons[indexPath.row]
        }
    }
}

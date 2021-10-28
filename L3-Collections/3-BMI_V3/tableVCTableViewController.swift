//
//  tableVCTableViewController.swift
//  3-BMI_V3
//
//  Created by Daksh Thapar on 23/4/21.
//

import UIKit

class tableVC: UITableViewController {
    let pd = data()
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokedex"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pd.pokemon.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = pd.pokemon[indexPath.row]
        cell.detailTextLabel?.text = pd.type[indexPath.row]
        cell.imageView?.image = UIImage(named: pd.image[indexPath.row])

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destVC = segue.destination as! infoVC
        // Pass the selected object to the new view controller.
        destVC.selectedRow = tableview.indexPathForSelectedRow?.row
    }
}

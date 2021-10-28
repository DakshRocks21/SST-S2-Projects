//
//  pickerVC.swift
//  3-BMI_V3
//
//  Created by Daksh Thapar on 23/4/21.
//

import UIKit

class pickerVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let pd = data()
    
    // outlets
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pd.pokemon.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pd.pokemon[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = pd.type[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Pokedex"
        pickerview.delegate = self
        pickerview.dataSource = self
        label.text = pd.type[0]
    }
        
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destVC = segue.destination as! infoVC
        // Pass the selected object to the new view controller.
        destVC.selectedRow = pickerview.selectedRow(inComponent: 0)
    }
}

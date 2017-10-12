import UIKit

class DoubleComponentPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    @IBOutlet weak var DoublePickerView: UIPickerView!
    private let fillingComponent = 0
    private let breadComponent = 1
    private let fillingTypes = ["Turkey", "Ham", "Steak"]
    private let breadTypes = ["111", "222", "333"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func OnButtonPressed(_ sender: UIButton) {
        let fillingRow = doublePicker.selectedRow(inComponent: fillingComponent)
        let breadRow = doublePicker.selectedRow(inComponent: breadComponent)
        
        let filling = fillingTypes[fillingRow]
        let bread = breadTypes[breadRow]
        let message = "You \(filling) on \(bread) bread will beright up"
        
        let alert = UIAlertController(title: "Thank u for order", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Great", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == breadComponent{
            return breadTypes.count
        } else{
            return fillingTypes.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ""
    }
}

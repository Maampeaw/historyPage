//
//  HistoryViewController.swift
//  HistoryPage
//
//  Created by user on 6/13/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    let customers = [HistoryModel(time: "2:00am", customer1: "Emmanuel Rockson", customer2: "Kwabena Uncle Ebo", amount: "500", contact: "0241234567", imageName: "MTN Mobile Money"), HistoryModel(time: "3:00pm", customer1: "Absa Bank", customer2: "", amount: "300", contact: "0556236739", imageName: "images"), HistoryModel(time: "4:30pm", customer1: "Kofi Nat", customer2: "Richard Branson", amount: "200", contact: "0556236739", imageName: "images")]

    @IBOutlet weak var dateButton: UIButton!{
        didSet{
            dateButton.layer.cornerRadius = 100
            dateButton.isEnabled = false
        }
    }
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar! {
        didSet{
            searchBar.layer.borderWidth = 1
            searchBar.layer.borderColor = UIColor.white.cgColor
            
        }
    }
    
    @IBOutlet weak var viewContainer: UIView!{
        didSet {
//            viewContainer.layer.borderWidth = 1
//            viewContainer.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        dateButton.layer.cornerRadius = 100
        dateButton.isEnabled = false
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let button = UIButton(frame: CGRect(x: width/4, y: height-180, width: 200, height: 70))
     
        button.backgroundColor = .green
        button.setTitle("SEND NEW",for: .normal)
//        let image = UIImage(systemName: "plus.circle.fill")
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 30, weight: .bold, scale: .large)
               
        let largeplusImg = UIImage(systemName: "plus.circle.fill", withConfiguration: largeConfig)
        button.setImage(largeplusImg, for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.layer.cornerRadius = 10
//        button.currentImage?.scale = 3
        button.backgroundColor = UIColor(red: 0.004, green: 0.80, blue: 0.70, alpha: 1)
        button.layer.shadowColor = UIColor.gray.cgColor
        button.layer.shadowOffset = .zero
        button.layer.shadowOpacity = 1.0;
       button.layer.shadowRadius = 3
        view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    

   
}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HistoryTableViewCell.self)) as! HistoryTableViewCell
        cell.thumbNail.image = UIImage(named: customers[indexPath.row].imageName)
        cell.name1.text = customers[indexPath.row].customer1
        cell.phoneNumber.text =  customers[indexPath.row].contact
        cell.timeLabel.text = customers[indexPath.row].time
        cell.name2.text = customers[indexPath.row].customer2
        cell.amount.text = String(format: "GHS %@", customers[indexPath.row].amount)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
}

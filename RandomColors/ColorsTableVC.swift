//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Klim Krivoguzov on 01.11.2022.
//

import UIKit

class ColorsTableVC: UIViewController {
    enum Cells{
        static let colorCell = "ColorCell"
    }
    
    enum Segues{
        static let toDetail = "ToColorsDetailVC"
    }
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor(amount: 200)
    }
    
    func addRandomColor(amount: Int){
        for _ in 0..<amount{
            colors.append( .random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}

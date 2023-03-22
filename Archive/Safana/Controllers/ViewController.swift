//
//  ViewController.swift
//  FixTableError
//
//  Created by Saffanah Alkhathlan on 27/08/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    
    let courses: [Course] = [
        Course( coursName: "Babka dough", coursImage: "Im1", coursLevel: " Intermediate", coursTime: "2h", coursDate:"19 Feb - 4:00" ),
        Course( coursName: "Cinnamon rolls", coursImage: "Im2", coursLevel: " Beginner", coursTime: "2h", coursDate:"19 Feb - 4:00" ),
        Course( coursName: "Japanese bread", coursImage: "Im3", coursLevel: "  Advanced", coursTime: "2h", coursDate:"19 Feb - 4:00"),
        Course( coursName: "Banana bread", coursImage: "Im4", coursLevel: " Intermediate", coursTime: "2h", coursDate:"19 Feb - 4:00" ),
        Course( coursName: "Babka dough", coursImage: "Im1", coursLevel: "  Intermediate  ", coursTime: "2h", coursDate:"19 Feb - 4:00" ),
        Course( coursName: "Cinnamon rolls", coursImage: "Im2", coursLevel: " Beginner", coursTime: "2h", coursDate:"19 Feb - 4:00" ),
        Course( coursName: "Japanese bread", coursImage: "Im3", coursLevel: "  Advanced", coursTime: "2h", coursDate:"19 Feb - 4:00"),
        Course( coursName: "Banana bread", coursImage: "Im4", coursLevel: " Intermediate", coursTime: "2h", coursDate:"19 Feb - 4:00" ),
    ]

    
    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self

    }

}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "coursesCell", for: indexPath) as! TableViewCell
        
        cell.courseImge.image = UIImage(named: courses[indexPath.row].coursImage)
        cell.courseName.text = courses[indexPath.row].coursName
        cell.courseLevel.text = courses[indexPath.row].coursLevel
        cell.courseDate.text = courses[indexPath.row].coursDate
        cell.courseTime.text = courses[indexPath.row].coursTime
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "courseCellDetails", sender: AnyObject.self)
        if let vc = storyboard?.instantiateViewController (identifier:
         "coursdetailsvc") as?
             coursdetailsvc{
 //           vc.img = UIImage (named: names[indexPath.row])
 //           vC.user_name = names [indexPath.row]
            vc.coursImage = UIImage(named: courses[indexPath.row].coursImage)!
            self.navigationController?.pushViewController(vc, animated:true)
            
        }
         
    }
    
    
}

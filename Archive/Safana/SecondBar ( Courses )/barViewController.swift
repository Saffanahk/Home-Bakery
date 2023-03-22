import UIKit

class barViewController: UIViewController {

let courseBarr : [courseBar] = [
courseBar(coursNamee: "Babka dough", coursImagee: "Im1", coursLevell: " Intermediate", coursTimee: "2h", coursDatee:"19 Feb - 4:00" ),
courseBar(coursNamee: "Japanese bread", coursImagee: "Im3", coursLevell: " Advanced", coursTimee: "2h", coursDatee:"19 Feb - 4:00"),
courseBar( coursNamee: "Banana bread", coursImagee: "Im4", coursLevell: " Intermediate", coursTimee: "2h", coursDatee:"19 Feb - 4:00" ),
courseBar(coursNamee: "Babka dough", coursImagee: "Im1", coursLevell: " Intermediate ", coursTimee: "2h", coursDatee:"19 Feb - 4:00" ),
courseBar(coursNamee: "Cinnamon rolls", coursImagee: "Im2", coursLevell: " Beginner", coursTimee: "2h", coursDatee:"19 Feb - 4:00" ),
courseBar(coursNamee: "Japanese bread", coursImagee: "Im3", coursLevell: " Advanced", coursTimee: "2h", coursDatee:"19 Feb - 4:00"),
courseBar(coursNamee: "Banana bread", coursImagee: "Im4", coursLevell: " Intermediate", coursTimee: "2h", coursDatee:"19 Feb - 4:00" ),

]

@IBOutlet weak var tableCourse: UITableView!

override func viewDidLoad() {
    super.viewDidLoad()
    tableCourse.dataSource = self
    tableCourse.delegate = self

    // Do any additional setup after loading the view.
}
}

extension barViewController: UITableViewDelegate, UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
courseBarr.count
}
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableCourse.dequeueReusableCell(withIdentifier: "coursesCell" , for: indexPath) as! tableBarCell
cell.imgBarCell.image = UIImage(named: courseBarr[indexPath.row].coursImagee)
cell.nameBarCell.text = courseBarr[indexPath.row].coursNamee
cell.levelBarCell.text = courseBarr[indexPath.row].coursLevell
cell.dateBarCell.text = courseBarr[indexPath.row].coursDatee
cell.timeBarCell.text = courseBarr[indexPath.row].coursTimee

    return cell
}

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //
}

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
// performSegue(withIdentifier: "barViewController", sender: AnyObject.self)
}

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    120
}
}

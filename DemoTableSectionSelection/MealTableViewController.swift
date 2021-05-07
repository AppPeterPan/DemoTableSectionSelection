//
//  FoodTableViewController.swift
//  DemoTableSectionSelection
//
//  Created by SHIH-YING PAN on 2021/5/7.
//

import UIKit

class MealTableViewController: UITableViewController {

    let mealCourses = MealCourse.data
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return mealCourses.count
    }
    
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mealCourses[section].names.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mealCourses[section].category.rawValue
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCourseCell", for: indexPath)
        let mealCourse = mealCourses[indexPath.section]
        cell.textLabel?.text = mealCourse.names[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if let selectIndexPathInSection = tableView.indexPathsForSelectedRows?.first(where: {
            $0.section == indexPath.section
        }) {
            tableView.deselectRow(at: selectIndexPathInSection, animated: false)

        }
        return indexPath
        
    }
}

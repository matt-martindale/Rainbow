//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Matthew Martindale on 1/28/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {


        
        //ROY G BIV
        var colors: [MyColor] = [
            MyColor(name: "Red", color: .red),
            MyColor(name: "Orange", color: .orange),
            MyColor(name: "Yellow", color: .yellow),
            MyColor(name: "Green", color: .green),
            MyColor(name: "Blue", color: .blue),
            MyColor(name: "Indigo", color: .cyan),
            MyColor(name: "Violet", color: .purple)
        ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    //index path (x = section, y = row)
    //First row of a tableView (0, 0), (0, 1)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}

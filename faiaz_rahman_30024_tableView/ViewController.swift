//
//  ViewController.swift
//  faiaz_rahman_30024_tableView
//
//  Created by bjit on 6/12/22.
//

import UIKit



class ViewController: UIViewController {
    

    @IBOutlet weak var tableViewX: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewX.dataSource = self
        tableViewX.delegate = self
        
        let nib = UINib(nibName: "CustomNibCell", bundle: nil)
        
        tableViewX.register(nib, forCellReuseIdentifier: "idOfNib")
        
        
    }


}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return Dog.dog.count
        }
        else if section == 1{
            return Cat.cat.count
        }
        else{
            return Bird.bird.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            
            let dogName = Dog.dog[indexPath.row].name
            let imgId = Dog.dog[indexPath.row].imgId

            
            let cell = tableViewX.dequeueReusableCell(withIdentifier: "customCellStyle", for: indexPath) as! CustomTableViewCell
            
            cell.imageFrameX.image = UIImage(named: imgId)
            cell.txtLabelX.text = dogName
            

            
            return cell
        }
        else if indexPath.section == 1{
            

            let catName = Cat.cat[indexPath.row].name
            let imgId = Cat.cat[indexPath.row].imgId

            
            let cell = tableViewX.dequeueReusableCell(withIdentifier: "customCS2", for: indexPath) as! CustomTVC
            
            cell.imageFrameXX.image = UIImage(named: imgId)
            cell.txtLabelXX.text = catName

            return cell
        }
        
        else if indexPath.section == 2{
            
                        let birdName = Bird.bird[indexPath.row].name
                        let imgId = Bird.bird[indexPath.row].imgId

                        
                        let cell = tableViewX.dequeueReusableCell(withIdentifier: "customCS3", for: indexPath) as! CustomTVC3
                        
                        cell.imageFrameXXX.image = UIImage(named: imgId)
                        cell.txtLabelXXX.text = birdName

                        return cell
        }
        else{
            let dragonName = Dragon.dragon[indexPath.row].name
            let imgId = Dragon.dragon[indexPath.row].imgId

            
            let cell = tableViewX.dequeueReusableCell(withIdentifier: "idOfNib", for: indexPath) as! CustomNibCell
            
            cell.nibImageFrame1.image = UIImage(named: imgId)
            cell.nibImageFrame2.image = UIImage(named: imgId)
            cell.nibTextLabel.text = dragonName
            
            return cell
        }

        
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segueWay", sender: self)
        print(indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
            if segue.identifier == "segueWay"{
                
                
                
                let index = tableViewX.indexPathForSelectedRow
               
                
                if let destinationVC = segue.destination as? SecondVC{
                    
                    if index!.section == 0{
                        destinationVC.currentImage = Dog.dog[index!.row].imgId
                        destinationVC.currentText = Dog.dog[index!.row].name
                    }
                    if index!.section == 1{
                        destinationVC.currentImage = Cat.cat[index!.row].imgId
                        destinationVC.currentText = Cat.cat[index!.row].name
                    }
                    if index!.section == 2{
                        destinationVC.currentImage = Bird.bird[index!.row].imgId
                        destinationVC.currentText = Bird.bird[index!.row].name
                    }
                    if index!.section == 3{
                        destinationVC.currentImage = Dragon.dragon[index!.row].imgId
                        destinationVC.currentText = Dragon.dragon[index!.row].name
                    }
                    
            }
        }
    
    
    }
    
}


//
//  ViewController.swift
//  Task
//
//  Created by Mac on 8/25/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private var newsModel : [NewModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTableView()
        sendNetworkRequest()
    }
    func setUpTableView(){
        //self.tableView.register("NewCell", forCellReuseIdentifier: NewCell.self)
        self.tableView.rowHeight =  UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 113
       
    }
    func sendNetworkRequest(){
        NewsManager.sharedInstance.fetchNews(url:"http://srvc.moe.edu.kw/mymoe/moe/news") {
            (success, response) in
            if success {
//                print("\(response)")
                if response.count > 0  && !response.isEmpty {
                    self.newsModel = response
                    print("\(self.newsModel!)")
                    self.tableView.delegate = self
                    self.tableView.dataSource = self
                    self.tableView.reloadData()
                }
            }
        }
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsModel!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell", for: indexPath) as! NewCell
        // draw line
        let lineView = UIView(frame: CGRect(x:0,
                                            y:  cell.frame.height - 1 ,
                                            width: self.view.frame.width,
                                            height: 0.7
            )
        )
        
        cell.conigureCell(shortTitle: (newsModel?[indexPath.row].shortTitle)!, newsDate:  (newsModel?[indexPath.row].newsDate)!, photoLink: (newsModel?[indexPath.row].newsLogo)!)
        lineView.backgroundColor = .darkGray
        cell.contentView.addSubview(lineView)
        return cell

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return   UITableView.automaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell", for: indexPath) as! NewCell
//        // draw line
//        let lineView = UIView(frame: CGRect(x:0,
//                                            y:  cell.frame.height - 1 ,
//                                            width: self.view.frame.width,
//                                            height: 0.7
//            )
//        )
//
//        let news_model = newsModel[indexPath.row]
//        print("\(news_model)")
//        cell.conigureCell(newsModel: news_model)
//        lineView.backgroundColor = .black
//        cell.contentView.addSubview(lineView)
//        return cell
//
//
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return newsModel.count
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
//
    
}


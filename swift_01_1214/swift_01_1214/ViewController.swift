//
//  ViewController.swift
//  swift_01_1214
//
//  Created by peng on 2020/12/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let name = "world"
//        if name == "world" {
//            print("-----\(name)")
//        }
        
        let names = ["Anna","Alex","Brian","Jack"]
        for i in 0..<names.count {
            print("Person \(i + 1) is called \(names[i])")
        }
        
        
        for name in names[..<2] {
            print("++++\(name)")
        }
        
        let urlStr = "http://10.166.20.25:8080/option/biz/ip.html?qqq=sss&www=eee&rrr=ddd"
        let url  = NSURL(string: urlStr)
        print("---\(String(describing: url?.host))----\(String(describing: url?.path))----\(String(describing: url?.port))----\(String(describing: url?.query))")
        
        let port = String(describing: url?.port)
        let array = urlStr.components(separatedBy: port)
        print("====\(array)")
        
        if #available(iOS 15.0, *) {
            print("=======")
        }else{
            print("----====")
        }
        someFunction(firstParameterName: 2, secondParameterName: 2)
        someFunction2(www: 1, ssss: 1)
        
        

        var someInt = 3
        var anotherInt = 107
        swapTwoInts(&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        
        
        test { (result) in
            print(result)
        }
    }

    func someFunction(firstParameterName: Int, secondParameterName: Int) { //形式参数标签
        print("-----")
    }
    
    func someFunction2(www firstParameterName: Int,ssss secondParameterName: Int) { //www ssss 实际参数标签
        print("-----")
    }
    
    func swapTwoInts(_ a: inout Int, _ b: inout Int) { //inout 如果你想函数能够修改一个形式参数的值，而且你想这些改变在函数结束之后依然生效
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    
    
    func test(callback:(String) -> Void) {
        callback("result")
    }

}


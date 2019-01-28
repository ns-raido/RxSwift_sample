//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by raido doi on 2019/01/28.
//  Copyright © 2019 raido. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

// watcher??
let disposeBag = DisposeBag()

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // orEmptyでStringのみ許容
        textFiled.rx.text.orEmpty
            // map内に受け取った値の処理を書く？？
            // descriptionでStringに変換？？
            .map {$0.description}
            // labelとバインド
            .bind(to: label.rx.text)
            // 監視終了？？
            .disposed(by: disposeBag)
    }


}


//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 안병호 on 2022/03/21.
//

import UIKit

class ViewController: UIViewController {
    
//   Instance Variable
    var currentValue = 0
    
    
//   outlet 연결하기
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        priceLabel.text = "₩ \(currentValue)"
//        outltet 연결한것에 전역변수처럼 적용시켜주기?
//        아직 해당 메소드의 설명을 듣지 못하였음
        
//        Initialize Price
        refresh()
        
    }

//    action 연결하기
    @IBAction func showAlert(_ sender: Any) {
//       Local Variable
        let message = "가격은 \(currentValue) 입니다. "
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
//        closure 활용, OK 버튼이 눌렸을때 가격이 변동하도록 수정, comprehension 처럼 생각하면 될듯? 아니면 kwarg 라고 생각하면 될듯
        let action = UIAlertAction(title: "OK", style: .default,  handler: {action in self.refresh()})
//        nil ->  null, 아무런 handle 해주지 않는다.
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
//    메소드 생성, 중복코드를 제거, 한가지 일만 하는 메소드 작성
    func refresh(){
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "₩ \(currentValue)"
    }
    
//    option키를 누르고 변수 및 상수를 클릭해보면 해당 변수의 typehint를 알 수 있다.(Swift의 기능)
//    closure 실행 가능한 실행 블럭 { }
    
//    IOS는 기기마다 다른 이미지 해상도를 지원해줘야한다?
//    아이폰 4는 1x이미지, 아이폰 7은 2x 이미지, 아이폰 Promax는 3x 이미지
//    대부분은 2x, 3x만 지원해도 자유롭게 표현이 가능하다.
    
//    Auto Layout 디바이스마다 일관성 있는 레이아웃 스타일링을 해주는것
//    View Controller 왼쪽 사이드바에서 컨트롤을 누르고 드래그앤 드롭으로 View에다 끌어다 놓으면 어떤 항목을 오토 레이아웃 해야하는지 보여준다.
//    Preview를 보면서 다른 디바이스에서 동일한 환경에서 디자인을 제공하는지 확인해주고
//    위치값을 적용해야지 오토레이아웃이 적용이 됨을 알 수 있다.
    
//    앱 아이콘 적용하기
//    App Icon Generator 사이트로 가서 큰 사이즈로 작은 사이즈로 변경하는 작업을 하면 되겠다
    
    
     
}


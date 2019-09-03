import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       let result = twoSum(numbers: [2, 7, 11, 15,3,10,8],target: 18)
        print("\(result)")
    }
    
    func twoSum(numbers:[Int],target:Int)->[[Int]]{
        if (numbers.count == 0) return [];
        var result = [[Int]]()
        var numMap = [Int : Int]()
        for i in 0..<numbers.count{
            let another = target - numbers[i]
            let targetIndex = numMap[another]
            if (targetIndex != nil){
                result.append([targetIndex!,i])
            }
            numMap[numbers[i]] = i;
        }
        return result;
    }

}
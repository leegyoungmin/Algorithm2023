func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return n == num_list.count ? num_list : Array(num_list[n...num_list.count - 1] + num_list[0...n - 1])
}

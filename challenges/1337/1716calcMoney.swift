// Hercy wants to save money for his first car. He puts money in the Leetcode bank every day.
// He starts by putting in $1 on Monday, the first day. Every day from Tuesday to Sunday, he will put in $1 more than the day before. On every subsequent Monday, he will put in $1 more than the previous Monday.
// Given n, return the total amount of money he will have in the Leetcode bank at the end of the nth day.
class Solution {
    func totalMoney(_ n: Int) -> Int {
        var i = 0
        var week = 0
        var sum = 0
        while i < n {
            if i % 7 == 0 {
                week += 1
            }
            sum += week + (i % 7)
            i += 1
        }
        return sum
    }
}
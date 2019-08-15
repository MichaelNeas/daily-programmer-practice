/// Given an array A of integers, for each integer A[i] we may choose any x with -K <= x <= K, and add x to A[i].
/// After this process, we have some array B.
/// Return the smallest possible difference between the maximum value of B and the minimum value of B.
class Solution {
    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
        return max(0, A.max()! - A.min()! - 2 * K)
    }
}
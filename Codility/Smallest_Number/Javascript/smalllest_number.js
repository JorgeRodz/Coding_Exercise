a = [1, 2, 3];
b = [-1, -3];

console.log(solution(a));
console.log(solution(b));

function solution(A) {
  let result = 1;
  A.sort((a, b) => a - b);
  for (let i = 0; i < A.length; i++) {
    if (A[i] === result) {
      result++;
    }
  }
  return result;
}

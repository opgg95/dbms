package test2;

public class Main01 {

	public static void main(String[] args) {
 /*배열 arr에 담긴 모든 값을 더하는 프로그램을 완성하시오.(10)
	(생성된 테이블의 목록ㆍ테이블의 인덱스와 뷰를 파악하기 위해 데이터사전을 조회하는 명령문을 작성할 수 있다.)
	[배열]
	int[] arr = {10, 20, 30, 40, 50};
	[출력 결과]

	sum=150
  * 
  */
		int [] num = new int [] { 10, 20, 30, 40, 50};
		int sum = 0;
		
		for(int i= 0; i < num.length; i++) {
			sum += num[i];
		}
		System.out.println("sum = " + sum );
	}

}

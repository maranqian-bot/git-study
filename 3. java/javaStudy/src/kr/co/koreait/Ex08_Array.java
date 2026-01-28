package kr.co.koreait;

import java.util.Arrays;
import java.util.Comparator;

public class Ex08_Array {

	public static void main(String[] args) {
		// 배열(Array)
		// - 같은 자료형을 가진 값들을 하나의 변수로 관리함
		
		//요소(Element)
		// -배열에 들어간 각각의 값들을 요소라고 표현
		
		//인덱스(Index)
		// -배열의 요소에 접근하기 위해 사용되는 번호(요소의 위치를 의미함)
		// - 인덱스는 0부터 시작
		
		int[] arr = new int[4]; //4만큼의 크기를 가진 배열 생성
		
		arr[0] = 10; // 0번 인덱스에 10을 넣겠다
		arr[1] = 20; 
		arr[2] = 30;
		arr[3] = 40;
		
		System.out.println("0번 인덱스 조회 : " + arr[0]); // 0번 인덱스의 요소를 조회하겠다
		System.out.println("1번 인덱스 조회 : " + arr[1]); 
		System.out.println("2번 인덱스 조회 : " + arr[2]); 
		System.out.println("3번 인덱스 조회 : " + arr[3]); 
		
		
		System.out.println("--------for문로 간편하게 배열안에 있는 값 순서대로 꺼내------");
		for(int num : arr) {
			System.out.println(num);
		}
		
		
		
		
//		int[] numbers = new int[10];
		
		// 배열의 요소에 랜덤 숫자 넣기
//		for(int i=0; i<numbers.length; i++) {
//			numbers[i] = (int)(Math.random() * 30) + 1;
//			System.out.println(numbers[i]); // 배열의 욧 1개씩 꺼내서 출력하기
// 		}
//		
		
		// 배열의 욧 1개씩 꺼내서 출력하기
//		for(int i=0; i<numbers.length; i++) {
//			System.out.println(numbers[i]);
//		}
//		
		
		System.out.println("-------------랜덤 숫자 짝수의 합 구하기----------");
		// 배열의 요소 1개씩 꺼내서 짝수인것만 sum에 저장(합계)
		int[] numbers = new int[10]; // 인덱스 10개 있는 배열 생성
		int sum = 0; // 출력할 변수
		for(int i=0; i<numbers.length; i++) {
			numbers[i] = (int)(Math.random() * 30) + 1; // 랜덤 숫자 생성
			//System.out.println(numbers[i]); // 배열의 욧 1개씩 꺼내서 출력하기( 확인 필요 시 )
			if(numbers[i] % 2 == 0) { //짝수인지 판단하기
				sum += numbers[i]; // 출력 값 연산
				
			}
		}
		System.out.println(sum); // 최종 값 출력
		
		
		int[] nums = {3, 1, 6, 2, 3, 7, 9};
		System.out.println("첫 번째 요소 : " + nums[0]);
		System.out.println("마지막 요소 : " + nums[nums.length -1]);
		
		
		System.out.println("-------------nums 배열에서 가장 큰 값과 가장 작은 값 구하기----------");
		// nums 배열에서 가장 큰 값과 가장 작은 값 구하기

//		int min = nums[0];
//		int max = nums[0];
		
		int min = Integer.MAX_VALUE; // +21억 // 위에 거 이거로 대채해도 좋음
		int max = Integer.MIN_VALUE; // -21억
		
		for(int i=0; i<nums.length; i++) {
			if(nums[i]> max) {
				max = nums[i];	
			}
			
			if(nums[i]<min) {
				min = nums[i];
			}
		}
		System.out.println("가장 작은 값은 : " + min);
		System.out.println("가장 큰 값은 : " + max);
		
		System.out.println("---------반복문 없이 배열의 값들을 문자열 형태로 출력해주는 메서드---------");
		// ---------------------------------------------------
		// Arrays.toString()
		// - 반복문 없이 배열의 값들을 문자열 형태로 출력해주는 메서드
		int[] numbers2 = {4, 2, 3, 1, 7, 5};
		
		System.out.println(Arrays.toString(numbers2));
		
		
		System.out.println("----------배열에 있는 요소들 정렬해주는 메서드(오름차순)-------------");
		//Arrays.sort()
		// - 배열에 있는 요소들 정렬해주는 메서드
		Arrays.sort(numbers2); // 오름차순 정렬
		System.out.println(Arrays.toString(numbers2));
		
		System.out.println("----------배열에 있는 요소들 정렬해주는 메서드(내림  차순)-------------");
		Integer[] numbers3 = {4, 2, 3, 1, 7, 5};
		Arrays.sort(numbers3,Comparator.reverseOrder()); 
		System.out.println(Arrays.toString(numbers3));
		
		
		System.out.println("--------얕은 복사-------------");
		// -------------------------------
		// 얕은 복사
		// - 배열의 주소 값만 가져와 참조하는 방식
		// - 하나의 배열 객체를 두 변수가 함께 공유함
		// -> 복사된 배열에서 수정하면 원본 배열도 영향을 받음
		int[] arrCopy1 = new int[3];
		int[] shallowCopy = arrCopy1;
		
		shallowCopy[1] = 999;
		System.out.println(Arrays.toString(arrCopy1));
		System.out.println(Arrays.toString(shallowCopy));
		
		System.out.println("--------깊은 복사-------------");
		// 깊은 복사
		// - 새로운 배열 객체를 생성하고 기존의 배열 데이터를 복사하는 방식
		int[] arrCopy2 = {1, 2, 3};
		int[] deepCopy = new int[arrCopy2.length];
		
//		deepCopy[0] = arrCopy2[0];
//		deepCopy[1] = arrCopy2[1];
//		deepCopy[2] = arrCopy2[2];
		
		
		//System.arraycopy(복사할 원본 배열,  복사를 시작할 위치,  저장할 배열,  저장을 시작할 위치,  복사할 요소의 수);
		//System.arraycopy(arrCopy2, 0, deepCopy, 0, arrCopy2.length);
		         
		int[] arrCopy3 = {1, 2, 3};
		int[] deepCopy3 = Arrays.copyOf(arrCopy3,  arrCopy3.length);
		
	}
}


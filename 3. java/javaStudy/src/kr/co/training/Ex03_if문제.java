package kr.co.training;

import java.util.Scanner;

public class Ex03_if문제 {

	public static void main(String[] args) {
//		Q1. 점수를 입력받아 60점 이상이면 "합격", 아니면 "불합격" 출력
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자 : ");
		int inputNumber = sc.nextInt();
		if (inputNumber > 60) {
			System.out.println("합격");
		}else {
			System.out.println("불합격");
		}
		
//
//		Q2. 정수 하나를 입력받아 짝수인지 홀수인지 출력
		Scanner sc1 = new Scanner(System.in);
		System.out.println("숫자 : ");
		int inputNumber2 = sc1.nextInt();
		if(inputNumber2 / 2 == 1) {
			System.out.println("짝수");
		}else {
			System.out.println("홀수");
		}
		
		
//
//		Q3. 나이를 입력받아 20세 이상이면 "성인", 아니면 "미성년자" 출력
		Scanner sc2 = new Scanner(System.in);
		System.out.println("숫자 : ");
		int inputNumber3 = sc2.nextInt();
		if (inputNumber3 >= 20) {
			System.out.println("성인");
		}else {
			System.out.println("미성년자");
		}
//
//		Q4. 비밀번호가 "1234"이면 "로그인 성공", 아니면 "로그인 실패" 출력
		Scanner sc3 = new Scanner(System.in);
		System.out.println("비밀번호 : ");
		int pwd = sc3.nextInt();
		if(pwd == 1234) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
//
//		Q7. 나이를 입력받아 요금 출력
//		 - 12세 이하 : 3,000원
//		 - 18세 이하 : 5,000원
//		 - 19세 이상 : 10,000원
		Scanner sc4 = new Scanner(System.in);
		System.out.println("나이 : ");
		int age = sc4.nextInt();
		if(age >= 19) {
			System.out.println("10,000원");
		}else if (age >12 && age <= 18) {
			System.out.println("5,000원");
		}else if(age <= 12) {
			System.out.println("3,000원");
		}
		
//
//		Q8. 아이디와 비밀번호를 입력받아 아이디가 "admin"이고 비밀번호가 "1234"면 관리자 로그인 성공
		Scanner sc5 = new Scanner(System.in);
		System.out.println("아니디 : ");
		String id = sc5.nextLine();
		Scanner sc6 = new Scanner(System.in);
		System.out.println("비밀번호 : ");
		String pwd2 =sc6.nextLine();
		String id2 = "admin";
		String pwd3 = "1234"; 
		if (id .equals(id2) && pwd2 .equals(pwd3)) {
			System.out.println("성공");
		}else;
		
		
//
//		Q9. 점수와 결석 여부를 입력받아 결과 출력
//		 - 결석 여부는 true, false로 받음
//		 - 결석이면 무조건 F
//		 - 90 이상 A
//		 - 80 이상 B
//		 - 70 이상 C
//		 - 그 외 F
		
		Scanner sc8 = new Scanner(System.in);
		System.out.println("결석 여부 : ");
		String attendance = sc8.nextLine();
		Scanner sc7 = new Scanner(System.in);
		System.out.println("점수 : ");
		int score = sc7.nextInt();
		String attendance1 = "true";
		String attendance2 = "false";
		if(attendance .equals(attendance2)) {
			System.out.println("F");
		}else if(attendance .equals(attendance1) && score >= 90) {
			System.out.println("A");
		}else if(attendance .equals(attendance1) && score < 90 && score >= 80) {
			System.out.println("B");
		}else if(attendance .equals(attendance1) && score < 80 && score >= 70) {
			System.out.println("C");
		}else {
			System.out.println("F");
		}
		// ppt 확인 필요!!!!!!!!!!!!!!!!!!!!!!!!
		
//
//		Q10. 스캐너로 사용자로부터 몇 월인지 입력 받으세요.
//		  - 해당하는 계절과 출력 메시지는 아래와 같습니다.
//		  - 3, 4, 5 : 봄
//		  - 6, 7, 8 : 여름
//		  - 9, 10, 11 : 가을
//		  - 12, 1, 2 : 겨울
//		  - 그 외 : 해당하는 계절이 없습니다.
//		        ex) 1을 입력 받을 경우 “겨울” 출력
//		             위의 예시를 활용하여 OR 연산자 또는 AND 연산자를 활용하여 문제를 풀어보세요.
		Scanner sc9 = new Scanner(System.in);
		System.out.println("몇 월 :");
		int month = sc9.nextInt();
		if(month == 3 || month == 4 || month == 5) {
			System.out.println("봄");
		}else if(month == 6 || month == 7 || month == 8) {
			System.out.println("여름");
		}else if(month == 9 || month == 10 || month == 11) {
			System.out.println("가을");
		}else if(month == 12 || month == 1 || month == 2) {
			System.out.println("겨울");
		}else {
			System.out.println("해당하는 계절이 없습니다.");
		}
//


	}

}

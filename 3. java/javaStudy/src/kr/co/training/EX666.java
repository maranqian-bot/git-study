package kr.co.training;

import java.util.Scanner;

public class EX666 {

	public static void main(String[] args) {
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
	
	
	}

}

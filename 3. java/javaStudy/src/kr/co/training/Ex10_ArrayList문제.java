package kr.co.training;

import java.util.ArrayList;
import java.util.Scanner;

public class Ex10_ArrayList문제 {

	public static void main(String[] args) {
		// Q1. 6의 배수만 리스트에 추가하세요
		// - 리스트 이름 : Q1
		// -들어가는 값들의 타입은 숫자
		// - 1~200사이의 6의 배수만 리스트 Q1에 추가

		ArrayList<Integer> intList = new ArrayList<>();
		for (int i = 1; i <= 200; i++) {
			if (i % 6 == 0) {
				intList.add(i);
			}
		}
		System.out.println(intList);

		// Q2. 학생 정보를 저장하기 위한 ArrayList를 생성하세요

		// - 프로그램을 아래와 같은 메뉴를 사용자로부터 입력받습니다
		// > "1. 학생 추가"
		// > "2. 학생 목록 조회 "
		// > "3. 프로그램 종료"
		// > " 메뉴 입력 :"
		// - 1번 입력 시 사용자로부터 핵생의 이름을 입력 받고 ArrayList에 추가
		// - 2변 입력 시 ArrayList에 저장된 모든 학생의 이름 출력
		// - 3번 입력 시 " 프로그램을 종료합니다" 출력 후 종료
		ArrayList<String> student = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		int menu = -1;
		
		while(menu != 0) {
			System.out.println("1.학생 추가");
			System.out.println("2.특정 학생 제거");
			System.out.println("3.학생 목록 조회");
			System.out.println("0.프로그램 종료");
			System.out.println("메뉴 입력");
			menu = sc.nextInt();
			sc.nextLine();
			
			if (menu == 1) {
				System.out.println("학생 이름을 입력하세요.");
				String studentName = sc.nextLine();
				student.add(studentName);
			} else if (menu == 2) {
				// 제거할 학생의 이름을 입력받고 그 학생을 제거
				System.out.println("삭제 하고 싶은 학생 이름을 입력하세요.");
				String removeName = sc.nextLine();
			
				for(int i=0;i< student.size();i++) {
					student.get(i);
					if(removeName .equals(student.get(i))) {
						student.remove(i);
					}
				}
				
			} else if (menu == 3) {
				System.out.println(student);
				continue;
			} else {
				System.out.println("프로그램을 종료합니다");
			}
		}

//	switch(choice) {
//		case 1:
//			System.out.println("학생 이름을 입력하세요.");
//		    String studentName = sc.nextLine();
//			Student.add(studentName); 
//		break;
//		case 2:
//			System.out.println(Student);
//	break;
//		case 3:
//		System.out.println("프로그램을 종료합니다");
//		break;	
//	}

		// 위의 프로그램은 사용자가 종료를 선택할 때 까지 반복합니다
		// 리스트 이름 : student

	}
}
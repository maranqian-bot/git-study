package kr.co.training;

import java.util.HashMap;
import java.util.Scanner;

public class Ex12_HashMap문제 {

	public static void main(String[] args) {
		
		// "이름" : "전화번호" 형태의 phoneBook이라는 HashMap을 생성
		HashMap<String,String> phoneBook = new HashMap<>();
		Scanner sc = new Scanner(System.in);
		boolean isTrue = true;
		
		while(isTrue) {
			System.out.println("1. 전화번호 추가");
			System.out.println("2. 전화번호 검색");
			System.out.println("3. 전화번호 전체 검색");
			System.out.println("4. 전화번호 삭제");
			System.out.println("0. 프로그램 종료");
			System.out.println("메뉴 입력 : ");
			// 
			int menu = sc.nextInt();
			sc.nextLine();
			
			
			// 1번 입력 시
			// - 사용자로부터 이름과 전화번호를 입력받습니다
			// - 입력받은 이름을 키로, 전화번호를 값으로 phoneBook에 저장
			// - " ooo의 전화번호를 저장했습니다." 출력
			
		
			if (menu == 1) {
				System.out.println("저장할 이름를 입력하세요.");
				String name = sc.nextLine();
				System.out.println(" 저장할 전화 번호를 입력하세요.");
				String number = sc.nextLine();
				phoneBook.put(name,number);
				System.out.println(name + "의 전화번호를 저장했습니다.");
			} else if(menu == 2) {
				System.out.println("검색할 이름를 입력하세요.");
				String checkName = sc.nextLine(); 
				if(phoneBook.get(checkName) != null) {
					System.out.println(checkName + "의 전화번호는 " + phoneBook.get(checkName));
				}else {
					System.out.println(checkName + "의 전화번호를 찾을 수 없습니다. ");
				}
				
			}else if(menu == 3) {
				for(String key : phoneBook.keySet()) {
					System.out.println("이름 : " + key + ", 전화번호 : " + phoneBook.get(key));
				}
			}else if(menu == 4) {
				System.out.println("삭제할 이름를 입력하세요.");
				String removeName = sc.nextLine(); // 짱구
				if(phoneBook.get(removeName) != null) {
					phoneBook.remove(removeName);
					System.out.println(removeName + "의 전화번호를 삭제했습니다. ");
				}else {
					System.out.println(removeName + "의 전화번호를 찾을 수 없습니다. ");
				}
			}else if(menu == 0) {
				System.out.println("프로그램을 종료합니다.");
				isTrue = false;
			}else {
				System.out.println("올바른 메뉴를 입력하세요.");
			} 
			
			// 2번 입력 시 
			// - 사용자로 부터 검색할 이름을 입력받습니다
			// - phoneBook에 일치하는 이름이 있다면
			// > "OOO의 전환번호는ooo-oooo-oooo 입니다." 출력
			// - phoneBook에 일치하는 이름이 없다면
			// > "ooo의 전화번호를 찾을 수 없습니다. " 출력
			
			// 3번 입력 시 
			// - phoneBook에 존재한 모든 목록을 출력
			// > " 이름 : ooo, 전화번호 : ooo-oooo-oooo"
			
			// 4번 입력 시 
			// - 사용자로 부터 삭제할 이름을 입력 받습니다
			// phonBook에 일치 하는 이름이 있다면
			// > phoneBook에서 해당 이름을 가진 전화번호 제거 후
			// "ooo의 전화번호를 삭제했습니다. " 출력
			//  - phoneBook에 일치하는 이름이 없다면
			//  > "ooo의 전화번호를 찾을 수 없습니다. " 출력
			
			// 0번 입력 시 
			// - "프로그램을 종료합니다." 출력
			
			// 그 외 
			// - " 올바른 메뉴를 입력하세요." 출력
			
			
			
		}

	}

}

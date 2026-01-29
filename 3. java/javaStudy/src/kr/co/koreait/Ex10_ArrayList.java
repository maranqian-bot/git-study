package kr.co.koreait;

import java.util.ArrayList;
import java.util.LinkedList;

public class Ex10_ArrayList {

	public static void main(String[] args) {
		System.out.println("--------------ArrayList----------------");
		// ArryList
		// - 같은 자료형을 가진 데이터를 몪어서 관리하는 자료구조(배열)
		// - 크기를 동적으로 조절
		// - 중복 가능, 순서 보장! HashSet는 전반대~
		
		// <> 안에는 무조건 참조형 변수를 넣어줘야 함(가본형 사용 불가) 
		//         자료형(기본형 변수 아됨)
		ArrayList<Integer> intList = new ArrayList<>(); // 길이 자동 조절하는 배열 생성
		intList.add(10); // 배열 안에 들어갈 값을 추가
		intList.add(20);
		intList.add(30);
		intList.add(10);
		
		intList.add(2,999);
		System.out.println(intList);   
		System.out.println(intList.get(2)); // 2번 인덱스에 있는 값 조회
		
		// ArrayList에 요소가 몇 개 들어가있는지 반환      // 배열들어 가있는 요소 개수 != 배열의 크기
		System.out.println("ArrayList의 길이 : " + intList.size()); // 배열들어 가있는 요소 개수 출력
		
		for(Integer n : intList) {
			System.out.println(n);
		}
		
		intList.remove(2); // 2번 인덱스 요소 삭제
		intList.clear(); // 전체 요소 삭제
		System.out.println("삭제후 intList : " + intList);
		
		//리스트가 비워져있는지 확인
		// - 비워져잇으면 true, 요소가 1개라도 있으면 false
		System.out.println("isEmpy : " + intList.isEmpty());
		
		
		
		System.out.println("--------------LinkedList----------------");
		
		//-------------------------------------------------------------
		// LinkedList
		// -각각의 노드가 데이터와 포인터를 가지고 잇는 자료구조
		// - 포인터 : 다음 노드의 위치
		LinkedList<String> linked = new LinkedList<>();
		linked.add("A");
		linked.add("B");
		linked.add("C");
		
		System.out.println(linked);
		
		linked.remove(1);
		System.out.println(linked);
		
		
		
		
		
		
		
		
	}

}

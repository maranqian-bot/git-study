package kr.co.koreait;

import java.util.HashMap;

public class Ex12_HashMap {

	public static void main(String[] args) {
		
		
		System.out.println("-----------------복습 필요----------");
		//HashMap
		// -Key-Value 형태를 가진 자료구조
		// - 순서 보장 X
		// - 키는 중복 허용 X, 값은 중복 허용 O
		
		
		HashMap<String,Integer> map = new HashMap<>();
		map.put("키1", 10);
		map.put("키2", 20);
		map.put("키3", 30);
		map.put("키1", 40);
		       // 앞에꺼 중복 불가   // 뒤에꺼 중복해도 상관 없음  어차피 앞에꺼로 꺼내는 거라~
		
		map.remove("키2"); // 배열안에 있는 특정 값을 삭제
		System.out.println(map);
		System.out.println(map.get("키1")); // 배열안에 있는 특정 값을 꺼내  -> 값!!!
		
		System.out.println(map.keySet()); // 키를 배열 형태로 반환 !!!! 키!!!! 값 아님!!!!
		for(String key : map.keySet()) {
			System.out.println("key : " + key + ", Values : " + map.get(key));
		}
		
		System.out.println(map.values()); // 값을 배열 형태로 반환
		for(Integer value : map.values()) {
			System.out.println(value);
		}
		
		

	}

}

package kr.co.koreait;

public class Ex13_Method {
	
	// 안녕하세요 출력하는 메서드
	// public 반환타입 메서드명(자료형 매개변수명){}
	// - 반환 타이브이 종류 : void, int, String, int[], ArrayList<>,...
	// - void : 반환 타입 없음(return 없음)
	public String printHelo(String str) {
		System.out.println(str);
		return "잘 출력되었습니다.";
	}

	public static void main(String[] args) {

		// 메서드
		// - 정의된 동작이나 기능을 수행
		
		// 객체 생성(=인스턴스화)
		// - 코드를 메모리에 올리는 과정
		// -클래스명 변수명 = new 클래스명();
		Ex13_Method methodName = new Ex13_Method(); //생성(객체)
		String result = methodName.printHelo("안녕하세요 저는 홍길동입니다."); 
		System.out.println(result);
		
		Ex13_1_Calc calc = new Ex13_1_Calc();
		int result1 = calc.add(5,3);
		System.out.println(result1);
		
		
		int result2 = calc.mul(1,2,3,4);
		System.out.println(result2);
		
		int result3 = calc.sub(1, 2, 3);
		System.out.println(result3);
		
		int result4 = calc.div(2,4);
		System.out.println(result4);
		
		
		
		
		
	
	}
	
}

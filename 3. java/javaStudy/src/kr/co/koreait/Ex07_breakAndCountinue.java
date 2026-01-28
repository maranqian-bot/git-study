package kr.co.koreait;

import java.util.Scanner;

public class Ex07_breakAndCountinue {

	public static void main(String[] args) {
		
		// continue
		// - 반복문의 처음으로 되돌아가는 예약어
//		int count = 0;
//		
//		while(count<10) {
//			System.out.println(count);
//			
//			if(count == 5) {
//				continue;
//			}
//			count++;
//		}
	
	
	    for(int i=0; i<10; i++) {
	    	
	    	if(i%2 == 0) {
	    		System.out.println("i는 짝수입니다.");
	    		continue;	
	    	}
	    	System.out.println("i는 홀수입니다.");
	    }
	    
	System.out.println("-----------break문-----------");
	    
	    // break문 
	    // - 반복문 종료
	    
    for(int i=1; i<10; i++) {
	    	
	    	if(i%2 == 0) {
	    		System.out.println("i는 짝수입니다.");
	    		break;	
	    	}
	    	System.out.println("i는 홀수입니다.");
	    }
 
    System.out.println("-----------숫자맞추기-----------");
        // 숫자 맞추기  // 강제 자료형 전환 
        int magicNumber = (int)(Math.random() * 30) + 1;
	                           // 30까지 의 랜덤번호 생성 (0.1~30.0) +1(1.1~31.0)
        Scanner sc = new Scanner(System.in);
        boolean isMatch = false; // 점답 유무
        
        for(int i= 1; i <= 10; i++) {
        	System.out.println("숫자를 입력하세요 :");
        	int guess = sc.nextInt(); // 10번 안에 숫자를 맞춰
        	
        	if(guess == magicNumber) {
        		System.out.println(i + "번째에 맞추셨습니다.");
        		isMatch = true;
        		break;
        	}else if(guess > magicNumber) {
        		System.out.println("맞춰야할 숫자가 더 작습니다.");
        	}else if(guess < magicNumber) {
        		System.out.println("맞춰야할 숫자가 더 큽니다.");
        }
        	if(!isMatch) {
        		System.out.println("숫자를 맞추지 못했습니다.");
        		System.out.println("==================");
        	}  
	}
        
        
        
        

	}
}

package condition;

public class Main08 {

	public static void main(String[] args) {
		// char grade ����, A,B,C�� �ִ�. 
		// A or B or C : "Pass" 1����� 
		// A, B, C�� ������ �ٸ�
		// ����� �� ���, "Not-pass" 1�� ���
		 		
		char grade = 'A';
		
		switch (grade) {
		case 'A' :
			System.out.println("Pass");
		break;
		
		case 'B' :
			System.out.println("Pass");
		break;
		
		case 'C' :
			System.out.println("Pass");
		break;
		default :
			System.out.println("Not-pass");
			
		}
		
		
		
	}

}

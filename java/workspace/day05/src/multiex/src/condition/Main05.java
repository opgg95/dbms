package condition;

public class Main05 {

	public static void main(String[] args) {
		boolean is_korean = false;
		
		if( is_korean == true ) {
			System.out.println("�ѱ�����Դϴ�.");
		}
		
		if( is_korean == false) {
			System.out.println("�ѱ������ �ƴմϴ�.");
		}
		
		// �� ��ü�� ���̹Ƿ� �����ȴ�
		if( is_korean  ) {
			System.out.println("�ѱ�����Դϴ�.");
		}
		
		if( !is_korean ) {
			System.out.println("�ѱ������ �ƴմϴ�!!!");
		}
		
	}

}

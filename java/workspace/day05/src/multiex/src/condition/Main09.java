package condition;

public class Main09 {

	public static void main(String[] args) {
		////////////////////////////////// if��
		/*
		 * ����1. ���� 3000�� �̻��� ���� ������ ������ �ýø� Ÿ�� �׷��� ������ �ɾ��
		 */
		int money = 2000;
		
		if( money >= 3000 ) {
			System.out.println("�ýø� Ÿ�� ����");
		} else {
			System.out.println("�ɾ��");
		}
		
		System.out.println("---------------------------------------");
		
		/*
		 * ����2. ���� ���� 3000�� �̻� �ְų�, ī�尡 �ִٸ� �ýø� Ÿ�� �׷��� ������ �ɾ��.
		 */
		 
		 
		 
		
		/* ����3. � Ư�� ������ a�� ¦���̸� "¦��", Ȧ���̸� "Ȧ��"�� ����϶�.
		  * 
		  */
		
		int a= 15; 
		if( a%2 == 0) { //¦������
			System.out.println( a + "�� ¦��");
		} else {
			System.out.println( a + "�� Ȧ��");
		}
		
		/*
		 * ����4. Ư�� ������ a2,b2,c2�� �ִ밪�� ���Ͽ���
		 * */
		int a2 = 10, b2 = 20, c2= 9;
		int max = 0;
		if( a2 > b2 && a2 > c2) { // �ִ밪�� a2
			max = a2;
		} else { // �ִ밪�� a2 �ƴѰ��
			if( b2 > c2) {
				max = b2;
			} else {
				max = c2;
			}
			
		}
		System.out.println("�ִ밪�� : " + max);
		
		
		/*
		 * ����5-1. ����, ����, ���� ������ ����� 95�� �̻��̸� ���л��� ����Ͽ���.
		 * ����5-2. �׸��� ���� ������ 70�� �̻��̸� "���� �հ�" �׷��� ������ "���� ���հ�"�� ����϶�
		 * ����5-3. ���������� 70�� �̻��̸� "A����", 80�� �̻��̸� "B����", 70���̻��̸� "C����"
		 * 		   60���̻��̸� "D����" , ������ "F����"�� ���
		 */
		
		int kor = 100, eng = 100, mat = 89;
		double avg = (kor + eng + mat) /3;
		
		// 5-1.
		if( avg >= 95 ) {
			System.out.println("���л�");
		}
		
		// 5-2.
		if( kor >= 70) {
			System.out.println("���� �հ�");
		} else {
			System.out.println("���� ���հ�");
		}
		
		//5-3.
		if ( mat >= 90) {
			System.out.println("���� : A ����");
		} else if ( mat >= 80) {
			System.out.println("���� : B ����");
		} else {
			System.out.println("���� : F ����");
			
		}
		
		
		//////////////////////////////// switch-case
		
		/*
		 * ����1. 1�� "�౸", 2�� "��", 3�� "�߱�" , 4�� "�豸" �׿ܴ� "������"�� ���
		 */
		
		int num = 1;
		
		switch (num1) {
			sysout
		}
		/*
		 * ����2. ���ڰ� 3�̸� "�ȳ�"�� ����, ���ڰ� 2�̸� "�ȳ�"�� ����, ���ڰ� 1�̸� "�ȳ�"�� ����,
		 * �� �ܴ� "�߰�"�� ���
		 */
				
		int num2 = 3;
		switch (num2) {
		case 3:
			System.out.println();
			break;
		}
		
		
		
	}

}

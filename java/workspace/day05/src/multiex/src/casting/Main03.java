package casting;

public class Main03 {

	public static void main(String[] args) {
		double a = 10.5D;
		float b = 20.5f;
		
		// 1. float /2.double/ 3. float ,double
		/*
		 *  ū ������ ������ ���� ������ ������ ������ �����ϸ�,
		 *  ���� ������ ������ ū ������ ������������
		 *  �Ϲ��� ����ȯ�� �����Ѵ�.
		 *  �׷��Ƿ� a+b�� double���� ������ �ǹǷ�,
		 *  float���� ���� �����ϴ� ���� �����̴�.
		 */
		
		// float f = a + b;
		
		float f = (float)a + b;
		System.out.println("f : " + f);
		
		double d = a + b;
		System.out.println("d : " + d);
		
		
	}

}

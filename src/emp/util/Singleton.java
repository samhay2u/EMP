package emp.util;

public class Singleton {
	private static Singleton singleton;

	private String title;

	private Singleton() {
		title = "Employee Information System";
	}

	public static Singleton getInstance() {
		if (singleton == null) {
			singleton = new Singleton();
		}

		return singleton;
	}

	public String getTitle() {
		return title;
	}

}

public class Main {
    public static void main(String[] args) {
        SomeResource res = null;
        try {
            res = new SomeResource();   // 생성자 예외도 finally가 실행됨
            System.out.println("This is my other app. :)");
        } finally {
            if (res != null) res.close();
        }
    }
}

class SomeResource {
    public void close() {
        System.out.printf("Hello from Java %s!%n", System.getProperty("java.version"));
    }
}

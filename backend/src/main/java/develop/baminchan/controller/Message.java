package develop.baminchan.controller;

public class Message {
    public static final int OK = 200;
    public static final int BAD_REQUEST = 400;
    public static final int NOT_FOUND = 404;
    public static final int INTERNAL_SERVER_ERROR = 500;

    private int status;
    private Object data;

    public Message(int status, Object data) {
        this.status = status;
        this.data = data;
    }

    public int getStatus() {
        return status;
    }

    public Object getData() {
        return data;
    }
}

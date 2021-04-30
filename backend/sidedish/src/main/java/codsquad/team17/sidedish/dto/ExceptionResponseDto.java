package codsquad.team17.sidedish.dto;

public class ExceptionResponseDto {

    private String message;

    public ExceptionResponseDto(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}

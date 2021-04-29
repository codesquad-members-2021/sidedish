package codsquad.team17.sidedish.exception;


import codsquad.team17.sidedish.dto.ExceptionResponseDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ItemNotFoundException.class)
    public ResponseEntity handleItemNotFoundException(Exception e){
        return new ResponseEntity(new ExceptionResponseDto(e.getMessage()), HttpStatus.NOT_FOUND);
    }

}

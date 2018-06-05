package com.magicrecipe.ExceptionHandler;



import java.util.Date;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.magicrecipe.controller.RecipeNotFoundException;

@ControllerAdvice
@RestController
public class CustomizedResponseEntityExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object> handleAllException(Exception ex, WebRequest request) {

       final ExceptionResponse exceptionResponse =  new ExceptionResponse(new Date(),ex.getMessage(),request.getDescription(false));


        return new  ResponseEntity<Object>(exceptionResponse, HttpStatus.INTERNAL_SERVER_ERROR);
    }
    
    @ExceptionHandler(RecipeNotFoundException.class)
    public ResponseEntity<Object> handleUserException(RecipeNotFoundException ex, WebRequest request) {

        final ExceptionResponse exceptionResponse =  new ExceptionResponse(new Date(),ex.getMessage(),request.getDescription(false));


        return new  ResponseEntity<Object>(exceptionResponse, HttpStatus.NOT_FOUND);
    }

    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(MethodArgumentNotValidException ex,
                                                                  HttpHeaders headers, HttpStatus status, WebRequest request) {

        final ExceptionResponse exceptionResponse =  new ExceptionResponse(new Date(),"Validation Failed",ex.getBindingResult().toString());


        return new  ResponseEntity<Object>(exceptionResponse, HttpStatus.BAD_REQUEST);
    }
}

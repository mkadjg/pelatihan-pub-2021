package com.pelatihan.pub.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Response {
    private String responseCode;
    private String responseType;
    private Object data;
    private String message;
}

package com.pelatihan.pub.controllers;

import com.pelatihan.pub.dto.LoginPayload;
import com.pelatihan.pub.dto.Response;
import com.pelatihan.pub.models.Users;
import com.pelatihan.pub.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UsersRepository usersRepository;

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @PostMapping("/do-login")
    @ResponseBody
    public Object doLogin(@RequestBody LoginPayload loginPayload) {
        Response response = new Response();
        try {
            Users user = usersRepository.getUserByEmail(loginPayload.getEmail());
            if (user != null) {
                if (user.getPassword().equals(loginPayload.getPassword())) {
                    response.setResponseCode("00");
                    response.setResponseType("Success");
                    response.setData(user);
                    response.setMessage("Login Berhasil!");
                    return ResponseEntity.ok().body(response);
                } else {
                    response.setResponseCode("01");
                    response.setResponseType("Warning");
                    response.setData(null);
                    response.setMessage("Password yang Anda masukan salah!");
                    return ResponseEntity.badRequest().body(response);
                }
            } else {
                response.setResponseCode("02");
                response.setResponseType("Warning");
                response.setData(null);
                response.setMessage("Email yang Anda masukan salah!");
                return ResponseEntity.badRequest().body(response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setResponseCode("99");
            response.setResponseType("Error");
            response.setData(null);
            response.setMessage("Terjadi kesalahan!, Error : " + e.getLocalizedMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
        }
    }
}

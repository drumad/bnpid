package org.bnp.id.controller;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.bnp.id.model.User;
import org.bnp.id.repo.UserRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.function.EntityResponse;

@Getter
@Setter
@RestController
@Log4j2
@RequestMapping("/users")
public class UserController {

    private UserRepository userRepository;

    @PostMapping("/add")
    public EntityResponse<User> add(@RequestBody User user) {

        // Not sure if we want to add users through an interface.

        //user.setEnabled(true);
        //return EntityResponse.fromObject((userRepository.save(user).get())).build();

        return null;
    }
}

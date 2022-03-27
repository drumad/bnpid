package org.bnp.id.controller;

import org.bnp.id.model.User;
import org.bnp.id.model.details.BnpUserDetails;
import org.bnp.id.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserController implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {

        User user = userRepository.findUserByUsername(s).orElseThrow(() -> new UsernameNotFoundException(s + " not found."));

        return new BnpUserDetails(user);
    }
}

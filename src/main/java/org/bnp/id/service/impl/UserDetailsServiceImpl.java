package org.bnp.id.service.impl;

import lombok.extern.log4j.Log4j2;
import org.bnp.id.model.User;
import org.bnp.id.repo.UserRepository;
import org.bnp.id.service.BnpUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Log4j2
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {

        User user = null;
        try {
            user = userRepository.findUserByUsername(s).orElseThrow(() -> new UsernameNotFoundException(s + " not found."));
        } catch (UsernameNotFoundException e) {
            log.error(e.getMessage(), e);
        }
        return new BnpUserDetails(user);
    }
}

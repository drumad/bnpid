package org.bnp.id.service.impl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.bnp.id.model.User;
import org.bnp.id.repo.UserRepository;
import org.bnp.id.service.BnpUserDetails;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@Log4j2
@AllArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    private UserRepository userRepository;

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

package org.bnp.id.repo;

import org.bnp.id.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Integer> {

    Optional<User> findUserByUsername(String username);

    Optional<User> save(User user);
}

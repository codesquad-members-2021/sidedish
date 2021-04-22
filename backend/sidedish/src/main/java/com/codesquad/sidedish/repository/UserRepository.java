package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
}

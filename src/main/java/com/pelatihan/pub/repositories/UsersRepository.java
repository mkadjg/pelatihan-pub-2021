package com.pelatihan.pub.repositories;

import com.pelatihan.pub.dto.LoginPayload;
import com.pelatihan.pub.models.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {

    @Query("SELECT u FROM Users u WHERE u.email=:email")
    public Users getUserByEmail(String email);
}

package com.ua.Repositories;

import com.ua.Entity.Group;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface GroupRepository extends JpaRepository<Group, Long> {
    @Query("SELECT c.name FROM Group c")
    List<String> findGroupsNames();

    @Query("SELECT c FROM Group c WHERE c.name = :name")
    Group GroupByName(@Param("name") String name);
}

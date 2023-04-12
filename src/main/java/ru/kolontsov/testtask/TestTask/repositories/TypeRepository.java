package ru.kolontsov.testtask.TestTask.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.kolontsov.testtask.TestTask.entities.TypeEntity;

import java.util.List;

@Repository
public interface TypeRepository extends JpaRepository<TypeEntity, Long> {
    //TODO по сути я так понял он не пригодился нигде. может удалить?
    List<TypeEntity> findAllByNameIgnoreCase(String name);

}

package org.prodigius.cars;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CarRepository extends JpaRepository<Car, Long> {
	List<Car> findByOwner (String owner);
}

package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Movie;

public interface MovieRepository extends JpaRepository<Movie, Long> {
}

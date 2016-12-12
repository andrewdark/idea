package ua.pp.idea.dao;

import org.springframework.security.access.prepost.PreAuthorize;
import ua.pp.idea.entity.Idea;
import java.util.List;

/**
 * Created by Dark on 08.11.2016.
 */
public interface IdeaDao {


    List<Idea> getAll();

    Idea findIdeaByID(int id);

    void createIdea(Idea idea);

    void deleteIdeaById(Idea idea);

    void updateIdeaById(Idea idea);
}

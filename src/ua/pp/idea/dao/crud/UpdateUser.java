package ua.pp.idea.dao.crud;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.SqlUpdate;

import javax.sql.DataSource;
import java.sql.Types;

/**
 * Created by Dark on 09.11.2016.
 */
public class UpdateUser extends SqlUpdate{

    private final static String SQL_UPDATE_USER="UPDATE user_table SET pwd=:userpwd WHERE username=:username";

    public UpdateUser(DataSource dataSource){
        super(dataSource,SQL_UPDATE_USER);
        super.declareParameter(new SqlParameter("username", Types.VARCHAR));
        super.declareParameter(new SqlParameter("userpwd", Types.VARCHAR));
        //super.declareParameter(new SqlParameter("useremail", Types.VARCHAR));

    }

}

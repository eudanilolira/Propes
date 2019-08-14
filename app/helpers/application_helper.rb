module ApplicationHelper
    def flash_class(level)
        if level == "notice"
            "alert alert-info"
        elsif level == "success"
            "alert alert-success"
        elsif level == "error"
            "alert alert-error"
        elsif level == "alert"
            "alert alert-error"
        end
    end

    def db_attribute(attr)
        #Method to return the database-only attributes 
        return ['id','created_at', 'updated_at', 'user_id','athlete_id'].include? attr
    end

end

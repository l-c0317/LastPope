package Model;

import java.time.LocalDate;

public class Post {
    private String title;
    private String content;
    private LocalDate writtenDate;
    private String userId;
    private String post_type;
    private String identyfier_code;

    public Post(String title, String content, LocalDate writtenDate, String userId, String post_type, String identyfier_code) {
    	this.title = title;
        this.content = content;
        this.writtenDate = writtenDate;
        this.userId = userId;
        switch(post_type) {
    	case "n" :
    		post_type = "공지";
    		break;
    	case "c" :
    		post_type = "소통";
    		break;
    	case "q" :
    		post_type = "질문";
    		break;
    	case "a" :
    		post_type = "답변";
    		break;
		default :
    		post_type = "오류";
    		break;
        }
        this.post_type = post_type;
        this.identyfier_code = identyfier_code;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public LocalDate getWrittenDate() {
        return writtenDate;
    }
    
    public String getUserId() {
        return userId;
    }

    public String getPost_type() {
        return post_type;
    }
    
    public String getIdentyfier_code() {
        return identyfier_code;
    }
}
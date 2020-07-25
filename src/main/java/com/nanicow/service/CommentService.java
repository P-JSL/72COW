package com.nanicow.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanicow.domain.CommentVO;
import com.nanicow.mapper.CommentMapper;

@Service("com.nanicow.service.CommentService")
public class CommentService {
 
   @Autowired
   private CommentMapper mCommentMapper;
    
    public List<CommentVO> commentListService() throws Exception{
        
        return mCommentMapper.commentList();
    }
    
    public int commentInsertService(Map<String,Object> maps) throws Exception{
        
        return mCommentMapper.commentInsert(maps);
    }
    
}
 
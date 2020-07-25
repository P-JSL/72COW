package com.nanicow.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.nanicow.domain.CommentVO;

@Repository("com.nanicow.mapper.CommentMapper")
public interface CommentMapper {

    // 댓글 목록
    public List<CommentVO> commentList() throws Exception;
 
    // 댓글 작성
    public int commentInsert(Map<String,Object> maps) throws Exception;
    
 
}
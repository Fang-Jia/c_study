package com.wj.dao;

import com.wj.entity.Note;

import java.util.List;

/**
 * 笔记   数据持久层
 */
public interface NoteDao {

    void noteAdd(Note note);

    List<Note> noteSelectById(Note note);

    List<Note> noteSelectByName(String username);
}

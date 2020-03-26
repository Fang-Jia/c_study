package com.wj.service;

import com.wj.dao.NoteDao;
import com.wj.entity.Note;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 笔记   业务层
 */
@Transactional
public class NoteService {

//    注入NoteDao属性
    private NoteDao noteDao;

    public void setNoteDao(NoteDao noteDao) {
        this.noteDao = noteDao;
    }

    /**
     * 添加笔记
     * @param note
     */
    public void noteAdd(Note note) {
        noteDao.noteAdd(note);
    }

    /**
     * 查看笔记     通过课程页面ID查询
     * @param note
     * @return
     */
    public List<Note> getNoteInfoById(Note note) {
        return noteDao.noteSelectById(note);
    }

    /**
     * 查询笔记     通过用户名查询
     * @param username
     * @return
     */
    public List<Note> getNoteInfoByName(String username) {
        return noteDao.noteSelectByName(username);
    }
}

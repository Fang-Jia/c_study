package com.wj.dao.impl;

import com.wj.dao.NoteDao;
import com.wj.entity.Note;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * 笔记数据层  实现类
 */
public class NoteDaoImpl implements NoteDao {

    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    /**
     * 添加笔记
     * @param note
     */
    @Override
    public void noteAdd(Note note) {
        hibernateTemplate.save(note);
    }

    /**
     * 查询笔记     通过课程页面ID查询
     */
    @Override
    public List<Note> noteSelectById(Note note) {
        return (List<Note>) hibernateTemplate.find("from Note where courseId = ?",note.getCourseId());
    }

    /**
     * 查询笔记     通过用户名查询
     * @return
     */
    @Override
    public List<Note> noteSelectByName(String username) {
        return (List<Note>) hibernateTemplate.find("from Note where name = ?",username);
    }
}

package com.wj.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wj.entity.Note;
import com.wj.service.NoteService;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 笔记   控制层
 */
public class NoteAction extends ActionSupport implements ModelDriven {

//    封装前端表单数据
    private Note note = new Note();
    @Override
    public Object getModel() { return note; }

//    注入NoteService属性
    private NoteService noteService;

    public void setNoteService(NoteService noteService) {
        this.noteService = noteService;
    }

//    向值栈存放list集合
    List<Note> list = new ArrayList<>();
    public List<Note> getList() {
        return list;
    }

    //    封装向前端传递的数据格式
    private Map<String,Object> map = new HashMap<>();
    public Map<String, Object> getMap() { return map; }

    /**
     * 笔记添加页面
     */
    public String note(){
        return "note";
    }

    /**
     * 添加笔记
     */
    public void noteAdd(){
        HttpServletRequest request = ServletActionContext.getRequest();
        String username = (String) request.getSession().getAttribute("username");
        note.setName(username);
        noteService.noteAdd(note);
    }

    /**
     * 查看笔记     通过课程页面ID查询
     */
    public String noteInfo(){
        String username = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
        if (username == null){
            map.put("code",0);
            map.put("msg","null");
            return SUCCESS;
        }
        List<Note> noteList = noteService.getNoteInfoById(note);
        list.addAll(noteList);
        return "noteInfo";
    }

    /**
     * 查看笔记     通过用户名查询
     */
    public String noteInfoByName(){

        String username = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
        List<Note> noteList = noteService.getNoteInfoByName(username);
        list.addAll(noteList);
        return "noteInfo";
    }

}

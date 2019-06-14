package cn.itcast.web.util.servlet.registration;

import cn.itcast.web.util.dao.GragistionDao;
import cn.itcast.web.util.dao.impl.GragistionDaoimpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/registrationGetMyYuyueListDel")
public class RegistrationGetMyYuyueListDel extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String uu_id = req.getParameter("uu_id");
        String r_id = req.getParameter("r_id");
        GragistionDao dao = new GragistionDaoimpl();
        dao.GetMyYuyueListDel(Integer.parseInt(r_id));
        List list = dao.GetMyYuyueList(Integer.parseInt(uu_id));

        Map<String,Object> mapa = new HashMap<String, Object>();
        mapa.put("stadus","ok");
        mapa.put("msg","获取我的预约列表");
        mapa.put("list",list);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),mapa);
    }
}

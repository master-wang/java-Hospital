package cn.itcast.web.util.servlet.pet;

import cn.itcast.web.util.dao.GragistionDao;
import cn.itcast.web.util.dao.PetDao;
import cn.itcast.web.util.dao.impl.GragistionDaoimpl;
import cn.itcast.web.util.dao.impl.PetDaoimpl;
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

@WebServlet("/getMyPetsList")
public class GetMyPetsList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String u_id =req.getParameter("u_id");
        PetDao dao = new PetDaoimpl();

        List list = dao.getMyPetSById(Integer.parseInt(u_id));

        Map<String,Object> mapa = new HashMap<String, Object>();
        mapa.put("stadus","ok");
        mapa.put("msg","获取所有我的宠物");
        mapa.put("list",list);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),mapa);
    }
}

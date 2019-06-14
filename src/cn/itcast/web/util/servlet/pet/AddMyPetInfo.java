package cn.itcast.web.util.servlet.pet;

import cn.itcast.web.util.dao.PetDao;
import cn.itcast.web.util.dao.UserDao;
import cn.itcast.web.util.dao.impl.PetDaoimpl;
import cn.itcast.web.util.dao.impl.UserDaoimpl;
import cn.itcast.web.util.domain.Pet;
import cn.itcast.web.util.domain.User;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/addMyPetInfo")
public class AddMyPetInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String parm = getParm(req);
        System.out.println(parm);
        ObjectMapper mapper = new ObjectMapper();

        Pet pet = null;
        try {
            pet = mapper.readValue(parm, Pet.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(pet);
        PetDao dao = new PetDaoimpl();
        int p_id = dao.addMyNewPet(pet);
        int del_id = p_id-1;
        dao.delMyPetById(del_id);
        System.out.println("添加的宠物id为："+p_id);

        Map<String,Object> mapa = new HashMap<String, Object>();
        mapa.put("stadus","ok");
        mapa.put("code",1);
        mapa.put("msg","添加宠物成功！！");
        mapa.put("p_id",p_id);
        ObjectMapper mapperd = new ObjectMapper();
        mapperd.writeValue(resp.getWriter(),mapa);
    }

    public static String getParm(HttpServletRequest request) {
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(request.getInputStream(), "UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String line = null;
        StringBuilder sb = new StringBuilder();
        try {
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return sb.toString();
    }
}

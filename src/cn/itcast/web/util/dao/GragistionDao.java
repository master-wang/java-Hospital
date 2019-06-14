package cn.itcast.web.util.dao;

import cn.itcast.web.util.domain.Registration;

import java.util.List;

public interface GragistionDao {
    void addYuyue(Registration yuyue);

    List GetMyYuyueList(int parseInt);

    void GetMyYuyueListDel(int parseInt);

    List GetMyzhengduanList(int parseInt);

    void GetMyzhengduanListOk(int parseInt);

    List geuYuyueList();
}

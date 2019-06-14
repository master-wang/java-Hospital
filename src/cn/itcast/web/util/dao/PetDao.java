package cn.itcast.web.util.dao;

import cn.itcast.web.util.domain.Pet;

import java.util.List;

public interface PetDao {
    List getMyPetSById(int parseInt);

    int addMyNewPet(Pet pet);

    void delMyPetById(int del_id);

    int updatePetHeadimgById(String p_id, String b);
}

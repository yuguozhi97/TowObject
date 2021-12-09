package org.java.dao;

public interface ArtUserDao {

    boolean sign(String name,String pwd);

    boolean sense(String name);
}

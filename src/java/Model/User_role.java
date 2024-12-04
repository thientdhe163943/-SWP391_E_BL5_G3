/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author laptop368
 */
public class User_role extends BaseUser{
    private int user_role_id;
    private int role_id;
    private int user_id;

    public User_role() {
        
    }
    public User_role(int user_id, String name, int role_id) {
        super(user_id, name);  // Gọi constructor của BaseUser
        this.role_id = role_id;
    }

    public User_role(int user_role_id, int role_id, int user_id) {
        this.user_role_id = user_role_id;
        this.role_id = role_id;
        this.user_id = user_id;
    }

    public int getUser_role_id() {
        return user_role_id;
    }

    public void setUser_role_id(int user_role_id) {
        this.user_role_id = user_role_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "User_role{" + "user_role_id=" + user_role_id + ", role_id=" + role_id + ", user_id=" + user_id + '}';
    }
    
}

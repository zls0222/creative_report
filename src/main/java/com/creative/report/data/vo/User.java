package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/30.
 */
public class User {
    private static final long serialVersionUID=1L;

    String Username;
    String Password;

    public User() {
    }

    public User(String username, String password) {
        Username = username;
        Password = password;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (Username != null ? !Username.equals(user.Username) : user.Username != null) return false;
        return !(Password != null ? !Password.equals(user.Password) : user.Password != null);

    }

    @Override
    public int hashCode() {
        int result = Username != null ? Username.hashCode() : 0;
        result = 31 * result + (Password != null ? Password.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "Username='" + Username + '\'' +
                ", Password='" + Password + '\'' +
                '}';
    }
}

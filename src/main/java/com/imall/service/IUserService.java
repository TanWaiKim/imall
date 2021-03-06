package com.imall.service;

import com.github.pagehelper.PageInfo;
import com.imall.common.ServerResponse;
import com.imall.pojo.User;
import com.imall.vo.UserDetailVo;

/**
 * Created by TanWaiKim
 */
public interface IUserService {

    ServerResponse<User> login(String username, String password);

    ServerResponse<String> register(User user);

    ServerResponse<String> checkValid(String str, String type);

    ServerResponse selectQuestion(String username);

    ServerResponse<String> checkAnswer(String username, String question, String answer);

    ServerResponse<String> forgetResetPassword(String username, String passwordNew, String forgetToken);

    ServerResponse<String> resetPassword(String passwordOld, String passwordNew, User user);

    ServerResponse<User> updateInformation(User user);

    ServerResponse<User> getInformation(Integer userId);

    ServerResponse checkAdminRole(User user);

    ServerResponse<PageInfo> getUserList(int pageNum, int pageSize);

    ServerResponse<UserDetailVo> manageUserDetail(Integer userId);

    ServerResponse saveOrUpdateUser(User user);

    ServerResponse<PageInfo> searchUser(String username, Integer userId, int pageNum, int pageSize);

    ServerResponse<String> del(Integer userId);
}

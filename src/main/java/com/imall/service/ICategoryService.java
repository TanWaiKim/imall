package com.imall.service;

import java.util.List;

import com.imall.common.ServerResponse;
import com.imall.pojo.Category;

/**
 * Created by TanWaiKim
 */
public interface ICategoryService {
    ServerResponse addCategory(String categoryName, Integer parentId);
    ServerResponse updateCategoryName(Integer categoryId, String categoryName);
    ServerResponse<List<Category>> getChildrenParallelCategory(Integer categoryId);
    ServerResponse<List<Integer>> selectCategoryAndChildrenById(Integer categoryId);

}

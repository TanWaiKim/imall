package com.imall.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by TanWaiKim
 */
public interface IFileService {

    String upload(MultipartFile file, String path);
}

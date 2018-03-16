package com.chen.utils;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class UploadPic {
	public static String uploadPic(File image, String imageFileName) {
		String realpath = ServletActionContext.getServletContext().getRealPath("/images");
		imageFileName = GetUUID.getUUID().substring(1, 7) + imageFileName.substring(imageFileName.lastIndexOf('.'));
		if (image != null) {
			File savefile = new File(new File(realpath), imageFileName);
			System.out.println(realpath);
			if (savefile.getParentFile().exists()) {
				try {
					savefile.getParentFile().mkdirs();
					FileUtils.copyFile(image, savefile);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return imageFileName;
	}
}

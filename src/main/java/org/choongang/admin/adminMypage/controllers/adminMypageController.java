package org.choongang.admin.adminMypage.controllers;

import org.choongang.global.config.annotations.Controller;
import org.choongang.global.config.annotations.GetMapping;
import org.choongang.global.config.annotations.RequestMapping;

@Controller
@RequestMapping("/admin/adminMypage")
public class adminMypageController {

    @GetMapping
    public String boardList() {

        return "admin/adminMypage/index";
    }
}

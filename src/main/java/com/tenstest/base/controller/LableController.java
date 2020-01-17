package com.tenstest.base.controller;


import org.springframework.web.bind.annotation.*;

@RestController
public class LableController {
    @GetMapping("/")
    public Result findAll(){
        return new Result(true, StatusCode.OK,"查询成功","hello world three");
    }

}

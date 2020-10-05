package com.kgc.controller;

import com.kgc.mapper.GoodsMapper;
import com.kgc.pojo.Goods;
import com.kgc.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AppController {
    @Resource
    GoodsService goodsService;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/toMain")
    public String toMain(Integer goodsdistrict, Model model) {
        List<Goods> goods = goodsService.selectBygoodsdistrict(goodsdistrict);
        model.addAttribute("goods", goods);
        return "main";
    }

    @RequestMapping("/toselByid")
    public String toselByid(Long id, Model model) {
        Goods goods = goodsService.selectByid(id);
        model.addAttribute("goods", goods);
        return "upd";
    }

    @RequestMapping("/upd")
    public String upd(Goods goods, HttpSession session, Model model) {
        int upd = goodsService.upd(goods);
        if (upd > 0) {
            session.setAttribute("success", "更新成功");
            List<Goods> goods1 = goodsService.selectBygoodsdistrict(goods.getGoodsdistrict());
            model.addAttribute("goods", goods1);
        }
        return "main";
    }
}

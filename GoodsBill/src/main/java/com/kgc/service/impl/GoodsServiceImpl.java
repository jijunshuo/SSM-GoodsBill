package com.kgc.service.impl;

import com.kgc.mapper.GoodsMapper;
import com.kgc.pojo.Goods;
import com.kgc.pojo.GoodsExample;
import com.kgc.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.awt.*;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Resource
    GoodsMapper goodsMapper;

    @Override
    public List<Goods> selectBygoodsdistrict(Integer goodsdistrict) {
        GoodsExample example = new GoodsExample();
        GoodsExample.Criteria criteria = example.createCriteria();
        if (goodsdistrict != 0) {
            criteria.andGoodsdistrictEqualTo(goodsdistrict);
        }
        List<Goods> goods = goodsMapper.selectByExample(example);
        return goods;
    }

    @Override
    public Goods selectByid(Long id) {
        Goods goods = goodsMapper.selectByPrimaryKey(id);
        return goods;
    }

    @Override
    public int upd(Goods goods) {
        int i = goodsMapper.updateByPrimaryKeySelective(goods);
        return i;
    }
}

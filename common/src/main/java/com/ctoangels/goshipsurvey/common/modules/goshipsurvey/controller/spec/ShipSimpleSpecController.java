package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.spec;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.ShipSimpleSpec;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IShipSimpleSpecService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 *
 * ShipSimpleSpec 控制层
 *
 */
@Controller
@RequestMapping(value = "spec")
public class ShipSimpleSpecController extends BaseController{

    @Autowired
    private IShipSimpleSpecService shipSimpleSpecService;

    @RequestMapping
    public String page(){
        return "goshipsurvey/spec/list";
    }

    @RequestMapping(value = "/list" ,method = RequestMethod.POST)
    @ResponseBody
    public JSONObject list(@RequestParam(required = false) String keyword) {
        JSONObject jsonObject = new JSONObject();
        EntityWrapper<ShipSimpleSpec> ew = getEntityWrapper();
        if (keyword!=null && !keyword.equals("")){
            ew.like("ship_name",keyword);
        }
        Page<ShipSimpleSpec> specPage=shipSimpleSpecService.selectPage(getPage(),ew);
        return jsonPage(specPage);
    }

    @RequestMapping(value = "/add" ,method = RequestMethod.GET)
    public String add() {
        return "goshipsurvey/spec/add";
    }

    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(ShipSimpleSpec shipSimpleSpec) {
        shipSimpleSpec.setDelFlag(Const.DEL_FLAG_NORMAL);
        shipSimpleSpec.setCreateDate(new Date());
        JSONObject jsonObject=new JSONObject();
        if(shipSimpleSpecService.insert(shipSimpleSpec)){
            jsonObject.put("status",200);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JSONObject deleteMedia(@RequestParam(required = false) Integer id) {
        JSONObject jsonObject = new JSONObject();
        try {
            ShipSimpleSpec shipSimpleSpec=shipSimpleSpecService.selectById(id);
            shipSimpleSpec.setDelFlag(Const.DEL_FLAG_DELETE);
            shipSimpleSpecService.updateById(shipSimpleSpec);
            jsonObject.put("status", 200);
        } catch (Exception e) {
            jsonObject.put("status", 0);
            jsonObject.put("msg", "删除错误，请稍后再试");
        }

        return jsonObject;
    }

    @RequestMapping(value = "/edit" ,method = RequestMethod.GET)
    public String edit(@RequestParam(required = false) Integer id, ModelMap modelMap) {
        ShipSimpleSpec shipSimpleSpec=shipSimpleSpecService.selectById(id);
        modelMap.put("spec",shipSimpleSpec);
        return "goshipsurvey/spec/edit";
    }

    @RequestMapping(value = "/edit" ,method = RequestMethod.POST)
    @ResponseBody
    public JSONObject edt(ShipSimpleSpec shipSimpleSpec) {
        JSONObject jsonObject=new JSONObject();
        if(shipSimpleSpecService.updateById(shipSimpleSpec)){
            jsonObject.put("status",200);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/info" ,method = RequestMethod.GET)
    @ResponseBody
    public JSONObject info(@RequestParam(required = false) Integer id) {
        JSONObject jsonObject = new JSONObject();
        ShipSimpleSpec shipSimpleSpec=shipSimpleSpecService.selectById(id);
        jsonObject.put("status",200);
        jsonObject.put("src",shipSimpleSpec.getShipInfoOss());
        return jsonObject;
    }



}
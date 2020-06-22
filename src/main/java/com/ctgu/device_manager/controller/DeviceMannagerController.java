package com.ctgu.device_manager.controller;

import com.ctgu.device_manager.dao.MemoryDao;
import com.ctgu.device_manager.dao.NetworkDao;
import com.ctgu.device_manager.dao.ProcessorDao;
import com.ctgu.device_manager.pojo.Memory;
import com.ctgu.device_manager.pojo.Network;
import com.ctgu.device_manager.pojo.Processor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/***
 * 
 * @author larry
 * @date 2020/2/13 13:24
 * @creed: Talk is cheap, show me the code!
 * 
 */


@Controller
public class DeviceMannagerController {

    @Autowired
    MemoryDao memoryDao;

    @Autowired
    NetworkDao networkDao;

    @Autowired
    ProcessorDao processorDao;

    @RequestMapping("/tomemory")
    public String toMemory(HttpSession session){
        Date now = new Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = dateFormat.format(now);
        session.setAttribute("date", date);
//        System.out.println(session.getAttribute("date"));
        return "memory";
    }

    @RequestMapping("/memory")
    @ResponseBody
    public List<Memory> Memory(HttpServletRequest request){
        HttpSession session = request.getSession();
        String date = (String)session.getAttribute("date");
        List<Memory> memories = memoryDao.findByTime(date);
        return memories;
    }

    @RequestMapping("/toprocessor")
    public String toProcessor(HttpSession session){
        Date now = new Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = dateFormat.format(now);
        session.setAttribute("date", date);
//        System.out.println(session.getAttribute("date"));
        return "processor";
    }


    @RequestMapping("/processor")
    @ResponseBody
    public List<Processor> Processor(HttpServletRequest request){
        HttpSession session = request.getSession();
        String date = (String)session.getAttribute("date");
        List<Processor> processors = processorDao.findByTime(date);
        return processors;
    }

    @RequestMapping("/tonetwork")
    public String toNetwork(HttpSession session){
        Date now = new Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = dateFormat.format(now);
        session.setAttribute("date", date);
//        System.out.println(session.getAttribute("date"));
        return "network";
    }

    @RequestMapping("/network")
    @ResponseBody
    public List<Network> Network(HttpServletRequest request){
        HttpSession session = request.getSession();
        String date = (String)session.getAttribute("date");
        List<Network> networks = networkDao.findByTime(date);
        return networks;
    }

}

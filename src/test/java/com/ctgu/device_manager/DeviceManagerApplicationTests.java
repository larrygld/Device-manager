package com.ctgu.device_manager;

import com.ctgu.device_manager.dao.MemoryDao;
import com.ctgu.device_manager.dao.NetworkDao;
import com.ctgu.device_manager.dao.ProcessorDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/***
 * 
 * @author larry
 * @date 2020/2/13 13:24
 * @creed: Talk is cheap, show me the code!
 * 
 */


@RunWith(SpringRunner.class)
@SpringBootTest
public class DeviceManagerApplicationTests {

	@Autowired
	MemoryDao memoryDao;

	@Autowired
	NetworkDao networkDao;

	@Autowired
	ProcessorDao processDao;

	@Test
	public void testQueryAll() throws ParseException {

		Date now = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = dateFormat.format(now);
		System.out.println(date);
		System.out.println(memoryDao.findByTime(date));
	}

	@Test
	public void test01(){
		System.out.println(networkDao.findByTime("2020-02-12 16:00:20"));
	}

	@Test
	public void test02(){
		System.out.println(processDao.findByTime("2020-02-12 16:00:20"));
	}

}

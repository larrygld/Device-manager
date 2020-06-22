package com.ctgu.device_manager.dao;

import com.ctgu.device_manager.pojo.Processor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * 
 * @author larry
 * @date 2020/2/16 12:15
 * @creed: Talk is cheap, show me the code!
 * 
 */


public interface ProcessorDao extends JpaRepository<Processor, Integer>{

    @Query(nativeQuery = true, value = "SELECT * FROM processormonitor p WHERE p.`Timestamp` > :date")
    List<Processor> findByTime(@Param("date") String date);

}

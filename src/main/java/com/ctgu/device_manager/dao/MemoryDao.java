package com.ctgu.device_manager.dao;

import com.ctgu.device_manager.pojo.Memory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;

/**
 * 
 * @author larry
 * @date 2020/2/16 12:21
 * @creed: Talk is cheap, show me the code!
 * 
 */


public interface MemoryDao extends JpaRepository<Memory, Integer> {

    @Query(nativeQuery = true, value = "SELECT * FROM memorymonitor m WHERE m.Timestamp > :date")
    List<Memory> findByTime(@Param("date") String date);

}

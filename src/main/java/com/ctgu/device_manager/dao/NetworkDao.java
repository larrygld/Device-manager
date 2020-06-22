package com.ctgu.device_manager.dao;

import com.ctgu.device_manager.pojo.Network;
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

public interface NetworkDao extends JpaRepository<Network, Integer> {

    @Query(nativeQuery = true, value = "SELECT * FROM networkmonitor n WHERE n.`Timestamp` > :date")
    List<Network> findByTime(@Param("date") String date);
}

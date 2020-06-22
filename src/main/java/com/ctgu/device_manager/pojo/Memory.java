package com.ctgu.device_manager.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Proxy;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Time;
import java.util.Date;

/***
 * 
 * @author larry
 * @date 2020/2/13 13:24
 * @creed: Talk is cheap, show me the code!
 * 
 */


@Data
@Entity
@Table(name = "memorymonitor")
@AllArgsConstructor
@NoArgsConstructor
@Proxy(lazy = false)
public class Memory {

    @Id
    @Column(name = "SID")
    private int sID;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "Timestamp")
    private Date timeStamp;

    @Column(name = "Usage")
    private float usage;

}

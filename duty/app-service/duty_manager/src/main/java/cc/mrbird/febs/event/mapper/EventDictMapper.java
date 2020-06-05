package cc.mrbird.febs.event.mapper;

import cc.mrbird.febs.event.entity.EventDict;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 事件类型表 Mapper
 *
 * @author cjs
 * @date 2020-03-09 10:33:57
 */
public interface EventDictMapper extends BaseMapper<EventDict> {

    List<EventDict> geteventDictList(String pid);
}

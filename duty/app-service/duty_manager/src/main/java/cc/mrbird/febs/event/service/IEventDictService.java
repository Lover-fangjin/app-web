package cc.mrbird.febs.event.service;

import cc.mrbird.febs.event.entity.EventDict;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 事件类型表 Service接口
 *
 * @author cjs
 * @date 2020-03-09 10:33:57
 */
public interface IEventDictService extends IService<EventDict> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param eventDict eventDict
     * @return IPage<EventDict>
     */
    IPage<EventDict> findEventDicts(QueryRequest request, EventDict eventDict);

    /**
     * 查询（所有）
     *
     * @param eventDict eventDict
     * @return List<EventDict>
     */
    List<EventDict> findEventDicts(EventDict eventDict);

    /**
     * 新增
     *
     * @param eventDict eventDict
     */
    void createEventDict(EventDict eventDict);

    /**
     * 修改
     *
     * @param eventDict eventDict
     */
    void updateEventDict(EventDict eventDict);

    /**
     * 删除
     *
     * @param eventDict eventDict
     */
    void deleteEventDict(EventDict eventDict);



    List<EventDict> geteventDictList(String pid);
}

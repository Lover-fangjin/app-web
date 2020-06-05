package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.System;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 系统表 Service接口
 *
 * @author cjs
 * @date 2020-03-31 13:51:15
 */
public interface ISystemService extends IService<System> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param system system
     * @return IPage<System>
     */
    IPage<System> findSystems(QueryRequest request, System system);

    /**
     * 查询（所有）
     *
     * @param system system
     * @return List<System>
     */
    List<System> findSystems(System system);

    /**
     * 新增
     *
     * @param system system
     */
    void createSystem(System system);

    /**
     * 修改
     *
     * @param system system
     */
    void updateSystem(System system);

    /**
     * 删除
     *
     * @param system system
     */
    void deleteSystem(System system);
}

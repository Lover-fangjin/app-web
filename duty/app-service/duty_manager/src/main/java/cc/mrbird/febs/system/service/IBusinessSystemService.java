package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.BusinessSystem;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 业务体系表 Service接口
 *
 * @author cjs
 * @date 2020-03-31 13:51:13
 */
public interface IBusinessSystemService extends IService<BusinessSystem> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param businessSystem businessSystem
     * @return IPage<BusinessSystem>
     */
    IPage<BusinessSystem> findBusinessSystems(QueryRequest request, BusinessSystem businessSystem);

    /**
     * 查询（所有）
     *
     * @param businessSystem businessSystem
     * @return List<BusinessSystem>
     */
    List<BusinessSystem> findBusinessSystems(BusinessSystem businessSystem);

    /**
     * 新增
     *
     * @param businessSystem businessSystem
     */
    void createBusinessSystem(BusinessSystem businessSystem);

    /**
     * 修改
     *
     * @param businessSystem businessSystem
     */
    void updateBusinessSystem(BusinessSystem businessSystem);

    /**
     * 删除
     *
     * @param businessSystem businessSystem
     */
    void deleteBusinessSystem(BusinessSystem businessSystem);
}

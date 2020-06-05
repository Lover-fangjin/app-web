package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.DutyInfo;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 *  Service接口
 *
 * @author cjs
 * @date 2020-03-26 13:33:46
 */
public interface IDutyInfoService extends IService<DutyInfo> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param dutyInfo dutyInfo
     * @return IPage<DutyInfo>
     */
    IPage<DutyInfo> findDutyInfos(QueryRequest request, DutyInfo dutyInfo);

    /**
     * 查询（所有）
     *
     * @param dutyInfo dutyInfo
     * @return List<DutyInfo>
     */
    List<DutyInfo> findDutyInfos(DutyInfo dutyInfo);

    /**
     * 新增
     *
     * @param dutyInfo dutyInfo
     */
    void createDutyInfo(DutyInfo dutyInfo);

    /**
     * 修改
     *
     * @param dutyInfo dutyInfo
     */
    void updateDutyInfo(DutyInfo dutyInfo);

    /**
     * 删除
     *
     * @param dutyInfo dutyInfo
     */
    void deleteDutyInfo(DutyInfo dutyInfo);
}

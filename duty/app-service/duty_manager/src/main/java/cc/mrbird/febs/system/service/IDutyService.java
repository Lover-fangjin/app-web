package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Duty;
import cc.mrbird.febs.system.entity.DutyExport;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 *  Service接口
 *
 * @author cjs
 * @date 2020-03-26 13:33:49
 */
public interface IDutyService extends IService<Duty> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param duty duty
     * @return IPage<Duty>
     */
    IPage<Duty> findDutys(QueryRequest request, Duty duty);

    /**
     * 查询（所有）
     *
     * @param duty duty
     * @return List<Duty>
     */
    List<Duty> findDutys(Duty duty);

    /**
     * 新增
     *
     * @param duty duty
     */
    void createDuty(Duty duty);

    /**
     * 修改
     *
     * @param duty duty
     */
    void updateDuty(Duty duty);

    /**
     * 删除
     *
     * @param duty duty
     */
    void deleteDuty(Duty duty);

    List<User> getUsersByDeptid(String deptid);

    IPage<Duty> findDutyList(QueryRequest request, Duty duty, User user);

    void deleteDutys(String[] dutyIds);

    Duty findById(Long id);

    List<DutyExport> findDutysByExport(Duty duty, User user);
}

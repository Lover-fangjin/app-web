package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.Adivision;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 行政区域管理 Service接口
 *
 * @author cjs
 * @date 2020-03-31 13:51:20
 */
public interface IAdivisionService extends IService<Adivision> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param adivision adivision
     * @return IPage<Adivision>
     */
    IPage<Adivision> findAdivisions(QueryRequest request, Adivision adivision);

    /**
     * 查询（所有）
     *
     * @param adivision adivision
     * @return List<Adivision>
     */
    List<Adivision> findAdivisions(Adivision adivision);

    /**
     * 新增
     *
     * @param adivision adivision
     */
    void createAdivision(Adivision adivision);

    /**
     * 修改
     *
     * @param adivision adivision
     */
    void updateAdivision(Adivision adivision);

    /**
     * 删除
     *
     * @param adivision adivision
     */
    void deleteAdivision(Adivision adivision);
}

package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.Company;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 企业 Service接口
 *
 * @author cjs
 * @date 2020-03-31 13:51:18
 */
public interface ICompanyService extends IService<Company> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param company company
     * @return IPage<Company>
     */
    IPage<Company> findCompanys(QueryRequest request, Company company);

    /**
     * 查询（所有）
     *
     * @param company company
     * @return List<Company>
     */
    List<Company> findCompanys(Company company);

    /**
     * 新增
     *
     * @param company company
     */
    void createCompany(Company company);

    /**
     * 修改
     *
     * @param company company
     */
    void updateCompany(Company company);

    /**
     * 删除
     *
     * @param company company
     */
    void deleteCompany(Company company);
}

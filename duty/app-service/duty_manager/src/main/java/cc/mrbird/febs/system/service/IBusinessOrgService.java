package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.BusinessOrgTree;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.BusinessOrg;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 *  Service接口
 *
 * @author cjs
 * @date 2020-03-19 15:39:02
 */
public interface IBusinessOrgService extends IService<BusinessOrg> {


    /**
     * 新增
     *
     * @param businessOrg businessOrg
     */
    void createBusinessOrg(BusinessOrg businessOrg);

    /**
     * 修改
     *
     * @param businessOrg businessOrg
     */
    void updateBusinessOrg(BusinessOrg businessOrg);





    IPage<BusinessOrg> findBusinessOrgsList(QueryRequest request, BusinessOrg businessOrg);

    void deleteBusinessOrgs(String[] businessorgIds);

    List<BusinessOrgTree<BusinessOrg>> findBusinessOrgs();

    BusinessOrg findById(Long id);
}

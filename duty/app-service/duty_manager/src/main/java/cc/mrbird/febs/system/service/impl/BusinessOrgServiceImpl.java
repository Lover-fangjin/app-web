package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.BusinessOrgTree;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.common.utils.TreeUtil;
import cc.mrbird.febs.system.entity.BusinessOrg;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.mapper.BusinessOrgMapper;
import cc.mrbird.febs.system.service.IBusinessOrgService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 *  Service实现
 *
 * @author cjs
 * @date 2020-03-19 15:39:02
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class BusinessOrgServiceImpl extends ServiceImpl<BusinessOrgMapper, BusinessOrg> implements IBusinessOrgService {

    @Autowired
    private BusinessOrgMapper businessOrgMapper;

    @Override
    public IPage<BusinessOrg> findBusinessOrgsList(QueryRequest request, BusinessOrg businessOrg) {
        LambdaQueryWrapper<BusinessOrg> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<BusinessOrg> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findBusinessOrgsList(page, businessOrg);
    }

    @Override
    @Transactional
    public void createBusinessOrg(BusinessOrg businessOrg) {
        Long parentId = businessOrg.getParentId();
        if (parentId == null)
            businessOrg.setParentId(0L);
        businessOrg.setCreateTime(new Date());
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        if(user!=null) {
            businessOrg.setCreateId(user.getId());
        }
        this.save(businessOrg);
    }

    @Override
    @Transactional
    public void updateBusinessOrg(BusinessOrg businessOrg) {
        this.saveOrUpdate(businessOrg);
    }

    @Override
    public void deleteBusinessOrgs(String[] businessorgIds) {
        List<String> list = Arrays.asList(businessorgIds);
        // 删除业务
        this.removeByIds(list);
    }

    @Override
    public List<BusinessOrgTree<BusinessOrg>> findBusinessOrgs() {
        List<BusinessOrg> businessOrgs = this.baseMapper.selectList(new QueryWrapper<>());
        List<BusinessOrgTree<BusinessOrg>> trees = this.convertBusinessOrgs(businessOrgs);
        return TreeUtil.buildBusinessOrgTree(trees);
    }



    private List<BusinessOrgTree<BusinessOrg>> convertBusinessOrgs(List<BusinessOrg> businessOrgs){
        List<BusinessOrgTree<BusinessOrg>> trees = new ArrayList<>();
        businessOrgs.forEach(businessOrg -> {
            BusinessOrgTree<BusinessOrg> tree = new BusinessOrgTree<>();
            tree.setId(String.valueOf(businessOrg.getId()));
            tree.setParentId(String.valueOf(businessOrg.getParentId()));
            tree.setName(businessOrg.getName());
            tree.setData(businessOrg);
            trees.add(tree);
        });
        return trees;
    }


    @Override
    public BusinessOrg findById(Long id) {
        return baseMapper.findById(id);
    }

}

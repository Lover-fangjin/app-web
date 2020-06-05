package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.system.entity.ProjectInfo;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.mapper.ProjectInfoMapper;
import cc.mrbird.febs.system.service.IProjectInfoService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 *  Service实现
 *
 * @author cjs
 * @date 2020-03-20 11:13:17
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ProjectInfoServiceImpl extends ServiceImpl<ProjectInfoMapper, ProjectInfo> implements IProjectInfoService {

    @Autowired
    private ProjectInfoMapper projectInfoMapper;

    @Override
    public IPage<ProjectInfo> findProjectInfosList(QueryRequest request, ProjectInfo projectInfo) {
        LambdaQueryWrapper<ProjectInfo> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<ProjectInfo> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findProjectInfosList(page, projectInfo);
    }

    @Override
    @Transactional
    public void createProjectInfo(ProjectInfo projectInfo) {
        projectInfo.setCreateTime(new Date());
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        if(user!=null) {
            projectInfo.setCreateId(user.getId());
        }
        this.save(projectInfo);
    }

    @Override
    @Transactional
    public void updateProjectInfo(ProjectInfo projectInfo) {
        this.saveOrUpdate(projectInfo);
    }

    @Override
    public void deleteProjectInfos(String[] projectinfoIds) {
        List<String> list = Arrays.asList(projectinfoIds);
        // 删除业务
        this.removeByIds(list);
    }

    @Override
    public ProjectInfo findById(Long id) {
        return baseMapper.findById(id);
    }

    @Override
    public List<User> getUsersByDeptid(String deptid) {
        return baseMapper.getUsersByDeptid(deptid);
    }
}

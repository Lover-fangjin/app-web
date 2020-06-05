package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.ProjectInfo;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 *  Service接口
 *
 * @author cjs
 * @date 2020-03-20 11:13:17
 */
public interface IProjectInfoService extends IService<ProjectInfo> {




    /**
     * 新增
     *
     * @param projectInfo projectInfo
     */
    void createProjectInfo(ProjectInfo projectInfo);

    /**
     * 修改
     *
     * @param projectInfo projectInfo
     */
    void updateProjectInfo(ProjectInfo projectInfo);



    IPage<ProjectInfo> findProjectInfosList(QueryRequest request, ProjectInfo projectInfo);

    void deleteProjectInfos(String[] projectinfoIds);

    ProjectInfo findById(Long id);

    List<User> getUsersByDeptid(String deptid);
}

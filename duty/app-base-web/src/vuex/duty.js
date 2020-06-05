const duty = {
    state: {
        currentArea: {
            type: '1',
            name: '北京市',
        },
        statistic: {},
        vipId: 'none',
        search:{},
        windShow:true
    },

    mutations: {
        updateCurrentArea (state, value) {
            state.currentArea = value;
        },
        updateStatistic (state, value) {
            state.statistic = value;
        },
        updateVipId (state, value) {
            state.vipId = value;
        },
        updateSearch (state, value){
            state.search = value;
        },
        updateWindShow (state, value){
            state.windShow = value;
        }

    },

    actions: {},

    getters: {
        currentArea (state){
            return state.currentArea;
        },
        statistic (state){
            return state.statistic;
        },
        vipId (state){
            return state.vipId;
        },
        search (state){
            return state.search;
        },
        windShow (state){
            return state.windShow;
        }
    },
}

export default duty
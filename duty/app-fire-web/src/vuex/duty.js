const duty = {
    state: {
        wacthInfo: [],
        eventlist: [],
        siteInfos: [],
        dutyInfos: []
    },

    mutations: {
        updateWacthInfo (state, value) {
            state.wacthInfo = value;
        },
        updateEventlist (state, value) {
            state.eventlist = value;
        },
        updateSiteInfos (state, value) {
            state.siteInfos = value;
        },
        updateDutyInfos (state, value) {
            state.dutyInfos = value;
        },
    },

    actions: {},

    getters: {
        wacthInfo (state){
            return state.wacthInfo;
        },
        eventlist (state){
            return state.eventlist;
        },
        siteInfos (state){
            return state.siteInfos;
        },
        dutyInfos (state){
            return state.dutyInfos;
        },
    },
}

export default duty
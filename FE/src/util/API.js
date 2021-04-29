const END_POINT = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan";
const TEAM_END_POINT = "http://13.125.229.168:8080";

const API = {
  get: {
    main: async () => {
      const response = await fetch(`${END_POINT}/main`);
      return response.json();
    },

    soup: async () => {
      const response = await fetch(`${END_POINT}/soup`);
      return response.json();
    },

    side: async () => {
      const response = await fetch(`${END_POINT}/side`);
      return response.json();
    },
    detail: ({ hash }) => {
      return customFetch(`/banchan/detail/${hash}`);
    },
    best: () => {
      return customFetch(`/banchan/best`);
    }
  },
  post: {}
};

const customFetch = async (...param) => {
  const fetchData = await (await fetch(...param)).json();
  if (fetchData.statusCode >= 400 || fetchData.body === null) throw { status: 'fail' };
  return fetchData;
};

export default API;
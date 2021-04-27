const END_POINT = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan";

const API = {
  get: {
    maindish: async () => {
      const response = await fetch(`${END_POINT}/main`);
      return response.json();
    },
    detail: ({ hash }) => {
      return customFetch(`${END_POINT}/detail/${hash}`);
    },
    best: () => {
      return customFetch(`${END_POINT}/best`);
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
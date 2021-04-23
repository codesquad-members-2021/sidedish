const END_POINT = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan";

const API = {
  get: {
    maindish: async () => {
      const response = await fetch(`${END_POINT}/main`);
      return response.json();
    }
  },
  post: {}
};

export default API;
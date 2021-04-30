const END_POINT = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan";
const TEAM_END_POINT = "http://13.125.229.168:8080";

const API = {
  get: {
    main: async () => {
      // const response = await fetch(`${TEAM_END_POINT}/banchan/main`);
      const response = await fetch(`/banchan/main`);
      return response.json();
    },

    soup: async () => {
      const response = await fetch(`/banchan/soup`);
      return response.json();
    },

    side: async () => {
      const response = await fetch(`/banchan/side`);
      return response.json();
    },

    random10: async () => {
      const main = await fetch(`/banchan/main`);
      const soup = await fetch(`/banchan/soup`);
      const side = await fetch(`/banchan/side`);
      const list = [...await main.json(), ...await soup.json(), ...await side.json()];
      const indexes = [...Array(24).keys()].sort((l,r) => Math.random() - Math.random()).slice(0,10);
      return indexes.map((idx) => list[idx]);
      // const idxes = [...Array(10)].map(_ => parseInt(Math.random()*1000) % 24 );
      // Math.random()*100%24
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
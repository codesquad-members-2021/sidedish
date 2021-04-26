let USER;
let SERVER_URL = 'http://3.36.66.115';

const Global = {
  setServerUrl: (serverUrl) => { SERVER_URL = serverUrl },
  getServerUrl: () => SERVER_URL,
}

export default Global;
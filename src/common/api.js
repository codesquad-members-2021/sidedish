const API = () => {
    const URL = "https://codesquad-2021-api.herokuapp.com/sidedish";
    const API = path => {
        const req = {
            method : 'GET',
            headers: {
                "Content-Type": "application/json",
            }
        };
        return fetch(URL + path, req);
    }
    return async (path) => {
        const result = await API(path);
        let json = await result.json();
        if (!json || json.length === 0) json = null;
        return json;
    }
}

export default API();

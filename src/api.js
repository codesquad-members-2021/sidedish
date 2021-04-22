const api = () => {
    const URL = "https://codesquad-2021-api.herokuapp.com/sidedish";
    const api = (path="", data="") => {
        const req = {
            method : 'GET',
            headers: {
                "Content-Type": "application/json",
            }
        };
        return fetch(URL + path, req);
    }
    return async(path, data) => {
        const result = await api(path, data);
        let json = await result.json();
        if (!json || json.length === 0) json = null;
        return json;
    }
}

export default api();

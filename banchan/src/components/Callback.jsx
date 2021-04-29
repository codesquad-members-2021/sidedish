import { useEffect } from "react";
import axios from "axios";
import qs from "qs";
import { URLS } from "../utils/variables";

const Callback = ({ history, location }) => {
  const authUri = `http://${URLS.gcphost}:8080/auth`;

  useEffect(() => {
    const getToken = async () => {
      const { code } = qs.parse(location.search, {
        ignoreQueryPrefix: true,
      });

      try {
        const { data } = await axios.post(authUri, {
          code,
        });

        localStorage.setItem("token", data.jwt_token);
        history.push("/");
      } catch (error) {
        history.push("/error");
      }
    };
    getToken();
  }, [location, history]);
  return null;
};

export default Callback;

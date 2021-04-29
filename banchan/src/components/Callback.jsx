import { useEffect } from "react";
import axios from "axios";
import qs from "qs";

const localhost = "localhost";
const gcphost = "34.64.120.145";

const Callback = ({ history, location }) => {
  useEffect(() => {
    const getToken = async () => {
      const { code } = qs.parse(location.search, {
        ignoreQueryPrefix: true,
      });

      try {
        const { data } = await axios.post(`http://${gcphost}:5000/auth`, {
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

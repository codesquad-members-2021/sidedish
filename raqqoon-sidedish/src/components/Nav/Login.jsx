import styled from 'styled-components';
import { useEffect } from 'react';
import qs from 'qs';

const Login = () => {
  useEffect(() => {
    const getToken = async () => {
      const { code } = qs.parse(window.location.search, {
        ignoreQueryPrefix: true,
      });

      try {
        const res = await fetch(`http://localhost:3001/auth`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ data: code }),
        });
        const { access_token } = await res.json();
        localStorage.setItem('access_token', access_token);

        const homePage = 'http://localhost:3000';
        window.history.pushState(null, null, homePage);
      } catch (error) {
        console.error(error);
      }
    };

    getToken();
  }, []);
  return <LoginWrap href="http://localhost:3001/auth/github">로그인</LoginWrap>;
};

export default Login;

const LoginWrap = styled.a`
  padding-left: 1.5rem;
  font-family: Noto Sans KR;
  font-size: 1rem;
  cursor: pointer;
`;

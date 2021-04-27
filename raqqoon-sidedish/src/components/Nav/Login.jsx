import styled from 'styled-components';
import { useEffect } from 'react';
import qs from 'qs';

const Login = () => {
  useEffect(() => {
    async function getToken() {
      const { code } = qs.parse(window.location.search, {
        ignoreQueryPrefix: true,
      });

      try {
        // 이 부분은 express에 요청하여 JWT 토큰을 발급합니다.
        const { access_token } = await fetch(`http://localhost:3001/auth`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ data: code }),
        });
        // 유저 JWT 토큰을 저장합니다.
        localStorage.setItem('access_token', access_token);
      } catch (error) {}
    }

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

import styled from 'styled-components';
import { useState, useEffect } from 'react';
import qs from 'qs';
import { logInStyle, LoginModal } from 'components/nav/LoginModal';

const Login = () => {
  const [isLoggedin, setIsLoggedIn] = useState(false);
  const [USER_ID, setUSER_ID] = useState(null);
  const [isShowModal, setIsShowModal] = useState(false);

  const handleModalToggle = () => {
    setIsShowModal((status) => !status);
  };

  useEffect(() => {
    const getToken = async () => {
      const { code } = qs.parse(window.location.search, {
        ignoreQueryPrefix: true,
      });
      if (!code) return;

      try {
        const res = await fetch(`http://localhost:3001/auth`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ data: code }),
        });

        const { access_token, login } = await res.json();
        localStorage.setItem('access_token', access_token);

        setUSER_ID(login);
        setIsLoggedIn(true);
      } catch (error) {
        console.error(error);
      }
    };
    getToken();
    const homePage = 'http://localhost:3000';
    window.history.pushState(null, null, homePage);
  }, []);

  return (
    <>
      {isLoggedin ? (
        <Span>{USER_ID}</Span>
      ) : (
        <Span onClick={handleModalToggle}>로그인</Span>
      )}
      {isShowModal && <LoginModal handleModalToggle={handleModalToggle} />}
    </>
  );
};

export default Login;

const Span = styled.span`
  ${logInStyle};
  padding-left: 1.5rem;
  text-decoration: none;
  color: #333;
  margin: 0 0.6rem;
  :visited {
    text-decoration: none;
  }
  :hover {
    text-decoration: underline;
  }

`;

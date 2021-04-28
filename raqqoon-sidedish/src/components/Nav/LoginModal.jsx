import styled, { css } from 'styled-components';
import GitHubIcon from 'components/icons/GihubIcon';

const logInStyle = css`
  padding: 0;
  font-family: Noto Sans KR;
  font-size: 1rem;
  cursor: pointer;
`;

const LoginModal = ({ handleModalToggle }) => {
  return (
    <Shadow onClick={handleModalToggle}>
      <GithubLogin href="http://localhost:3001/auth/github">
        <GitHubIcon />
        <div>
          <span>Sign in with GitHub</span>
        </div>
      </GithubLogin>
    </Shadow>
  );
};

export { LoginModal, logInStyle };

const GithubLogin = styled.a`
  ${logInStyle};
  display: flex;
  align-items: center;
  padding: 0.8rem 1.1rem;
  background: black;
  border-radius: 5px;
  text-decoration: none;

  span {
    color: #fff;
    font-size: 1.4rem;
    padding-left: 0.7rem;
  }
`;

const Shadow = styled.div`
  position: fixed;
  display: flex;
  justify-content: center;
  align-items: center;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.3);
  z-index: 2;
`;

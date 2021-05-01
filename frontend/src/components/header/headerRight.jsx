import styled from 'styled-components';
import { BsSearch } from 'react-icons/bs';
import UserInfo from './UserInfo';
import { AlignTextCenter } from '../style/Theme';

function HeaderRight({ loginState, setLoginState, userName, userIMG }) {
	console.log(userName, userIMG);
	const loginUrl = `https://github.com/login/oauth/authorize?client_id=e1541c566570ff3e0151&redirect_uri=http://localhost:3000/logIn&scope=user`;

	return (
		<HeaderRightBlock>
			<HeaderSeachBar>
				<HeaderSearchInput />
				<SearchBarIcon>
					<BsSearch />
				</SearchBarIcon>
			</HeaderSeachBar>
			<button>장바구니</button>
			{loginState ? (
				<UserInfo {...{ loginState, setLoginState, userName, userIMG }} />
			) : (
				<button>
					<a href={loginUrl}>로그인</a>
				</button>
			)}
		</HeaderRightBlock>
	);
}

export default HeaderRight;
const HeaderRightBlock = styled.div`
	button {
		margin-left: 15px;
		font-size: 16px;
	}
	display: flex;
	align-items: center;
	div {
		margin-left: 15px;
	}
`;
const HeaderSeachBar = styled.div`
	display: flex;
	background: #f5f5f7;
	height: 40px;
	width: 248px;
`;
const HeaderSearchInput = styled.input`
	background: #f5f5f7;
	border-radius: 5px;
	border: none;
	padding: 0 16px;
	box-sizing: border-box;
	&:focus {
		outline: none;
	}
	position: relative;
`;
const SearchBarIcon = styled(AlignTextCenter)``;

//로그아웃 요청 백엔드 질문하기.
// import { useState } from 'react';
// import useFetch from '../useFetch';
// const [logoutPath, setLogoutUrl] = useState(null);
// const [logout, loadingLogOutState] = useFetch(logoutPath, token);
// const logoutUrl = `'http://15.164.68.136:8080/logout'`;

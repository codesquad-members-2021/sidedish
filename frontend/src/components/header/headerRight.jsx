import styled from 'styled-components';
import { BsSearch } from 'react-icons/bs';
import { theme } from '../style/Theme';
function HeaderRight({ loginState, setLoginState, userName, userIMG }) {
	console.log(userName, userIMG);
	const loginUrl = `https://github.com/login/oauth/authorize?client_id=e1541c566570ff3e0151&redirect_uri=http://localhost:3000/logIn&scope=user`;
	const handleClick = () => {
		localStorage.setItem('isLogin', false);
		localStorage.removeItem('userId');
		localStorage.removeItem('token');
		setLoginState(false);
	};

	return (
		<HeaderRightBlock>
			<HeaderSeachBar />
			<SearchBarIcon>
				<BsSearch />
			</SearchBarIcon>
			<button>장바구니</button>
			{loginState ? (
				<>
					<Profile url={userIMG}></Profile>
					<button onClick={handleClick}>로그아웃</button>
				</>
			) : (
				<button>
					<a href={loginUrl}>로그인</a>
				</button>
			)}
		</HeaderRightBlock>
	);
}

export default HeaderRight;
const Profile = styled.div`
	width: 50px;
	height: 50px;
	background-image: url(${(props) => props.url});
	background-size: cover;
	border: 1px solid ${theme.colors.grey_css};
	border-radius: 50px;
`;
const HeaderRightBlock = styled.div`
	button {
		font-size: 16px;
		margin-left: 24px;
	}
	position: relative;
	display: flex;
`;

const HeaderSeachBar = styled.input`
	height: 40px;
	width: 248px;
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
const SearchBarIcon = styled.div`
	position: absolute;
	left: 51%;
	top: 23.38%;
`;

// import { useState } from 'react';
// import useFetch from '../useFetch';
// const [logoutPath, setLogoutUrl] = useState(null);
// const [logout, loadingLogOutState] = useFetch(logoutPath, token);
// const logoutUrl = `'http://15.164.68.136:8080/logout'`;

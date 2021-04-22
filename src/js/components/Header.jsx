import styled from "styled-components";

const HeaderWrapper = styled.div`
	position: relative;
	width: 1440px;
	height: 122px;

	font-family: Noto Sans KR;
	font-style: normal;
`;
const Title = styled.div`
	position: absolute;
	width: 190px;
	height: 58px;
	top: 32px;
	left: 0px;

	font-weight: 900;
	font-size: 40px;
	line-height: 58px;
	letter-spacing: -0.04em;
	text-transform: uppercase;
	color: #333333;
`;
const MenuWrapper = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	justify-content: space-between;
	position: absolute;
	padding: 0px;
	width: 354px;
	height: 23px;
	top: 50px;
	left: 246px;
`;
const Menu = styled.div`
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333333;
`;
const SearchBar = styled.input`
	position: absolute;
	width: 248px;
	height: 40px;
	top: 41px;
	left: 898px;
	border-radius: 5px;
	border: none;
	background: #f5f5f7;
`;
const SearchBarIcon = styled.div`
	position: absolute;
	top: 50px;
	left: 1116px;
`;
const Login = styled.div`
	position: absolute;
	top: 50px;
	left: 1172px;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333333;
`;
const Basket = styled.div`
	position: absolute;
	top: 50px;
	left: 1241px;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333333;
`;

const Header = () => (
	<HeaderWrapper>
		<Title>banchan</Title>
		<MenuWrapper>
			<Menu>든든한 메인요리</Menu>
			<Menu>뜨끈한 국물요리</Menu>
			<Menu>정갈한 밑반찬</Menu>
		</MenuWrapper>
		<SearchBar />
		<SearchBarIcon>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z" stroke="#BDBDBD" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
				<path d="M20.9999 21L16.6499 16.65" stroke="#BDBDBD" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
			</svg>
		</SearchBarIcon>
		<Login>로그인</Login>
        <Basket>장바구니</Basket>
	</HeaderWrapper>
);

export default Header;

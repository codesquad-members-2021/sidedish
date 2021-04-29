import styled from "styled-components";
import Menu from "./HeaderMenu";
import SearchBarIcon from "./HeaderSearchIcon";

const Header = () => (
	<HeaderWrapper>
		<Title>banchan</Title>
		<MenuWrapper>
			<Menu title="든든한 메인요리" body={["육류 요리", "해산물 요리"]} />
			<Menu title="뜨끈한 국물요리" body={["국/밥/찌개"]} />
			<Menu title="뜨끈한 국물요리" body={["나물/무침", "조림/볶음", "절임/장아찌"]} />
		</MenuWrapper>
		<SearchBar />
		<SearchBarIcon />
		<Login>로그인</Login>
		<Basket>장바구니</Basket>
	</HeaderWrapper>
);

const HeaderWrapper = styled.div`
	position: relative;
	width: 1280px;
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
	width: 360px;
	height: 23px;
	top: 50px;
	left: 246px;
`;
const SearchBar = styled.input`
	position: absolute;
	width: 248px;
	height: 40px;
	top: 41px;
	left: 878px;
	border-radius: 5px;
	border: none;
	background: #f5f5f7;
`;
const Login = styled.div`
	position: absolute;
	top: 50px;
	left: 1152px;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333;
	&:hover {
		font-weight: bold;
	}
`;
const Basket = styled.div`
	position: absolute;
	top: 50px;
	left: 1221px;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333;
	&:hover {
		font-weight: bold;
	}
`;

export default Header;

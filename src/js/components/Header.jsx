import { useState } from "react";
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
	width: 360px;
	height: 23px;
	top: 50px;
	left: 246px;
`;
const Menu = styled.div``;
const MenuTitle = styled.div`
	font-weight: ${(props) => (props.isOn ? "bold" : "normal")};
	font-size: 16px;
	line-height: 23px;
	color: #333;
`;
const MenuBodyWrapper = styled.div`
	visibility: ${(props) => (props.isOn ? "visible" : "hidden")};
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	position: relative;
	top: 16px;
	padding: 16px;
	background: #fff;
	box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
	z-index: 1;
`;
const MenuBody = styled.div`
	font-size: 16px;
	line-height: 28px;
	color: #828282;
	&:hover {
		color: #333333;
		text-decoration-line: underline;
	}
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
	color: #333;
	&:hover {
		font-weight: bold;
	}
`;
const Basket = styled.div`
	position: absolute;
	top: 50px;
	left: 1241px;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333;
	&:hover {
		font-weight: bold;
	}
`;

const Header = () => {
	const [isM1On, setM1On] = useState(false);
	const [isM2On, setM2On] = useState(false);
	const [isM3On, setM3On] = useState(false);
	return (
		<HeaderWrapper>
			<Title>banchan</Title>
			<MenuWrapper>
				<Menu onMouseEnter={() => setM1On(true)} onMouseLeave={() => setM1On(false)}>
					<MenuTitle isOn={isM1On}>든든한 메인요리</MenuTitle>
					<MenuBodyWrapper isOn={isM1On}>
						<MenuBody>육류 요리</MenuBody>
						<MenuBody>해산물 요리</MenuBody>
					</MenuBodyWrapper>
				</Menu>
				<Menu onMouseEnter={() => setM2On(true)} onMouseLeave={() => setM2On(false)}>
					<MenuTitle isOn={isM2On}>뜨끈한 국물요리</MenuTitle>
					<MenuBodyWrapper isOn={isM2On}>
						<MenuBody>국/밥/찌개</MenuBody>
					</MenuBodyWrapper>
				</Menu>
				<Menu onMouseEnter={() => setM3On(true)} onMouseLeave={() => setM3On(false)}>
					<MenuTitle isOn={isM3On}>정갈한 밑반찬</MenuTitle>
					<MenuBodyWrapper isOn={isM3On}>
						<MenuBody>나물/무침</MenuBody>
						<MenuBody>조림/볶음</MenuBody>
						<MenuBody>절임/장아찌</MenuBody>
					</MenuBodyWrapper>
				</Menu>
			</MenuWrapper>
			<SearchBar />
			<SearchBarIcon>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z" stroke="#BDBDBD" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
					<path d="M20.9999 21L16.6499 16.65" stroke="#BDBDBD" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
				</svg>
			</SearchBarIcon>
			<Login>로그인</Login>
			<Basket>장바구니</Basket>
		</HeaderWrapper>
	);
};

export default Header;

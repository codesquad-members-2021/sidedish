import { theme } from '../style/Theme';
import styled from 'styled-components';
import { useState } from 'react';
function UserInfo({ loginState, setLoginState, userName, userIMG }) {
	const [hoverState, setHoverState] = useState(false);
	const handleClick = () => {
		localStorage.setItem('isLogin', false);
		localStorage.removeItem('userId');
		localStorage.removeItem('token');
		setLoginState(false);
	};

	return (
		<>
			<UserInfoBlock
				className="info"
				onMouseEnter={() => setHoverState(true)}
				onMouseLeave={() => setHoverState(false)}
			>
				<Profile url={userIMG}>
					{hoverState && (
						<UserModal hoverState={hoverState}>
							<li>
								Hi <strong>{userName}😉</strong>
							</li>
							<li>회원정보수정</li>
							<li onClick={handleClick}>로그아웃</li>
						</UserModal>
					)}
				</Profile>
			</UserInfoBlock>
		</>
	);
}
export default UserInfo;

const UserInfoBlock = styled.div`
	display: flex;
	flex-direction: column;
	padding-bottm: 17px;
`;
const UserModal = styled.div`
	width: 200px;
	background: #ffffff;
	box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
		0px 2px 4px rgba(0, 0, 0, 0.25);
	backdrop-filter: blur(4px);
	position: relative;
	top: 85px;
	left: -150px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding: 20px 0px;
	li {
		padding: 10px 0px;
		text-align: center;
		&:hover {
			cursor: pointer;
			text-decoration-line: underline;
		}
	}
`;
const Profile = styled.div`
	width: 80px;
	height: 80px;
	background-image: url(${(props) => props.url});
	background-size: cover;
	border: 1px solid ${theme.colors.grey_css};
	border-radius: 50%;
	box-sizing: border-box;
`;

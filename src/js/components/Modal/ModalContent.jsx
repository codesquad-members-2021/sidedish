
import styled from "styled-components";

const ContentWrapper = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	margin: 16px 0px;
`;
const ContentTitle = styled.div`
	width: 76px;
	color: #828282;
`;
const ContentBody = styled.div`
	width: 364px;
	color: #4f4f4f;
`;
const Content = ({ title, body }) => {
	const free = "(40,000원 이상 구매 시 무료)";
	return (
		<ContentWrapper>
			<ContentTitle>{title}</ContentTitle>
			<ContentBody>
				{body.replace(free, "")}
				<b>{body.includes(free) ? free : ""}</b>
			</ContentBody>
		</ContentWrapper>
	);
};

export default Content
import styled from 'styled-components/';

const TitleBlock = styled.div`
	font-size: 24px;
	font-weight: 800;
	line-height: 34.75px;
	padding-bottom: 32px;
	box-sizing: border-box;
`;
function Title({ children }) {
	return <TitleBlock>{children}</TitleBlock>;
}

export default Title;

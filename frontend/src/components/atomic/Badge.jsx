import * as basicStyle from '../style/Theme';
import styled from 'styled-components';
const BadgeBlock = styled.div`
	display: flex;
`;
const BadgeIcon = styled(basicStyle.AlignTextCenter)`
	width: 97px;
	height: 28px;
	margin-top: 20px;
	margin-right: 20px;
	background-color: ${(props) => {
		return props.val === '이벤트특가'
			? basicStyle.theme.colors.green
			: basicStyle.theme.colors.skyblue_badge;
	}};
	color: ${basicStyle.theme.colors.white};
	font-weight: Bold;
	font-size: ${basicStyle.theme.fontSize.small};
	border-radius: 10px;
`;

function Badge({ data }) {
	return (
		<BadgeBlock>
			{data &&
				data.map((el, idx) => (
					<BadgeIcon key={'badges' + idx} val={el}>
						{el}
					</BadgeIcon>
				))}
		</BadgeBlock>
	);
}

export default Badge;

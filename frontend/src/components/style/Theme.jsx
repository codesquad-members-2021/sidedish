import styled from 'styled-components/';

export const theme = {
	colors: {
		skyblue: '#EEF4FA',
		skyblue_badge: '#86C6FF',
		grey_css: '#F5F5F7',
		grey_text: '#828282',
		deep_grey_text: '#4F4F4F',
		green: '#82D32D',
		white: '#FFFFFF',
		black: '#3333333',
	},
	fontSize: {
		small: '14px',
		medium: '16px',
		large: '18px',
		larger: '24px',
		X_large: '40px',
	},
	fontWeight: {
		bold: 800,
		normal: 400,
	},
	padding: {
		globalPadding: '0 40px',
	},
};

export const AlignTextCenter = styled.div`
	display: flex;
	align-items: center;
	justify-content: center;
`;

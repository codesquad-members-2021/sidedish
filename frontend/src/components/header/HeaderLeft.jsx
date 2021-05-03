import styled from 'styled-components';
import MenuTab from './MenuTab';
import Logo from '../atomic/Logo';

function HeaderLeft() {
	return (
		<HeaderLeftBlock>
			<Logo>BANCHAN</Logo>
			<HeaderMenu>
				<li>
					든든한 메인요리
					<MenuTab val={['육류 요리', '해산물 요리']} />
				</li>

				<li>
					뜨끈한 국물요리
					<MenuTab val={['국/탕/찌개']} />
				</li>

				<li>
					정갈한 밑반찬
					<MenuTab val={['나물/무침', '조림/볶음', '절임/장아찌']} />
				</li>
			</HeaderMenu>
		</HeaderLeftBlock>
	);
}

export default HeaderLeft;
const HeaderLeftBlock = styled.div`
	display: flex;
	align-items: center;
`;

const HeaderMenu = styled.ul`
	width: 393px;
	height: 23px;
	margin-left: 47px;
	display: grid;
	grid-gap: 20px;
	grid-template-columns: 1fr 1fr 1fr;
	font-size: 16px;
	li {
		position: relative;
		cursor: pointer;
		padding-bottom: 16px;
		&:hover {
			ul {
				display: flex;
			}
		}
	}
`;

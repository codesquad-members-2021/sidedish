import styled from 'styled-components';
import CategoryRender from './CategoryRender';
import { useState } from 'react';

function CategoryEntry() {
	const [toggle, setToggle] = useState(false);
	const category = toggle ? (
		<>
			<CategoryRender title={'모두가 좋아하는 든든한 메인요리'} url={'main'} />
			<CategoryRender title={'정성이 담긴 뜨끈한 국물요리'} url={'soup'} />
			<CategoryRender
				title={'식탁을 풍성하게 하는 정갈한 밑반찬'}
				url={'side'}
			/>
		</>
	) : (
		<CategoryRender title={'모두가 좋아하는 든든한 메인요리'} url={'main'} />
	);
	return (
		<>
			<CategoryBlock>
				{category}
				<CategoryBtn onClick={() => setToggle(!toggle)}>
					{toggle ? '카테고리 접기' : '모든 카테고리 보기'}
				</CategoryBtn>
			</CategoryBlock>
		</>
	);
}

export default CategoryEntry;

const CategoryBlock = styled.div`
	margin: 80px 0;
	width: 100%;
`;

const Button = styled.button`
	border: none;
	background-color: transparent;
	&:focus {
		outline: none;
	}
	cursor: pointer;
`;
const CategoryBtn = styled(Button)`
	width: 100%;
	height: 100px;
	background-color: #f5f5f7;
	font-size: 18px;
	font-weight: 700;
`;

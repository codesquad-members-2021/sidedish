import styled from 'styled-components';
import { theme, Title } from '../Theme';
import ItemCard from '../ItemCard';
import { AlignTextCenter } from '../Theme';
import useFetch from '../useFetch';
import { useState } from 'react';

const MainWrapper = styled.div`
	margin-top: 40px;
	width: 100%;
	padding: ${theme.padding.globalPadding};
	box-sizing: border-box;
`;
const TabWrapper = styled.div`
	display: flex;
`;

const Tab = styled(AlignTextCenter)`
	width: 201px;
	height: 58px;
	color: ${({ clickedID, id }) =>
		clickedID === id ? theme.colors.black : theme.colors.grey_text};
	background-color: ${({ clickedID, id }) =>
		clickedID === id ? theme.colors.skyblue : theme.colors.grey_css};
	font-weight: ${({ clickedID, id }) =>
		clickedID === id ? theme.fontWeight.bold : theme.fontWeight.normal};
	margin-right: 5px;
	font-size: ${theme.fontSize.large};
	cursor: pointer;
`;
const MainColumn = styled.div`
	width: 1280px;
	height: 620px;
	background-color: ${theme.colors.skyblue};
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	grid-gap: 30px;
	padding: 40px;
`;

function MainMenu() {
	let mokData;
	const basicUrl =
		'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best/';

	//5개: 탭 전체 데이터 요청
	const [bestDishMenu, bestDishLoading] = useFetch(basicUrl);
	const bestDishData = bestDishMenu.body;
	const [clickedID, setClickedID] = useState('17011200');

	//초기 베스트메뉴 url 설정
	const [fetchData, setFetchData] = useState(basicUrl + clickedID);

	//3개: 초기 베스트메뉴 데이터 요청
	const [initData, loadingState] = useFetch(fetchData);
	mokData = initData.items;

	//클릭한 후 해당 탭 데이터 요청
	const handleClick = (target, id) => {
		setClickedID(id);
		setFetchData(basicUrl + id);
	};

	return (
		<MainWrapper>
			<Title>후기가 증명하는 베스트 반찬</Title>
			<TabWrapper>
				{!bestDishLoading &&
					bestDishData.map((data, idx) => (
						<Tab
							onClick={({ target }) => handleClick(target, data.category_id)}
							clickedID={clickedID}
							id={data.category_id}
							key={idx}
						>
							{data.name}
						</Tab>
					))}
			</TabWrapper>

			<MainColumn>
				{!loadingState &&
					mokData.map((data, idx) => (
						<ItemCard key={idx} data={data} size={'L'}></ItemCard>
					))}
			</MainColumn>
		</MainWrapper>
	);
}

export default MainMenu;

import styled from 'styled-components';
import { theme, AlignTextCenter } from '../style/Theme';
import ItemCard from '../ItemCard';
import useFetch from '../useFetch';
import Title from '../atomic/Title';
import { useState } from 'react';
import Loading from '../state/Loading';

function MainMenu() {
	const basicUrl = process.env.REACT_APP_API_URL + 'best/';
	//5개: 탭 전체 데이터 요청
	const [bestDishMenu, bestDishLoading] = useFetch(basicUrl, 'get');
	const [clickedID, setClickedID] = useState(1);
	//초기 베스트메뉴 url 설정
	const [fetchData, setFetchData] = useState(basicUrl + 1);
	//3개: 초기 베스트메뉴 데이터 요청
	const [bestData, loadingState] = useFetch(fetchData, 'get');
	//클릭한 후 해당 탭 데이터 요청
	const handleClick = (target, id) => {
		setClickedID(id);
		setFetchData(basicUrl + id);
	};

	return (
		<MainBlock>
			<Title>후기가 증명하는 베스트 반찬</Title>
			<TabBlock>
				{!bestDishLoading &&
					bestDishMenu.map((data, idx) => (
						<Tab
							onClick={({ target }) => handleClick(target, data.bestCategoryId)}
							clickedID={clickedID}
							id={data.bestCategoryId}
							key={idx}
						>
							{data.name}
						</Tab>
					))}
			</TabBlock>

			<MainColumn>
				{loadingState ? (
					<Loading width="1280px" height="620px" />
				) : (
					bestData.items.map((data, idx) => (
						<ItemCard key={idx} data={data} size={'L'}></ItemCard>
					))

					//(bestData.items[0]['detailHash'] = null),
				)}
			</MainColumn>
		</MainBlock>
	);
}

export default MainMenu;

const MainBlock = styled.div`
	margin-top: 40px;
	width: 100%;
	padding: ${theme.padding.globalPadding};
	box-sizing: border-box;
`;
const TabBlock = styled.div`
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

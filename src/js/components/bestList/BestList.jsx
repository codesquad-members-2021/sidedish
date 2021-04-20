import { useEffect, useState } from "react";
import styled from "styled-components";
import Card from "../common/Card";

const BestListWrapper = styled.div``;
const Title = styled.div``;
const TabList = styled.ul`
	display: flex;
	flex-direction: row;
`;
const Tab = styled.li``;
const Box = styled.ul`
	display: flex;
	flex-direction: row;
`;

const BestList = () => {
	const [bestList, setBestList] = useState([{ items: [] }]);
	const [index, setIndex] = useState(0);

	useEffect(() => {
		fetch("https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best")
			.then((response) => response.json())
			.then((json) => setBestList(() => json.body));
	}, []);

	const clickHandler = ({ target }) => setIndex(() => bestList.findIndex(({ name }) => name === target.innerHTML));

	return (
		<BestListWrapper>
			<Title>후기가 증명하는 베스트 반찬</Title>
			<TabList>
				{bestList.map((e) => (
					<Tab key={parseInt(e.category_id)} onClick={clickHandler}>
						{e.name}
					</Tab>
				))}
			</TabList>
			<Box>
				{bestList[index].items.map((e) => (
					<Card key={e.detail_hash} size="LARGE" {...e} />
				))}
			</Box>
		</BestListWrapper>
	);
};

export default BestList;

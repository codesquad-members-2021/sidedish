import { useEffect, useState } from "react";
import styled from "styled-components";
import Card from "../common/Card";
const BestListWrapper = styled.div`
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
`;
const Title = styled.div`
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	margin-bottom: 32px;
`;
const TabList = styled.ul`
	display: flex;
	flex-direction: row;
`;
const Tab = styled.li`
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	padding: 16px 32px;
	list-style: none;
	background: ${(props) => (props.index === props.select ? "#EEF4FA" : "#f5f5f7")};
	border-radius: 5px 5px 0px 0px;
	margin-right: 8px;
	font-size: 18px;
	line-height: 26px;
	color: #828282;
`;
const Box = styled.ul`
	display: flex;
	flex-direction: row;
	position: relative;
	justify-content: space-evenly;
	width: 1280px;
	height: 620px;
	background: #eef4fa;
	border-radius: 0px 5px 5px 5px;
`;

const BestList = (props) => {
	const [bestList, setBestList] = useState([{ items: [] }]);
	const [index, setIndex] = useState(0);

	useEffect(() => {
		fetch("https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best")
			.then((response) => response.json())
			.then((json) => setBestList(() => json.body))
			.catch((response) => console.log("error!! : bestlist - ", response));
	}, []);

	const clickTab = ({ target }) => setIndex(() => bestList.findIndex(({ name }) => name === target.innerHTML));

	return (
		<BestListWrapper>
			<Title>후기가 증명하는 베스트 반찬</Title>
			<TabList>
				{bestList.map((e, i) => (
					<Tab key={parseInt(e.category_id)} onClick={clickTab} index={i} select={index}>
						{e.name}
					</Tab>
				))}
			</TabList>
			<Box>
				{bestList[index].items.map((e) => (
					<Card key={e.detail_hash} setModalData={props.setModalData} setModalOn={props.setModalOn} size="LARGE" data={e} />
				))}
			</Box>
		</BestListWrapper>
	);
};

export default BestList;

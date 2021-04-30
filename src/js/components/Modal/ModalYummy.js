import styled from "styled-components";
import Card from "../common/Card";
import carouselContext from "@jjunyjjuny/react-carousel";
import { useEffect, useState } from "react";
const { Carousel, Controller } = carouselContext;

const Yummy = ({ sibling, setModalData }) => {
	const [cardList, setCardList] = useState(sibling);
	useEffect(() => {
		setCardList(() => sibling);
	}, [sibling]);
	console.log(cardList)
	return (
		<YummyWrapper>
			<YummyHeader>
				<Title>함께하면 더욱 맛있는 상품</Title>
				<ControllerWrapper>
					<Controller prev carouselId={4} />
					<Controller next carouselId={4} />
				</ControllerWrapper>
			</YummyHeader>
			<YummyCarousel>
				<Carousel itemsPerPeice={5} customMode carouselId={4}>
					{cardList.map((el) => {
						console.log("in carousel ",cardList)
						return <Card sibling={sibling} setModalData={setModalData} key={el.detail_hash} size="SMALL" data={el} />;
					})}
				</Carousel>
			</YummyCarousel>
		</YummyWrapper>
	);
};

const YummyWrapper = styled.div`
	width: 960px;
	background: #f5f5f7;
	border-radius: 0px 0px 5px 5px;
`;

const YummyHeader = styled.div`
	display: flex;
	justify-content: space-between;
	padding: 32px;
`;
const Title = styled.div`
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: bold;
	font-size: 18px;
	line-height: 26px;
`;
const ControllerWrapper = styled.div`
	display: flex;
`;

const YummyCarousel = styled.div`
	display: flex;
	/* justify-content:center; */
    margin-left:10px;
`;

export default Yummy;

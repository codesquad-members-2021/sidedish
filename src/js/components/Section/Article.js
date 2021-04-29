import Carousel2 from "../../Carousel/Carousel";
// import Carousel from "@jjunyjjuny/react-carousel";
import styled from "styled-components";
import Card from "../common/Card";
const { Carousel, Controller } = Carousel2;

const Ariticle = ({ ariticle, index, setModalData, setModalOn }) => {
	const title = ["모두가 좋아하는 든든한 메인요리", "정성이 담긴 뜨끈한 국물요리", "식탁을 풍성하게 하는 정갈한 밑반찬"];
	return (
		<AriticleWrapper>
			<Title>{title[index]}</Title>
			<CarouselWrapper>
				<PrevButton>
					<Controller prev carouselId={index + 1} />
				</PrevButton>
				<NextButton>
					<Controller next carouselId={index + 1} />
				</NextButton>
				{ariticle.length > 0 && (
					<Carousel itemsPerPeice={4} customMode carouselId={index + 1} gap={"10px"}>
						{ariticle.map((el) => (
							<Card sibling={ariticle} setModalData={setModalData} setModalOn={setModalOn} key={el.detail_hash} size="MEDIUM" data={el} />
						))}
					</Carousel>
				)}
			</CarouselWrapper>
		</AriticleWrapper>
	);
};

const AriticleWrapper = styled.div`
	margin-top: 80px;
`;
const CarouselWrapper = styled.div`
	display: flex;
	position: relative;
	width: 1280px;
`;
const PrevButton = styled.div`
	position: absolute;
	top: 230px;
	left: -40px;
`;
const NextButton = styled.div`
	position: absolute;
	top: 230px;
	left: 1320px;
`;
const Title = styled.div`
	width: 1280px;
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	margin: 0 auto;
	margin-bottom: 32px;
`;

export default Ariticle;

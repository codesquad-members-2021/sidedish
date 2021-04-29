import Carousel2 from "../../Carousel/Carousel";
// import Carousel from "@jjunyjjuny/react-carousel";
import styled from "styled-components";
import Card from "../common/Card";
const {Carousel} = Carousel2


const Ariticle = ({ ariticle, index, setModalData, setModalOn }) => {
  const title = ["모두가 좋아하는 든든한 메인요리", "정성이 담긴 뜨끈한 국물요리", "식탁을 풍성하게 하는 정갈한 밑반찬"]
	return (
		<AriticleWrapper>
			<Title>{title[index]}</Title>
			{ariticle.length > 0 && (
				<Carousel itemsPerPeice={4} autoFit>
					{ariticle.map((el) => <Card setModalData={setModalData} setModalOn={setModalOn} key={el.detail_hash} size="SMALL" data={el} />)}
				</Carousel>
			)}
		</AriticleWrapper>
	);
};

const AriticleWrapper = styled.div`
	width: 1422px;
	margin-top: 80px;
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

import Carousel from "@jjunyjjuny/react-carousel";
import styled from "styled-components";
import Card from "../common/Card";

const Ariticle = ({ ariticle, setModalData, setModalOn }) => {
	return (
		<AriticleWrapper>
			<Title>모두가 좋아하는 든든한 메인요리</Title>
			{ariticle.length > 0 && (
				<Carousel itemsPerPeice={4} autoFit>
					{ariticle.map((el) => <Card setModalData={setModalData} setModalOn={setModalOn} key={el.detail_hash} size="MEDIUM" data={el} />)}
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

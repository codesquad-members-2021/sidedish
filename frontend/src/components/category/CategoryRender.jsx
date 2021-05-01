import styled from 'styled-components';
import Title from '../atomic/Title';
import Carousel from './Carousel';
import useFetch from '../useFetch';
import ItemCard from '../card/ItemCard';
import Loading from '../state/Loading';
import Error from '../state/Error';
import { useRef } from 'react';
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc';

function CategoryRender({ title, url }) {
	const button = useRef();
	const handleLeft = () => {
		button.current.slideToLeft();
	};
	const handleRight = () => {
		button.current.slideToRight();
	};

	const [categoryData, loadingState] = useFetch(
		process.env.REACT_APP_API_URL + url,
		'get',
	);

	return (
		<MarginBlock>
			<TitleBlock>
				<Title>{title}</Title>
			</TitleBlock>

			{loadingState ? (
				<Loading width="1280px" height="384px" />
			) : categoryData === 400 ? (
				<Error></Error>
			) : (
				<FlexBlock>
					<ButtonLeft onClick={handleLeft}>
						<VscChevronLeft />
					</ButtonLeft>

					<Carousel
						width={1280}
						height={242}
						count={4}
						duration={'.5s'}
						ref={button}
						effect={'ease-in-out'}
					>
						{categoryData.map((data, idx) => (
							<ItemCard
								key={data.detailHash}
								itemData={data}
								size={308}
								xPadding={10}
							/>
						))}
					</Carousel>

					<ButtonRight onClick={handleRight}>
						<VscChevronRight />
					</ButtonRight>
				</FlexBlock>
			)}
		</MarginBlock>
	);
}

export default CategoryRender;

const TitleBlock = styled.div`
	margin: 0 40px;
`;
const ButtonLeft = styled.button`
	font-size: 36px;
`;
const ButtonRight = styled.button`
	font-size: 36px;
`;
const FlexBlock = styled.div`
	display: flex;
`;
const MarginBlock = styled.div`
	margin-bottom: 80px;
`;

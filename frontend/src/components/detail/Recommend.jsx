import useFetch from '../useFetch';
import styled from 'styled-components';
import Carousel from '../category/Carousel';
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc';
import React, { useState, useRef } from 'react';
import ItemCardSmall from '../card/ItemCardSmall';
import { theme } from '../style/Theme';
import Title from '../atomic/Title';
function Recommend() {
	const [randomMenu, randomLoadingState] = useFetch(
		process.env.REACT_APP_API_URL + 'recommend/10/',
		'get',
	);
	const button = useRef();
	let count = 5;
	let totalPage = randomMenu.length / count;
	console.log(totalPage);
	const [pageNumer, setPageNumer] = useState({
		page: 1,
		total: totalPage,
	});

	const handleLeft = () => {
		button.current.slideToLeft();
		setPageNumer({
			page: button.current.pageNumber,
			total: button.current.totalPage,
		});
	};
	const handleRight = () => {
		button.current.slideToRight();
		setPageNumer({
			page: button.current.pageNumber,
			total: button.current.totalPage,
		});
	};

	return (
		!randomLoadingState && (
			<FooterSection>
				<Upper>
					<Title>함께하면 더욱 맛있는 상품</Title>
					<ButtonBlock>
						<ButtonLeft onClick={handleLeft}>
							<VscChevronLeft />
						</ButtonLeft>

						<PageBlock>{`${pageNumer.page} / ${pageNumer.total}`}</PageBlock>

						<ButtonRight onClick={handleRight}>
							<VscChevronRight />
						</ButtonRight>
					</ButtonBlock>
				</Upper>

				<Carousel
					width={864}
					count={5}
					duration={'.5s'}
					ref={button}
					effect={'ease-in-out'}
				>
					{randomMenu.map((el, idx) => (
						<ItemCardSmall
							size={864 / 5}
							height={242}
							key={idx}
							data={el}
							padding={2}
						></ItemCardSmall>
					))}
				</Carousel>
			</FooterSection>
		)
	);
}

export default Recommend;
const FooterSection = styled.div`
	box-sizing: border-box;
	padding: 48px;
	width: 100%;
	height: 450px;
	background-color: ${theme.colors.grey_css};
`;
const Upper = styled.div`
	display: flex;
	justify-content: space-between;
`;
const ButtonBlock = styled.div`
	display: flex;
`;

const PageBlock = styled.div`
	padding: 0 0 17px 0;
	display: flex;
	align-items: center;
`;
const ButtonLeft = styled.button``;
const ButtonRight = styled.button``;

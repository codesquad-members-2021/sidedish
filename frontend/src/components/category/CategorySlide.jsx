import styled from 'styled-components';
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc';
import React, { useState, useEffect } from 'react';
const CatgoryWrapper = styled.div`
	width: 1280px;
	padding: 0px;
	overflow: hidden;
	border: 1px solid blue;
`;
const CategoryColumn = styled.div`
	display: flex;
`;
const CategorySlideBlock = styled.div`
	margin: 0 auto;
	margin-bottom: 80px;
`;
const Button = styled.button`
	font-size: 36px;
	border: none;
	background-color: transparent;
	&:focus {
		outline: none;
	}
	cursor: pointer;
`;
const ButtonLeft = styled(Button)``;
const ButtonRight = styled(Button)``;
const CardWrapper = styled.div`
	display: flex;
	justify-content: center;
	width: ${(props) => {
		return props.size;
	}}px;
`;
const Block = styled.div`
	display: flex;
`;
function CategorySlide({ width, count, duration, children }) {
	const transitionDefault = `all ${duration}`;
	const panelWidth = width / count; //320
	const panelCount = count;
	console.log(children);
	let block = [];
	for (let i = 0; i < children.length; i++) {
		if (i === 0) {
			block.push(children.slice(0, count)); //0-4:0123
		} else {
			block.push(children.slice(i * count, count * (i + 1))); //4-8:4567 //8-12: 891011
		}
	}
	const filterBlock = block.filter((el) => el.length !== 0);
	const [x, setX] = useState(0); //-1280 //-panelCount * panelWidth
	const [moving, setMoving] = useState(false);
	const [trasitionValue, setTransitionValue] = useState(transitionDefault);

	const onMove = (direction) => {
		if (moving) return;
		setX((prevX) => prevX + direction * panelCount * panelWidth); //-1280 + (-1)*width
		setMoving(true);
	};
	const onTransitionEnd = () => {
		setMoving(false); //(-1) * 4 * 320 * -1280(1)/-2560(2)/-3840(3)
		if (x === -panelCount * panelWidth * (filterBlock.length + 1)) {
			setTransitionValue('none');
			setX(-panelCount * panelWidth);
		} else if (x === 0) {
			setTransitionValue('none'); //b a b a
			setX(-panelCount * panelWidth * filterBlock.length); // -1280*2
		}
	};
	useEffect(() => {
		if (trasitionValue === 'none') setTransitionValue(transitionDefault);
	}, [x]);
	const ulStyles = {
		transform: `translate3d(${x}px, 0, 0)`,
		transition: trasitionValue,
	};
	const makeBlock = (el) => {
		return (
			<Block className="Block">
				{el.map((e, idx) => (
					<CardWrapper
						className="CardWrapper"
						size={panelWidth}
						key={idx + 'a'}
					>
						{e}
					</CardWrapper>
				))}
			</Block>
		);
	};
	const ButtonArea = styled.div``;

	return (
		<>
			<CategorySlideBlock>
				<CatgoryWrapper>
					<CategoryColumn style={ulStyles} onTransitionEnd={onTransitionEnd}>
						{makeBlock(filterBlock[filterBlock.length - 1])}
						{filterBlock.map(makeBlock)}
						{makeBlock(filterBlock[0])}
					</CategoryColumn>
				</CatgoryWrapper>
			</CategorySlideBlock>
			<ButtonArea>
				<ButtonLeft onClick={onMove.bind(undefined, +1)}>
					<VscChevronLeft />
				</ButtonLeft>
				<ButtonRight onClick={onMove.bind(undefined, -1)}>
					<VscChevronRight />
				</ButtonRight>
			</ButtonArea>
		</>
	);
}
export default React.memo(CategorySlide);

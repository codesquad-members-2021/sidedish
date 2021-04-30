import styled from 'styled-components';
import { useState, useEffect, useImperativeHandle, forwardRef } from 'react';

function Carousel({ width, height, count, duration, children, effect }, ref) {
	const transitionDefault = `all ${effect} ${duration}`;
	const panelWidth = width / count; //320

	let block = [];
	for (let i = 0; i < children.length; i += count) {
		block.push(children.slice(i, i + count));
	}
	const lastBlockCount = block[block.length - 1].length;
	const startX = -width - lastBlockCount * panelWidth;

	const [x, setX] = useState(startX);
	const [moving, setMoving] = useState(false);
	const [blockNumber, setBlockNumber] = useState(1);
	const [trasitionValue, setTransitionValue] = useState(transitionDefault);

	const onMove = (direction) => {
		if (moving) return;
		if (direction === 1) {
			setX((prevX) =>
				blockNumber === block.length
					? prevX + direction * lastBlockCount * panelWidth
					: prevX + direction * width,
			);
			setBlockNumber((prevCnt) =>
				blockNumber === 1 ? block.length : --prevCnt,
			);
		} else {
			setX((prevX) =>
				blockNumber === block.length - 1
					? prevX + direction * lastBlockCount * panelWidth
					: prevX + direction * width,
			);
			setBlockNumber((prevCnt) =>
				blockNumber === block.length ? 1 : ++prevCnt,
			);
		}
		setMoving(true);
	};
	const page = () => (blockNumber ? blockNumber : 1);

	useImperativeHandle(ref, () => ({
		slideToLeft: onMove.bind(undefined, +1),
		slideToRight: onMove.bind(undefined, -1),
		pageNumber: page(),
		totalPage: block.length,
	}));

	const onTransitionEnd = () => {
		setMoving(false);
		if (blockNumber === 1 && x < startX - width * (block.length - 1)) {
			setTransitionValue('none');
			setX(startX);
		} else if (blockNumber === block.length && x > startX) {
			setTransitionValue('none'); //b a b a
			setX(startX - width * (block.length - 2) - lastBlockCount * panelWidth);
		}
	};

	useEffect(() => {
		if (trasitionValue === 'none') setTransitionValue(transitionDefault); // eslint-disable-next-line
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
						width={panelWidth}
						// height={height}
						key={idx + 'a'}
					>
						{e}
					</CardWrapper>
				))}
			</Block>
		);
	};

	return (
		<>
			<CategorySlideBlock>
				<CatgoryWrapper width={width}>
					<CategoryColumn style={ulStyles} onTransitionEnd={onTransitionEnd}>
						{[
							block.length === 1
								? makeBlock(block[block.length - 1])
								: makeBlock(block[block.length - 2]),
							makeBlock(block[block.length - 1]),
							...block.map(makeBlock),
							makeBlock(block[0]),
						]}
					</CategoryColumn>
				</CatgoryWrapper>
			</CategorySlideBlock>
		</>
	);
}
export default forwardRef(Carousel);

const CatgoryWrapper = styled.div`
	width: ${(props) => `${props.width}px`};
	height: ${(props) => `${props.height}px`};
	padding: 0px;
	overflow: hidden;
`;
const CategoryColumn = styled.div`
	display: flex;
`;
const CategorySlideBlock = styled.div`
	margin: 0 auto;
	margin-bottom: 80px;
`;
const CardWrapper = styled.div`
	display: flex;
	justify-content: center;
	width: ${(props) => {
		return props.width;
	}}px;
	height: ${(props) => {
		return props.height;
	}}px;
`;
const Block = styled.div`
	display: flex;
`;

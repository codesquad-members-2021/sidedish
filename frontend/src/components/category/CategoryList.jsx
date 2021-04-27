import styled from 'styled-components';
import Title from '../atomic/Title';
import CategorySlide from './CategorySlide';
import useFetch from '../useFetch';
import ItemCard from '../ItemCard';
import Loading from '../state/Loading';
import Error from '../state/Error';
const TitleBlock = styled.div`
	margin: 0 40px;
`;
// const loadingData = { img: './load.jpg' }

function CategoryList({ title, url }) {
	const [categoryData, loadingState] = useFetch(
		process.env.REACT_APP_API_URL + url,
	);
	console.log(categoryData);

	//!에러처리 여기서.
	// const category = (data) => {
	// 	if (data === '400Error') {
	// 		return (
	// 			//수정해야할 곳
	// 			<Modal {...{ modalMode, setModalState }}>
	// 				<Error
	// 					style={{
	// 						width: '960px',
	// 						height: '480px',
	// 					}}
	// 				/>
	// 			</Modal>
	// 		);
	// 	} else {
	// 		return data.map((data, idx) => (
	// 			<ItemCard key={idx} data={data} size={'S'} />
	// 		));
	// 	}
	// };
	return (
		<>
			<TitleBlock>
				<Title>{title}</Title>
			</TitleBlock>
			{loadingState ? (
				<Loading width="1280px" height="384px" />
			) : (
				<CategorySlide width={1280} count={3} duration={'.5s'}>
					{!loadingState &&
						categoryData.map((data, idx) => (
							<ItemCard key={idx} data={data} size={'S'} />
						))}
				</CategorySlide>
			)}
		</>
	);
}

export default CategoryList;

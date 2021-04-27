import styled from 'styled-components';
import Title from '../atomic/Title';
import CategorySlide from './CategorySlide';
import useFetch from '../useFetch';
const TitleBlock = styled.div`
	margin: 0 40px;
`;
// const loadingData = { img: './load.jpg' }

function CategoryList({ title, url }) {
	const [categoryData, loadingState] = useFetch(
		process.env.REACT_APP_API_URL + url,
	);

	// let data = loadingState ? loadingData : initData

	return (
		<>
			<TitleBlock>
				<Title>{title}</Title>
			</TitleBlock>
			<CategorySlide {...{ loadingState, categoryData }} />
		</>
	);
}

export default CategoryList;

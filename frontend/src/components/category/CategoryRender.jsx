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

function CategoryRender({ title, url }) {
	const [categoryData, loadingState] = useFetch(
		process.env.REACT_APP_API_URL + url,
		'get',
	);

	return (
		<>
			<TitleBlock>
				<Title>{title}</Title>
			</TitleBlock>
			{loadingState ? (
				<Loading width="1280px" height="384px" />
			) : categoryData === 400 ? (
				<Error></Error>
			) : (
				<CategorySlide width={1280} count={3} duration={'.5s'}>
					{categoryData.map((data, idx) => (
						<ItemCard key={idx} data={data} size={'S'} />
					))}
				</CategorySlide>
			)}
		</>
	);
}

export default CategoryRender;

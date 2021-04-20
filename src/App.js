import { useEffect, useState } from "react";
import styled from "styled-components";
import Card from "./js/components/common/Card";

const TestWrapper = styled.ul`
	display: flex;
	flex-direction: row;
	list-style:none;
`;

function App() {
	const [cardList, setCardList] = useState([]);

	useEffect(() => {
		fetch("https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main")
			.then((response) => response.json())
			.then(({ body }) => {
				setCardList(() =>
					body.map((e) => (
						<li key={e.detail_hash}>
							<Card {...e} size={"LARGE"} />
						</li>
					))
				);
			});
	}, []);

	return <TestWrapper>{cardList};</TestWrapper>;
}

export default App;

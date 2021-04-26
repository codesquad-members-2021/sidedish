import styled from 'styled-components';

const PopUpImagesStyle = styled.div`

`;

const PopUpMainImageStyle = styled.div`
    width: 100%;
    height: 24.5rem;
    background-image: url("https://cdn.pixabay.com/photo/2017/09/10/14/23/jjolmyeon-2735716__340.jpg");
    background-size: cover;
    margin-bottom: 0.5rem;
    border-radius: 0.3125rem;
`;

const PopUpThumbnailImagesStyle = styled.div`
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    grid-gap: 0.5rem;
`;

const PopUpThumbnailImageStyle = styled.img.attrs(props => ({
    src: props.src
}))`
    width: 100%;
    border-radius: 0.25rem;
    border: 1px solid #fff;
    height: 4.5rem;
`;

export default function PopUpImages () {

    return (
        <PopUpImagesStyle>
            <PopUpMainImageStyle/>
            <PopUpThumbnailImagesStyle>
                <PopUpThumbnailImageStyle src="https://cdn.pixabay.com/photo/2017/09/10/14/23/jjolmyeon-2735716__340.jpg"/>
                <PopUpThumbnailImageStyle src="https://cdn.pixabay.com/photo/2017/09/10/14/23/jjolmyeon-2735716__340.jpg"/>
                <PopUpThumbnailImageStyle src="https://cdn.pixabay.com/photo/2017/09/10/14/23/jjolmyeon-2735716__340.jpg"/>
                <PopUpThumbnailImageStyle src="https://cdn.pixabay.com/photo/2017/09/10/14/23/jjolmyeon-2735716__340.jpg"/>
            </PopUpThumbnailImagesStyle>
        </PopUpImagesStyle>

    )
}
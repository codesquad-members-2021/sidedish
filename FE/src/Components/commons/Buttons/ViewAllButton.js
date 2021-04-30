import styled from 'styled-components';
// import 

const ViewAllButton = ({ onClick }) => {

  const handleViewAllButtonClick = () => {
    onClick();
  }
  return (
    <Button onClick={handleViewAllButtonClick}> 모든 카테고리 보기 </Button>
  )
}

const Button = styled.button`
  width: 100%;
  height: 100%;
  background-color: #F5F5F7;
  border:none;

  font-size: 18px;
  font-weight: bold;
  line-height: 26px;

  cursor:pointer;
`

export default ViewAllButton;
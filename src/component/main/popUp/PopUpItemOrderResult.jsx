import styled from 'styled-components';
import { TEXT } from '../../../common/const.js';
import { FaCheck, FaTimes } from 'react-icons/fa';

const PopUpItemOrderResultStyle = styled.div`
  position: fixed;
  width: 100vw;
  height: 100vh;
  top: 0;
  left: 0;
  &::after {
    content: "";
    position: fixed;
    width: 100vw;
    height: 100vh;
    left: 0;
    top: 0;
    background-color: rgba(0, 0, 0, 0.3);
    z-index: -1;
  }
`;

const OrderMessage = styled.div`
  margin: 35vh auto;
  width: 20rem;
  padding: 2rem;
  background-color: #fff;
  h3 {
    text-align: center;
    font-size: 1.25rem;
    font-weight: 600;
    margin-bottom: 1rem;
    * {
      position: relative;
      top: 0.125rem;
      margin-right: 0.25rem;
    }
    .success {
      color: #82D32D;
    }
    .fail {
      color: #ff4545;
    }
  }
  p {
    color: #999;
    white-space: break-spaces;
    text-align: center;
  }
`;

export default function PopUpItemOrderResult({ result }) {
  const { title, content } = TEXT.order[result];
  return (
    <PopUpItemOrderResultStyle>
      <OrderMessage>
        <h3>{result ? <FaCheck className="success"/> : <FaTimes className="fail"/>} {title}</h3>
        <p>{content}</p>
      </OrderMessage>
    </PopUpItemOrderResultStyle>
  )
}
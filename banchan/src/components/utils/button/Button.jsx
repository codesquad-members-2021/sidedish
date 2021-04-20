import styled from "styled-components";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faSearch,
  faTimes,
  faAngleLeft,
  faAngleRight,
  faAngleUp,
  faAngleDown,
} from "@fortawesome/free-solid-svg-icons";

const BUTTON_TYPE = {
  SEARCH: <FontAwesomeIcon icon={faSearch} />,
  LEFT: <FontAwesomeIcon icon={faAngleLeft} />,
  RIGHT: <FontAwesomeIcon icon={faAngleRight} />,
  UP: <FontAwesomeIcon icon={faAngleUp} />,
  DOWN: <FontAwesomeIcon icon={faAngleDown} />,
  CLOSE: <FontAwesomeIcon icon={faTimes} />,
  ORDER: "주문하기",
};

const Button = styled.button`
  all: unset;
  cursor: pointer;
`;

export { BUTTON_TYPE, Button };

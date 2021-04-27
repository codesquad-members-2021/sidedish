import styled from "styled-components";
import { ReactComponent as SearchButtonSvg } from "../Styles/icons/SearchButton.svg";

const Header = styled.div`
  position: relative;
  padding: 32px 80px;
  height: 132px;
`;
const Logo = styled.div`
  height: 58px;
  width: 190px;

  /* logo */
  position: absolute;
  top: 26.23%;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 900;
  font-size: 40px;
  line-height: 58px;
  /* identical to box height */

  letter-spacing: -0.04em;
  text-transform: uppercase;

  /* Gray 1 */

  color: #333333;
  cursor: pointer;
`;

const MenuList = styled.li`
  /* menu 1 */

  font-family: Noto Sans KR;
  font-size: 16px;
  font-weight: 400;
  line-height: 23px;
  color: #828282;
  &:hover {
    text-decoration-line: underline;
    color: #333;
  }
`;

const MenuWrapper = styled.div`
  display: ${props => props._display};
  position: absolute;

  width: 112px;
  align-items: flex-start;
  padding: 16px;
  background: #fff;

  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
  /* Note: backdrop-filter has minimal browser support */
`;

const Navigator = styled.div`
  cursor: pointer;
  position: relative;
`;

const CategoryList = styled.li`
  /* outline: blue solid; */
  /* menu 3 */
  height: 23px;
  left: 262px;
  top: 0px;
  font-size: 16px;
  line-height: 23px;

  /* Gray 1 */

  color: #333333;

  /* Inside Auto Layout */

  flex: none;
  order: 2;
  flex-grow: 0;
  margin: 0px 24px;
  &:hover {
    font-weight: 700;
  }
`;

const Category = styled.div`
  /* outline: red solid; */
  /* gnb */

  /* Auto Layout */

  display: flex;
  flex-direction: row;
  align-items: flex-start;
  padding-top: 18px;

  position: absolute;
  left: 16.64%;

  top: 40.98%;
`;

const SearchBar = styled.div`
  height: 40px;
  width: 248px;
  position: absolute;
  right: 16.25%;
  top: 33.61%;

  /* Gray 6 */

  background: #f5f5f7;
  border-radius: 5px;
`;

const SearchButton = styled(SearchButtonSvg)`
  position: absolute;
  right: 10px;
  top: 5px;
  cursor: pointer;
`;

const SearchInput = styled.input`
  left: 958px;
  top: 41px;
  width: 248px;
  height: 40px;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  background: #f5f5f7;
  /* #121111 6 */
`;

const Login = styled.span`
  position: absolute;
  right: 11.32%;
  font-size: 16px;
  line-height: 23px;
  padding-top: 18px;
  /* Gray 1 */

  color: #333333;
  cursor: pointer;
`;

const ShoppingCart = styled.span`
  /* basket */
  position: absolute;
  padding-top: 18px;
  right: 5.56%;
  font-size: 16px;
  line-height: 23px;
  /* Gray 1 */

  color: #333333;
  cursor: pointer;
`;
export {
  Header,
  Logo,
  MenuList,
  MenuWrapper,
  Navigator,
  Category,
  CategoryList,
  SearchBar,
  SearchButton,
  SearchInput,
  Login,
  ShoppingCart,
};

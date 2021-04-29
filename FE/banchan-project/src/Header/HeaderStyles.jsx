import styled from "styled-components";
import { ReactComponent as SearchButtonSvg } from "../Styles/icons/SearchButton.svg";
import theme from "../Styles/theme";

const Header = styled.div`
  position: relative;
  padding: 32px 80px;
  height: 132px;
  width: 1440px;
`;
const Logo = styled.div`
  height: 58px;
  width: 190px;
  position: absolute;
  top: 26.23%;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 900;
  font-size: 40px;
  line-height: 58px;
  letter-spacing: -0.04em;
  text-transform: uppercase;
  color: ${theme.fontColors.GRAY1};
  cursor: pointer;
`;

const MenuList = styled.li`
  font-family: Noto Sans KR;
  font-size: 16px;
  font-weight: 400;
  line-height: 23px;
  color: ${theme.fontColors.GRAY3};

  &:hover {
    text-decoration-line: underline;
    color: ${theme.fontColors.GRAY1};
  }
`;

const MenuWrapper = styled.div`
  display: ${props => props._display};
  padding: 16px;
  position: absolute;
  width: 112px;

  background: ${theme.boxColors.WHITE};
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
`;

const Navigator = styled.div`
  cursor: pointer;
  position: relative;
`;

const CategoryList = styled.li`
  height: 23px;
  left: 262px;
  top: 0px;
  font-size: 16px;
  line-height: 23px;
  color: ${theme.fontColors.GRAY1};
  margin: 0px 24px;
  &:hover {
    font-weight: 700;
  }
`;

const Category = styled.div`
  position: absolute;
  display: flex;
  left: 16.64%;
  top: 40.98%;
  padding-top: 18px;
`;

const SearchBar = styled.div`
  position: absolute;
  height: 40px;
  width: 248px;
  right: 16.25%;
  top: 33.61%;
  background: ${theme.boxColors.GRAY6};
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
  background: ${theme.GRAY6};
`;

const Login = styled.span`
  position: absolute;
  right: 11.32%;
  padding-top: 18px;
  cursor: pointer;
`;

const ShoppingCart = styled.span`
  position: absolute;
  padding-top: 18px;
  right: 5.56%;
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

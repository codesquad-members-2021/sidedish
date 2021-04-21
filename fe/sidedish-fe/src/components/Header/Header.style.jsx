import styled from "styled-components";

const CenterContainer = styled.div`
    text-align: center;
    margin: auto 0;
`
const HeaderStyle = styled.div`
    /* headerStyle */
    // font-family: Noto Sans KR;
    font-style: normal;

    /* Gray 1 */
    color: #333333;

    margin-top: 32px;
    display: flex;
    justify-content: space-between
`;

const HeaderLeftStyle = styled(CenterContainer)`
    display:flex;
    flex-direction: row;
    margin-left: 5%;
    width:55%;
`;

const HeaderRightStyle = styled.div`
    display:flex;
    flex-direction: row;
    margin-right: 5%;
    width: 27%;
`;

const LogoStyle = styled.div`
    font-weight: 900;
    font-size: 40px;
    line-height: 58px;
    margin-right: 3%;

    letter-spacing: -0.04em;
    text-transform: uppercase;
`;

const NavStyle = styled.div`
    font-size: 16px;
    line-height: 23px;
    margin: auto 1.5%;

    &:hover {
        font-weight: bold;
    }
`
const SearchBarStyle = styled.input`
    width: calc(90% - 30px);
    height: 95%;

    margin: auto 5px;
    padding-left: 5%;

    background: #F5F5F7;
    border: none;
    
    border:none;
    &:focus {
        outline: none;
    }
    
`
const SearchButtonStyle = styled.button`
    background: none;
    border:none;
    outline: none;
    margin:8px;
`

const SearchBarFormStyle = styled.div`
    background: #F5F5F7;
    border-radius: 5px;
    height:40px;
    width: 63%;
    margin: auto 0;
    border:none;
    display:flex;
    flex-direction: row;
`

const LoginStyle = styled.div`
    font-size: 16px;
    line-height: 23px;
    margin: auto 6%;
`

const BasketStyle = styled.div`
    font-size: 16px;
    line-height: 23px;
    margin: auto 0;
`

const DropdownStyle = styled.div`
    /* White */

    background: #FFFFFF;
    position: relative;
    display: inline-block;
    // display:none;
`
const DropdownComponentStyle = styled.div`
    background: blue;
`

export {
    HeaderStyle,
    LogoStyle,
    NavStyle,
    HeaderLeftStyle,
    HeaderRightStyle,
    SearchBarFormStyle,
    SearchBarStyle,
    SearchButtonStyle,
    LoginStyle,
    BasketStyle,
    DropdownStyle,
    DropdownComponentStyle,
  }

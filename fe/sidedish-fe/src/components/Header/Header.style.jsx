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
    width:55%;
    margin-left: 5%;
`;

const HeaderRightStyle = styled.div`
    display:flex;
    flex-direction: row;
    margin-right: 5%;
    width: 528px;
`;

const LogoStyle = styled.div`
    font-weight: 900;
    font-size: 40px;
    margin-right: 3%;

    letter-spacing: -0.04em;
    text-transform: uppercase;
`;

const NavStyle = styled.button`
    font-size: 16px;
    line-height: 23px;
    margin: auto 1.5%;

    &:hover {
        font-weight: bold;
        display:block;
        background-color: transparent;
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
    /* outline: none; */
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

const LoginStyle = styled.button`
    font-size: 16px;
    line-height: 23px;
    margin: auto 6%;
    width: 60px;
    background-color: transparent;
    border:none;
`

const BasketStyle = styled.button`
    font-size: 16px;
    line-height: 23px;
    margin: auto 0;
    width: 75px;
    background-color: transparent;
    border:none;
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
  }

import styled from "styled-components";
import theme from "./theme";
import { ReactComponent as LeftButtonSvg } from "../Styles/icons/LeftButton.svg";
import { ReactComponent as RightButtonSvg } from "../Styles/icons/RightButton.svg";
import { ReactComponent as upButtonSvg } from "../Styles/icons/upButton.svg";
import { ReactComponent as downButtonSvg } from "../Styles/icons/downButton.svg";

const LeftButton = styled(LeftButtonSvg)``;
const RightButton = styled(RightButtonSvg)``;
const UpButton = styled(upButtonSvg)``;
const DownButton = styled(downButtonSvg)``;

const ImageBox = styled.img`
    border-radius: 5px;
`,

const Image = {
  THUMB_NAILS : styled(ImageBox)`
    width:${theme.imgSizes.THUMB_NAILS};
    height:${theme.imgSizes.THUMB_NAILS};
  `,
  RECOMMENDED : styled(ImageBox)`
    width:${theme.imgSizes.RECOMMENDED};
    height:${theme.imgSizes.RECOMMENDED};
  `,
  MAIN_ITEMS : styled(ImageBox)`
    width:${theme.imgSizes.MAIN_ITEMS};
    height:${theme.imgSizes.MAIN_ITEMS};
  `,
  BEST_ITEMS : styled(ImageBox)`
    width:${theme.imgSizes.BEST_ITEMS};
    height:${theme.imgSizes.BEST_ITEMS};
  `,
  DETAIL_MAIN : styled(ImageBox)`
    width:${theme.imgSizes.DETAIL_MAIN};
    height:${theme.imgSizes.DETAIL_MAIN};
  `
};

const NormalFont = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 400;
`;
const BoldFont = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 700;
`;

const Font = {
  XS_NORMAL : styled(NormalFont)`
    font-size : ${theme.fontSizes.XS}px;
    line-height : ${theme.lineHeights.XS}px;
  `,
  S_NORMAL : styled(NormalFont)`
  font-size : ${theme.fontSizes.S}px;
    line-height : ${theme.lineHeights.S}px;
  `,
  M_NORMAL : styled(NormalFont)`
  font-size : ${theme.fontSizes.M}px;
    line-height : ${theme.lineHeights.M}px;
  `,
  L_NORMAL : styled(NormalFont)`
  font-size : ${theme.fontSizes.L}px;
    line-height : ${theme.lineHeights.L}px;
  `,
  XL_NORMAL : styled(NormalFont)`
  font-size : ${theme.fontSizes.XL}px;
    line-height : ${theme.lineHeights.XL}px;
  `,
  XXL_NORMAL : styled(NormalFont)`
  font-size : ${theme.fontSizes.XXL}px;
  line-height : ${theme.lineHeights.XXL}px;
  `,

  XS_BOLD : styled(BoldFont)`
  font-size : ${theme.fontSizes.XS}px;
    line-height : ${theme.lineHeights.XS}px;
  `,
  S_BOLD : styled(BoldFont)`
  font-size : ${theme.fontSizes.S}px;
    line-height : ${theme.lineHeights.S}px;
  `,
  M_BOLD : styled(BoldFont)`
  font-size : ${theme.fontSizes.M}px;
    line-height : ${theme.lineHeights.M}px;
  `,
  L_BOLD : styled(BoldFont)`
  font-size : ${theme.fontSizes.L}px;
    line-height : ${theme.lineHeights.L}px;
  `,
  XL_BOLD : styled(BoldFont)`
  font-size : ${theme.fontSizes.XL}px;
    line-height : ${theme.lineHeights.XL}px;
  `,
  XXL_BOLD : styled(BoldFont)`
  font-size : ${theme.fontSizes.XXL}px;
  line-height : ${theme.lineHeights.XXL}px;
  `,
};

const ColorFont = {
  GRAY1_XS_NORMAL : styled(Font.XS_NORMAL)`
    color : ${theme.fontColors.GRAY1};
  `,
  GRAY1_XS_BOLD : styled(Font.XS_BOLD)`
    color : ${theme.fontColors.GRAY1};
  `,
  GRAY1_S_NORMAL : styled(Font.S_NORMAL)`
    color : ${theme.fontColors.GRAY1};
  `,
  GRAY1_S_BOLD : styled(Font.S_BOLD)`
    color : ${theme.fontColors.GRAY1};
  `,
  GRAY1_M_BOLD : styled(Font.M_BOLD)`
    color : ${theme.fontColors.GRAY1};
  `,
  GRAY1_XL_BOLD : styled(Font.XL_BOLD)`
    color : ${theme.fontColors.GRAY1};
  `,
  

  GRAY2_S_NORMAL : styled(Font.S_NORMAL)`
    color : ${theme.fontColors.GRAY2};
  `,
  GRAY2_S_BOLD : styled(Font.S_BOLD)`
    color : ${theme.fontColors.GRAY2};
  `,


  GRAY3_XS_NORMAL : styled(Font.XS_NORMAL)`
    color : ${theme.fontColors.GRAY3};
  `,
  GRAY3_S_NORMAL : styled(Font.S_NORMAL)`
    color : ${theme.fontColors.GRAY3};
  `,
  GRAY3_M_NORMAL: styled(Font.M_NORMAL)`
    color : ${theme.fontColors.GRAY3};
  `,
  GRAY3_M_BOLD : styled(Font.M_BOLD)`
    color : ${theme.fontColors.GRAY3};
  `,


  GRAY4_XS_NORMAL : styled(Font.XS_NORMAL)`
    color : ${theme.fontColors.GRAY4};
  `,


  BLACK_L_BOLD: styled(Font.L_BOLD)`
    color : ${theme.fontColors.BLACK};
  `,
  BLACK_XXL_BOLD : styled(Font.XXL_BOLD)`
    color : ${theme.fontColors.BLACK};
  `,


  WHITE_XS_BOLD : styled(Font.XS_BOLD)`
    color : ${theme.fontColors.WHITE};
  `,
  WHITE_M_BOLD : styled(Font.M_BOLD)`
    color : ${theme.fontColors.WHITE};
  `,
  WHITE_XL_BOLD : styled(Font.XL_BOLD)`
    color : ${theme.fontColors.WHITE};
  `,
};  

const BadgeBox = styled.div`
width: 97px;
height: 28px;
display: flex;
justify-content: center;
padding: 4px 16px;
margin-right: 8px;
border-radius: 5px;
`;

const Badges = {
  EventBadge : styled(BadgeBox)`
  background: #82d32d;
`,

LaunchingBadge: styled(BadgeBox)`
    background: #86c6ff;
  `,
};

const Box = {
  FLEX_BOX : styled.div`
    display:flex;
  `,
  FLEX_CENTER_BOX : styled.div`
    display:flex;
    flex-direction:column;
    align-items:center;
  `,
  FLEX_BOX : styled.div`
  
  `,
};


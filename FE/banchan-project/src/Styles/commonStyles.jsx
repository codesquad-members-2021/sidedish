import styled from "styled-components";
import theme from "./theme";
import { ReactComponent as LeftButtonSvg } from "./icons/LeftButton.svg";
import { ReactComponent as RightButtonSvg } from "./icons/RightButton.svg";
import { ReactComponent as upButtonSvg } from "./icons/upButton.svg";
import { ReactComponent as downButtonSvg } from "./icons/downButton.svg";
import { ReactComponent as closeButtonSvg } from "./icons/closeButton.svg";

const Button = {
  LEFT_BUTTON: styled(LeftButtonSvg)``,
  RIGHT_BUTTON: styled(RightButtonSvg)``,
  UP_BUTTON: styled(upButtonSvg)``,
  DOWN_BUTTON: styled(downButtonSvg)``,
  CLOSE_BUTTON: styled(closeButtonSvg)``,
};

const ImageBox = styled.img`
  border-radius: 5px;
`;

const Image = {
  THUMB_NAILS: styled(ImageBox)`
    width: ${theme.imgSizes.THUMB_NAILS};
    height: ${theme.imgSizes.THUMB_NAILS};
    border: ${props =>
      props.selectedFlag === true
        ? `2px solid ${theme.boxColors.GREEN}`
        : "none"};
  `,
  RECOMMENDED: styled(ImageBox)`
    width: ${theme.imgSizes.RECOMMENDED};
    height: ${theme.imgSizes.RECOMMENDED};
  `,
  MAIN_ITEMS: styled(ImageBox)`
    width: ${theme.imgSizes.MAIN_ITEMS};
    height: ${theme.imgSizes.MAIN_ITEMS};
  `,
  BEST_ITEMS: styled(ImageBox)`
    width: ${theme.imgSizes.BEST_ITEMS};
    height: ${theme.imgSizes.BEST_ITEMS};
  `,
  DETAIL_MAIN: styled(ImageBox)`
    width: ${theme.imgSizes.DETAIL_MAIN};
    height: ${theme.imgSizes.DETAIL_MAIN};
  `,
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
  XS_NORMAL: styled(NormalFont)`
    font-size: ${theme.fontSizes.XS};
    line-height: ${theme.lineHeights.XS};
  `,
  S_NORMAL: styled(NormalFont)`
    font-size: ${theme.fontSizes.S};
    line-height: ${theme.lineHeights.S};
  `,
  M_NORMAL: styled(NormalFont)`
    font-size: ${theme.fontSizes.M};
    line-height: ${theme.lineHeights.M};
  `,
  L_NORMAL: styled(NormalFont)`
    font-size: ${theme.fontSizes.L};
    line-height: ${theme.lineHeights.L};
  `,
  XL_NORMAL: styled(NormalFont)`
    font-size: ${theme.fontSizes.XL};
    line-height: ${theme.lineHeights.XL};
  `,
  XXL_NORMAL: styled(NormalFont)`
    font-size: ${theme.fontSizes.XXL};
    line-height: ${theme.lineHeights.XXL};
  `,

  XS_BOLD: styled(BoldFont)`
    font-size: ${theme.fontSizes.XS};
    line-height: ${theme.lineHeights.XS};
  `,
  S_BOLD: styled(BoldFont)`
    font-size: ${theme.fontSizes.S};
    line-height: ${theme.lineHeights.S};
  `,
  M_BOLD: styled(BoldFont)`
    font-size: ${theme.fontSizes.M};
    line-height: ${theme.lineHeights.M};
  `,
  L_BOLD: styled(BoldFont)`
    font-size: ${theme.fontSizes.L};
    line-height: ${theme.lineHeights.L};
  `,
  XL_BOLD: styled(BoldFont)`
    font-size: ${theme.fontSizes.XL};
    line-height: ${theme.lineHeights.XL};
  `,
  XXL_BOLD: styled(BoldFont)`
    font-size: ${theme.fontSizes.XXL};
    line-height: ${theme.lineHeights.XXL};
  `,
};

const ColorFont = {
  GRAY1_XS_NORMAL: styled(Font.XS_NORMAL)`
    color: ${theme.fontColors.GRAY1};
  `,
  GRAY1_XS_BOLD: styled(Font.XS_BOLD)`
    color: ${theme.fontColors.GRAY1};
  `,
  GRAY1_S_NORMAL: styled(Font.S_NORMAL)`
    color: ${theme.fontColors.GRAY1};
  `,
  GRAY1_S_BOLD: styled(Font.S_BOLD)`
    color: ${theme.fontColors.GRAY1};
  `,
  GRAY1_M_BOLD: styled(Font.M_BOLD)`
    color: ${theme.fontColors.GRAY1};
  `,
  GRAY1_XL_BOLD: styled(Font.XL_BOLD)`
    color: ${theme.fontColors.GRAY1};
  `,

  GRAY2_S_NORMAL: styled(Font.S_NORMAL)`
    color: ${theme.fontColors.GRAY2};
  `,
  GRAY2_S_BOLD: styled(Font.S_BOLD)`
    color: ${theme.fontColors.GRAY2};
  `,

  GRAY3_XS_NORMAL: styled(Font.XS_NORMAL)`
    color: ${theme.fontColors.GRAY3};
  `,
  GRAY3_S_NORMAL: styled(Font.S_NORMAL)`
    color: ${theme.fontColors.GRAY3};
  `,
  GRAY3_M_NORMAL: styled(Font.M_NORMAL)`
    color: ${theme.fontColors.GRAY3};
  `,
  GRAY3_M_BOLD: styled(Font.M_BOLD)`
    color: ${theme.fontColors.GRAY3};
  `,

  GRAY4_XS_NORMAL: styled(Font.XS_NORMAL)`
    color: ${theme.fontColors.GRAY4};
  `,
  GRAY4_M_BOLD: styled(Font.M_BOLD)`
    color: ${theme.fontColors.GRAY4};
  `,

  BLACK_L_BOLD: styled(Font.L_BOLD)`
    color: ${theme.fontColors.BLACK};
  `,
  BLACK_XXL_BOLD: styled(Font.XXL_BOLD)`
    color: ${theme.fontColors.BLACK};
  `,

  WHITE_XS_BOLD: styled(Font.XS_BOLD)`
    color: ${theme.fontColors.WHITE};
  `,
  WHITE_M_BOLD: styled(Font.M_BOLD)`
    color: ${theme.fontColors.WHITE};
  `,
  WHITE_XL_BOLD: styled(Font.XL_BOLD)`
    color: ${theme.fontColors.WHITE};
  `,
};

const BadgeBox = styled.div`
  display: inline-block;
  width: 97px;
  height: 28px;
  padding: 4px 16px;
  margin-right: 8px;
  border-radius: 5px;
  text-align: center;
`;

const Badges = {
  EventBadge: styled(BadgeBox)`
    background: ${theme.boxColors.GREEN};
  `,

  LaunchingBadge: styled(BadgeBox)`
    background: ${theme.boxColors.LIGHT_BLUE};
  `,
};

const Hover = styled.div`
  background: linear-gradient(0deg, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
    #f5f5f7;
  border-radius: 5px;
  flex: none;
  order: 0;
  flex-grow: 0;
  margin: 16px 0px;
`;

const Box = {
  FLEX_ROW_BOX: styled.div`
    display: flex;
  `,

  FLEX_ROW_CENTER_BOX: styled.div`
    display: flex;
    align-items: center;
  `,

  FLEX_COLUMN_BOX: styled.div`
    display: flex;
    flex-direction: column;
  `,

  FLEX_COLUMN_CENTER_BOX: styled.div`
    display: flex;
    flex-direction: column;
    align-items: center;
  `,

  HOVER_BOX_BEST: styled(Hover)`
    position: absolute;
    width: 384px;
    height: 384px;
  `,

  HOVER_BOX_MAIN: styled(Hover)`
    width: 308px;
    height: 308px;
  `,

  HOVER_LINE: styled.div`
    position: static;
    width: 89px;
    height: 1px;
    left: 0px;
    top: 51px;
    background: #ffffff;
    flex: none;
    order: 1;
    flex-grow: 0;
    margin: 16px 0px;
  `,
};

export { Button, Image, ColorFont, Badges, Box };

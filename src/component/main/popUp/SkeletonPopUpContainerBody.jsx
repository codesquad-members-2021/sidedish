import styled, { keyframes } from "styled-components";

const loading = keyframes`
  0% {
    transform: translateX(-100px);
  }
  50%,
  100% {
    transform: translateX(500px);
  }
`;

const SkeletonPopUpContainerBodyStyle = styled.div`
  background-color: #fff;
  width: 100%;
  height: 88vh;
  overflow-y: auto;
  &::-webkit-scrollbar {
    width: 0.875rem;
  }
  &::-webkit-scrollbar-thumb {
    background-color: #cacaca;
    border-radius: 0.375rem;
    &:hover {
      background-color: #b2b2b2;
    }
  }
  &::-webkit-scrollbar-track {
    background-color: #eee;
  }
  .skeleton-ui::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(to right, #f2f2f2, #ddd, #f2f2f2);
    animation: ${loading} 1s infinite linear;
  }
  .skeleton-ui {
    overflow: hidden;
    position: relative;
  }
`;

const SkeletonPopUpDetailContainerStyle = styled.div`
  padding: 3rem;
  display: grid;
  grid-template-columns: 24.5rem auto;
  grid-gap: 2rem;
  position: relative;
`;

const SkeletonPopUpImagesStyle = styled.div``;
const SkeletonPopUpMainImageStyle = styled.div`
  width: 100%;
  height: 24.5rem;
  background-color: #eee;
  margin-bottom: 0.5rem;
  border-radius: 0.3125rem;
`;
const SkeletonPopUpThumbnailImagesStyle = styled.div`
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-gap: 0.5rem;
`;
const SkeletonPopUpThumbnailImageStyle = styled.div`
  background-color: #eee;
  width: 100%;
  border-radius: 0.25rem;
  cursor: pointer;
  height: 4.5rem;
`;

const SkeletonPopUpInformationsStyle = styled.div`
  display: flex;
  flex-flow: column;
`;

const SkeletonPopUpItemTitle = styled.div`
  font-size: 1.5rem;
  font-weight: 600;
  margin-bottom: 1rem;
  background-color: #eee;
  display: inline-block;
  width: 20rem;
`;

const SkeletonPopUpItemDescription = styled.div`
  font-size: 1.125rem;
  color: #828282;
  margin-bottom: 1rem;
  background-color: #eee;
  display: inline-block;
  width: 15rem;
`;

const SkeletonPopUpItemPriceContainer = styled.div`
  margin-bottom: 1.5rem;
  display: flex;
  align-items: flex-end;
`;

const SkeletonSalePriceStyle = styled.div`
  font-size: 1.5rem;
  font-weight: 600;
  margin-left: 0.5rem;
  margin-right: 0.5rem;
  background-color: #eee;
  display: inline-block;
  width: 7rem;
`;

const SkeletonNormalPriceStyle = styled.div`
  color: #828282;
  background-color: #eee;
  display: inline-block;
  width: 3rem;
`;

const SkeletonPopUpItemBuyingInformations = styled.div`
  border-top: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
  padding: 0.5rem 0;
`;

const SkeletonPopUpItemBuyingInformation = styled.div`
  display: grid;
  grid-template-columns: 5rem auto;
  margin-top: 1rem;
  &:last-child {
    margin-bottom: 1rem;
  }
  &:nth-of-type(2) > * {
    height: 1.5rem;
  }
  &:nth-of-type(2) > * + * {
    height: 4.5rem;
  }
`;

const SkeletonPopUpItemBuyingInformationTitle = styled.div`
  color: #828282;
  line-height: 1.5rem;
  background-color: #eee;
  display: inline-block;
  width: 4rem;
`;

const SkeletonPopUpItemBuyingInformationContent = styled.div`
  line-height: 1.5rem;
  background-color: #eee;
  display: inline-block;
  width: 15rem;
`;

const SkeletonLabel = styled.div`
  display: inline-block;
  width: 5.25rem;
  background-color: #eee;
  font-size: 0.875rem;
  border-radius: 0.3rem;
  padding: 0.25rem 1rem;
`;

const SkeletonPopUpItemCountContainer = styled.div``;

const SkeletonPopUpItemCountContainerStyle = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1.5rem 0;
  border-bottom: 1px solid #e0e0e0;
  & > *:last-child {
    display: grid;
    grid-template-columns: 5rem 2rem;
    line-height: 0;
  }
`;

const SkeletonPopUpItemCountTitle = styled.div`
  color: #828282;
  width: 3rem;
  background-color: #eee;
  display: inline-block;
`;

const SkeletonPopUpItemCount = styled.input.attrs({
  type: "text",
})`
  font-size: 1rem;
  padding: 0rem 1rem;
  border: 1px solid #e0e0e0;
  text-align: center;
`;

const SkeletonPopUpItemCountBtns = styled.div`
  border: 1px solid #e0e0e0;
  border-left: 0px;
`;

const SkeletonPopUpItemCountBtn = styled.button`
  width: 100%;
  &:first-child {
    border-bottom: 1px solid #e0e0e0;
  }
`;

const SkeletonPopUpItemTotalPriceContainer = styled.div`
  display: flex;
  justify-content: flex-end;
  padding: 2rem 0;
`;

const SkeletonPopUpItemTotalPriceTitle = styled.div`
  margin-right: 1.5rem;
  color: #828282;
  font-size: 1.125rem;
  align-self: center;
  background-color: #eee;
  display: inline-block;
  width: 7rem;
`;

const SkeletonPopUpTotalPrice = styled.div`
  font-size: 2rem;
  font-weight: 600;
  background-color: #eee;
  display: inline-block;
  width: 8rem;
`;

const SkeletonPopUpItemOrderBtn = styled.button`
  background-color: #eee;
  color: #fff;
  font-size: 1.125rem;
  font-weight: 600;
  border-radius: 0.3125rem;
  border: 1px solid #eee;
  padding: 1rem;
  text-align: center;
  cursor: pointer;
  width: 100%;
`;

const SkletonCarouselStyle = styled.div`
  background-color: #eef4fa;
  padding: 2.5rem;
  h2 {
    margin-bottom: 2rem;
    background-color: #eef4fa;
    display: inline-block;
    width: 18rem;
    margin-top: 0;
  }
`;

const SkeletonItemsStyle = styled.div`
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 1.5rem;
`;

const SkeletonItemCardStyle = styled.div`
  & > div:last-child {
    display: flex;
    flex-flow: column;
  }
`;
const SkeletonImgContainerStyle = styled.div`
  position: relative;
  margin-bottom: 1rem;
  line-height: 0;
  border-radius: 0.3rem;
  overflow: hidden;
`;
const SkeletonImgStyle = styled.div`
  width: 100%;
  height: 10rem;
  background-color: #eee;
`;
const SkeletonTitleStyle = styled.div`
  display: inline-block;
  width: 15rem;
  margin-bottom: 0.5rem;
  background-color: #eee;
`;
const SkeletonDescriptionStyle = styled.div`
  display: inline-block;
  width: 8rem;
  margin-bottom: 1rem;
  background-color: #eee;
  font-size: 0.875rem;
`;
const SkeletonPopUpPricesStyle = styled.div`
  margin-bottom: 1rem;
`;
const SkeletonPopUpSalePriceStyle = styled.div`
  display: inline-block;
  width: 5rem;
  margin-right: 1rem;
  font-size: 1.25rem;
  background-color: #eee;
`;
const SkeletonPopUpNormalPriceStyle = styled.div`
  display: inline-block;
  width: 5rem;
  background-color: #eee;
`;

export default function SkeletonPopUpContainerBody() {
  return (
    <SkeletonPopUpContainerBodyStyle>
      <SkeletonPopUpDetailContainerStyle>
        <SkeletonPopUpImagesStyle>
          <SkeletonPopUpMainImageStyle className="skeleton-ui" />
          <SkeletonPopUpThumbnailImagesStyle>
            <SkeletonPopUpThumbnailImageStyle className="skeleton-ui" />
            <SkeletonPopUpThumbnailImageStyle className="skeleton-ui" />
            <SkeletonPopUpThumbnailImageStyle className="skeleton-ui" />
          </SkeletonPopUpThumbnailImagesStyle>
        </SkeletonPopUpImagesStyle>
        <SkeletonPopUpInformationsStyle>
          <SkeletonPopUpItemTitle className="skeleton-ui">
            &nbsp;
          </SkeletonPopUpItemTitle>
          <SkeletonPopUpItemDescription className="skeleton-ui">
            &nbsp;
          </SkeletonPopUpItemDescription>
          <SkeletonPopUpItemPriceContainer>
            <SkeletonLabel className="skeleton-ui">&nbsp;</SkeletonLabel>
            <SkeletonSalePriceStyle className="skeleton-ui">
              &nbsp;
            </SkeletonSalePriceStyle>
            <SkeletonNormalPriceStyle className="skeleton-ui">
              &nbsp;
            </SkeletonNormalPriceStyle>
          </SkeletonPopUpItemPriceContainer>
          <SkeletonPopUpItemBuyingInformations>
            <SkeletonPopUpItemBuyingInformation>
              <SkeletonPopUpItemBuyingInformationTitle className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemBuyingInformationTitle>
              <SkeletonPopUpItemBuyingInformationContent className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemBuyingInformationContent>
            </SkeletonPopUpItemBuyingInformation>
            <SkeletonPopUpItemBuyingInformation>
              <SkeletonPopUpItemBuyingInformationTitle className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemBuyingInformationTitle>
              <SkeletonPopUpItemBuyingInformationContent className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemBuyingInformationContent>
            </SkeletonPopUpItemBuyingInformation>
            <SkeletonPopUpItemBuyingInformation>
              <SkeletonPopUpItemBuyingInformationTitle className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemBuyingInformationTitle>
              <SkeletonPopUpItemBuyingInformationContent className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemBuyingInformationContent>
            </SkeletonPopUpItemBuyingInformation>
          </SkeletonPopUpItemBuyingInformations>
          <SkeletonPopUpItemCountContainer>
            <SkeletonPopUpItemCountContainerStyle>
              <SkeletonPopUpItemCountTitle className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemCountTitle>
              <div>
                <SkeletonPopUpItemCount></SkeletonPopUpItemCount>
                <SkeletonPopUpItemCountBtns>
                  <SkeletonPopUpItemCountBtn className="skeleton-ui">
                    &nbsp;
                  </SkeletonPopUpItemCountBtn>
                  <SkeletonPopUpItemCountBtn className="skeleton-ui">
                    &nbsp;
                  </SkeletonPopUpItemCountBtn>
                </SkeletonPopUpItemCountBtns>
              </div>
            </SkeletonPopUpItemCountContainerStyle>
            <SkeletonPopUpItemTotalPriceContainer>
              <SkeletonPopUpItemTotalPriceTitle className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpItemTotalPriceTitle>
              <SkeletonPopUpTotalPrice className="skeleton-ui">
                &nbsp;
              </SkeletonPopUpTotalPrice>
            </SkeletonPopUpItemTotalPriceContainer>
            <SkeletonPopUpItemOrderBtn className="skeleton-ui">
              &nbsp;
            </SkeletonPopUpItemOrderBtn>
          </SkeletonPopUpItemCountContainer>
        </SkeletonPopUpInformationsStyle>
      </SkeletonPopUpDetailContainerStyle>
      <SkletonCarouselStyle>
        <h2 className="skeleton-ui">&nbsp;</h2>
        <SkeletonItemsStyle>
          <SkeletonItemCardStyle>
            <SkeletonImgContainerStyle>
              <SkeletonImgStyle className="skeleton-ui" />
            </SkeletonImgContainerStyle>
            <div>
              <SkeletonTitleStyle className="skeleton-ui">
                &nbsp;
              </SkeletonTitleStyle>
              <SkeletonDescriptionStyle className="skeleton-ui">
                &nbsp;
              </SkeletonDescriptionStyle>
              <SkeletonPopUpPricesStyle>
                <SkeletonPopUpSalePriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonPopUpSalePriceStyle>
                <SkeletonPopUpNormalPriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonPopUpNormalPriceStyle>
              </SkeletonPopUpPricesStyle>
              <SkeletonLabel className="skeleton-ui">&nbsp;</SkeletonLabel>
            </div>
          </SkeletonItemCardStyle>
          <SkeletonItemCardStyle>
            <SkeletonImgContainerStyle>
              <SkeletonImgStyle className="skeleton-ui" />
            </SkeletonImgContainerStyle>
            <div>
              <SkeletonTitleStyle className="skeleton-ui">
                &nbsp;
              </SkeletonTitleStyle>
              <SkeletonDescriptionStyle className="skeleton-ui">
                &nbsp;
              </SkeletonDescriptionStyle>
              <SkeletonPopUpPricesStyle>
                <SkeletonPopUpSalePriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonPopUpSalePriceStyle>
                <SkeletonPopUpNormalPriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonPopUpNormalPriceStyle>
              </SkeletonPopUpPricesStyle>
              <SkeletonLabel className="skeleton-ui">&nbsp;</SkeletonLabel>
            </div>
          </SkeletonItemCardStyle>
          <SkeletonItemCardStyle>
            <SkeletonImgContainerStyle>
              <SkeletonImgStyle className="skeleton-ui" />
            </SkeletonImgContainerStyle>
            <div>
              <SkeletonTitleStyle className="skeleton-ui">
                &nbsp;
              </SkeletonTitleStyle>
              <SkeletonDescriptionStyle className="skeleton-ui">
                &nbsp;
              </SkeletonDescriptionStyle>
              <SkeletonPopUpPricesStyle>
                <SkeletonPopUpSalePriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonPopUpSalePriceStyle>
                <SkeletonPopUpNormalPriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonPopUpNormalPriceStyle>
              </SkeletonPopUpPricesStyle>
              <SkeletonLabel className="skeleton-ui">&nbsp;</SkeletonLabel>
            </div>
          </SkeletonItemCardStyle>
        </SkeletonItemsStyle>
      </SkletonCarouselStyle>
    </SkeletonPopUpContainerBodyStyle>
  );
}

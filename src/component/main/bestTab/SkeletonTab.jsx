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

const SkeletonTabStyle = styled.div`
  h2 {
    margin-bottom: 2rem;
    background-color: #eef4fa;
    display: inline-block;
    width: 18rem;
    margin-top: 0;
  }
  margin-bottom: 5rem;
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

const SkeletonTabNavigatorStyle = styled.div`
  display: grid;
  grid-gap: 0.5rem;
  grid-template-columns: repeat(5, 13rem);
`;

const SkeletonTabNavigatorItemStyle = styled.div`
  font-size: 1.125rem;
  background-color: #f5f5f5;
  padding: 1rem 2rem;
  &:first-child {
    background-color: #eef4fa;
  }
`;
const SkeletonTabContainer = styled.div``;

const SkeletonItemsStyle = styled.div`
  background-color: #eef4fa;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 1.5rem;
  padding: 2.5rem;
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
  height: 25rem;
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
const SkeletonPricesStyle = styled.div`
  margin-bottom: 1rem;
`;
const SkeletonSalePriceStyle = styled.div`
  display: inline-block;
  width: 5rem;
  margin-right: 1rem;
  font-size: 1.25rem;
  background-color: #eee;
`;
const SkeletonNormalPriceStyle = styled.div`
  display: inline-block;
  width: 5rem;
  background-color: #eee;
`;
const SkeletonLabel = styled.div`
  display: inline-block;
  width: 5.25rem;
  background-color: #eee;
  font-size: 0.875rem;
  border-radius: 0.3rem;
  padding: 0.25rem 1rem;
`;

export default function SkeletonTab() {
  return (
    <SkeletonTabStyle>
      <h2 className="skeleton-ui">&nbsp;</h2>
      <SkeletonTabNavigatorStyle>
        <SkeletonTabNavigatorItemStyle className="skeleton-ui">
          &nbsp;
        </SkeletonTabNavigatorItemStyle>
        <SkeletonTabNavigatorItemStyle className="skeleton-ui">
          &nbsp;
        </SkeletonTabNavigatorItemStyle>
        <SkeletonTabNavigatorItemStyle className="skeleton-ui">
          &nbsp;
        </SkeletonTabNavigatorItemStyle>
        <SkeletonTabNavigatorItemStyle className="skeleton-ui">
          &nbsp;
        </SkeletonTabNavigatorItemStyle>
        <SkeletonTabNavigatorItemStyle className="skeleton-ui">
          &nbsp;
        </SkeletonTabNavigatorItemStyle>
      </SkeletonTabNavigatorStyle>
      <SkeletonTabContainer>
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
              <SkeletonPricesStyle>
                <SkeletonSalePriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonSalePriceStyle>
                <SkeletonNormalPriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonNormalPriceStyle>
              </SkeletonPricesStyle>
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
              <SkeletonPricesStyle>
                <SkeletonSalePriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonSalePriceStyle>
                <SkeletonNormalPriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonNormalPriceStyle>
              </SkeletonPricesStyle>
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
              <SkeletonPricesStyle>
                <SkeletonSalePriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonSalePriceStyle>
                <SkeletonNormalPriceStyle className="skeleton-ui">
                  &nbsp;
                </SkeletonNormalPriceStyle>
              </SkeletonPricesStyle>
              <SkeletonLabel className="skeleton-ui">&nbsp;</SkeletonLabel>
            </div>
          </SkeletonItemCardStyle>
        </SkeletonItemsStyle>
      </SkeletonTabContainer>
    </SkeletonTabStyle>
  );
}

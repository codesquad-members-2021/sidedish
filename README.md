# sidedish
그룹프로젝트 #2

Team 10

## 팀원

### iOS
- dumba
- Min

### Backend
- Bongf
- K

## 실행 화면

### Main View

<img src = "https://github.com/ghis22130/sidedish/blob/dev/iOS/Docs/MainView.gif?raw=true" width = "40%">

💁‍♂️ 메인 화면에서 **메인요리**, **국물요리**, **밑반찬** 으로 분류 된 음식들을 상, 하로 스크롤 하여 탐색 하실 수 있습니다.

💁‍♂️ 각 반찬들의 이름과 용량, 간단한 설명, 정가, 할인 가격, 할인 정보를 확인하실 수 있습니다.



### Detail View & Sold Out

<p align = "center"><img src = "https://github.com/ghis22130/sidedish/blob/dev/iOS/Docs/Detail&SoldOut.gif?raw=true" width = "40%"></p>

💁‍♂️ 메인 화면에서 원하는 반찬을 클릭하시면 해당 반찬에 대한 상세한 정보를 얻으실 수 있습니다.

💁‍♂️ 해당 반찬의 재고가 없으면 아쉽지만 `주문 하기` 버튼은 `일시 품절`로 바뀌며 버튼이 비활성화 되어 주문하실 수 없습니다.



### Order

<p align = "center"><img src = "https://github.com/ghis22130/sidedish/blob/dev/iOS/Docs/Order.gif?raw=true" width = "40%"></p>

💁‍♂️ 원하시는 반찬에 대한 재고가 있으면 `주문하기` 버튼이 활성화 되어있으며 주문 진행이 가능합니다.

💁‍♂️ 하지만 현재 재고보다 많은 수량을 주문하려 할시에는 `Alert` 로 재고가 부족함을 알립니다.

💁‍♂️ 재고 안에서 주문을 하실 경우에는 성공적으로 주문 접수가 완료되며 `주문이 완료되었습니다` 라는 알림과 함께 Main 화면으로 이동하게 됩니다.



### Toast

<p align = "center"><img src = "https://github.com/ghis22130/sidedish/blob/dev/iOS/Docs/Toast.gif?raw=true" width = "40%"></p>

💁‍♂️ 메인 화면에서 **메인요리**, **국물요리**, **밑반찬** 코너의 헤더를 탭하게 되면 화면 중앙 하단에 Toast로 해당 코너의 등록된 반찬 종류의 개수를 알 수 있습니다.

## 브랜치 전략

폴더를 iOS와 BE 두개로 나누어서 관리합니다.

main : 배포용 브랜치

dev/iOS, dev/BE : 주 개발 브랜치

review/iOS, review/BE : upstream 리뷰용 브랜치, dev에서 시작하도록 함.

기능 추가 : 기능 이름에 맞게 자유롭게 설정합니다. dev에서 시작해서 dev로 pull request.

## 커밋 규칙

```
# <type>: <Title>

##################################################


# 본문은 위에 작성
########################################################################

# 꼬릿말은 아래에 작성: ex) #이슈 번호

# --- COMMIT END ---
# <타입> 리스트
#   feat    : 기능 (새로운 기능)
#   fix     : 버그 (버그 수정)
#   refactor: 리팩토링
#   style   : 스타일 (코드 형식, 세미콜론 추가: 비즈니스 로직에 변경 없음)
#   docs    : 문서 (문서 추가, 수정, 삭제)
#   test    : 테스트 (테스트 코드 추가, 수정, 삭제: 비즈니스 로직에 변경 없음)
#   chore   : 기타 변경사항 (빌드 스크립트 수정 등)
# ------------------
#     제목 첫 글자를 대문자로
#     제목은 명령문으로
#     제목 끝에 마침표(.) 금지
#     제목과 본문을 한 줄 띄워 분리하기
#     본문은 "어떻게" 보다 "무엇을", "왜"를 설명한다.
#     본문에 여러줄의 메시지를 작성할 땐 "-"로 구분
# ------------------
```


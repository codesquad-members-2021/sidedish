export const URL = {
  default() {
    return 'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/';
  },
  best(id) {
    return `${this.default()}best/${id ? id : ''}`;
  },
  main(id) {
    return `${this.default()}main/${id ? id : ''}`;
  },
  soup(id) {
    return `${this.default()}soup/${id ? id : ''}`;
  },
  side(id) {
    return `${this.default()}side/${id ? id : ''}`;
  },
  detail(id) {
    return `${this.default()}detail/${id ? id : ''}`;
  },
};

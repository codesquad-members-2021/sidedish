export const URL = {
  default() {
    return 'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/';
  },
  best() {
    return `${this.default()}best`;
  },
  main() {
    return `${this.default()}main`;
  },
  soup() {
    return `${this.default()}soup`;
  },
  side() {
    return `${this.default()}side`;
  },
  detail() {
    return `${this.default()}detail`;
  },
};

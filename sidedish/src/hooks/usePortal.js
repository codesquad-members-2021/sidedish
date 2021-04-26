const { useRef, useEffect } = require('react');

const usePortal = (id) => {
  const portalElem = useRef(document.createElement('div'));

  useEffect(() => {
    const parentElem = document.querySelector(`#${id}`);
    parentElem.appendChild(portalElem.current);
  }, [id]);

  return portalElem.current;
};

export default usePortal;

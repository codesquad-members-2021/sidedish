import React, { useState, useEffect } from 'react';
import Modal from '../common/Modal.js';
import MenuDetail from './MenuDetail/MenuDetail.js';

// FIXME
function MenuDetailModal({ hash, title = "[소중한식사] 경상도 한상차림" }) {
  useEffect(() => {
    // TODO: fetch img data
  }, []);

  return (
    <Modal>
      <MenuDetail hash={hash} title={title}/>
    </Modal>
  )
};

export default MenuDetailModal;
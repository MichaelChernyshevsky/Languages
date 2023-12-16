import React from 'react';
import {Skeleton} from './skeleton';
import { User } from './user';

export const Users = ({ items, isLoading , searchUser,onChangeSearch,invites,onClickInvite }) => {
  return (
    <>
      <div className="search">
        <svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
          <path d="M12.9 14.32a8 8 0 1 1 1.41-1.41l5.35 5.33-1.42 1.42-5.33-5.34zM8 14A6 6 0 1 0 8 2a6 6 0 0 0 0 12z" />
        </svg>
        <input 
          value={searchUser}  
          onChange={onChangeSearch} 
          on type="text" 
          placeholder="Найти пользователя..." 
        />
      </div>
      {isLoading ? (
        <div className="skeleton-list">
          <Skeleton />
          <Skeleton />
          <Skeleton />
        </div>
      ) : (
        <ul className="users-list">
         
          {items.filter((obj)=>{
            const fullName  = obj.first_name+obj.lastName;
            return (fullName.includes(searchUser) || obj.email.includes(searchUser)) ? true : false;
          }).map((item)=>
          (<User 
            isInvited = {invites.includes(item.id)}
            onClickInvite = {onClickInvite}
            item = {item} 
          />))}
          
          
        </ul>
      )}
      <button className="send-invite-btn">Отправить приглашение</button>
    </>
  );
};

import React from 'react'
import { Users } from './users';
import './index.scss';

function UsersList() {

    const [users, setUSers] = React.useState([]);
    const [isLoading,setLoading] = React.useState(true);
    const [searchUser,setSearch] = React.useState('');
    const [invites,setInvites] = React.useState([]);


    React.useEffect(() => {
        fetch('https://reqres.in/api/users').
        then((res) => res.json()).
        then((json) => {
            setUSers(json.data);
        }).catch(
            (err) => {
                console.warn(err);
                alert('Ошибка')
            }
        ).finally(()=>setLoading(false));
    }, []);

    const onChangeSearch = (event) => {
        setSearch(event.target.value)
    }

    const onClickInvite = (id) => {
        // исключение пользователя
        if(invites.includes(id)){
            setInvites((prev) => prev.filter((_id) => _id != id ));
        } else {
            setInvites((prev) => [...prev,id]);
        }
    }


    return (
        <div className='App'>
            <Users 
                invites = {invites}
                onClickInvite = {onClickInvite}
                onChangeSearch = {onChangeSearch}
                searchUser = {searchUser} 
                items={users} 
                isLoading={isLoading} 
            />
        </div>
    );
}

export default UsersList;
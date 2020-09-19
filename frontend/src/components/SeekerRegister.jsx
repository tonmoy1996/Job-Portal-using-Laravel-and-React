import React, { useState } from 'react';
import axios from '../axios';
export default function SeekerRegister(props) {
  const [first_name, setFirstName] = useState('');
  const [last_name, setLastName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();

    const data = {
      first_name: first_name,
      last_name: last_name,
      email: email,
      password: password,
      image: '',
      resume: '',
      skill: '',
    };
    try {
      await axios.post('/emp_create', data);
      props.history.push('/login');
    } catch (err) {
      console.log(err);
    }
  };
  return (
    <div>
      <h2>Job Seeker Register</h2>
      <form onSubmit={handleSubmit} className='mt-5'>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={first_name}
            value={first_name}
            onChange={(e) => setFirstName(e.target.value)}
            placeholder='first_name'
          />
        </div>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={last_name}
            value={last_name}
            onChange={(e) => setLastName(e.target.value)}
            placeholder='last_name'
          />
        </div>
        <div className='form-group'>
          <input
            type='email'
            className='form-control mb-2'
            name={email}
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder='email'
          />
        </div>
        <div className='form-group'>
          <input
            type='password'
            className='form-control mb-2'
            name={password}
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder='password'
          />
        </div>

        <button type='submit' className='btn btn-primary'>
          Submit
        </button>
      </form>
    </div>
  );
}

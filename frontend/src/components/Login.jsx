import React, { useState } from 'react';
import axios from '../axios';
export default function Login(props) {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [type, setType] = useState('');
  const handleSubmit = async (e) => {
    e.preventDefault();
    let formData = new FormData();
    formData.append('email', email);
    formData.append('password', password);
    formData.append('type', type);
    try {
      const results = await axios.post('/login', formData);
      if (type === 'company') {
        setEmail('');
        setPassword('');
        setType('');
        localStorage.setItem('company_id', results.data.company_id);
        props.history.push(`/company/${results.data.company_id}`);
      } else {
        setEmail('');
        setPassword('');
        setType('');
        localStorage.setItem('employee_id', results.data.employee_id);
        props.history.push(`/seeker/${results.data.employee_id}`);
      }
    } catch (err) {
      console.log('username or password is incorrect');
    }
  };
  return (
    <div>
      <form onSubmit={handleSubmit} className='mt-5'>
        <div className='form-group'>
          <input
            type='email'
            className='form-control mb-2'
            id='exampleInputEmail1'
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
            id='exampleInputPassword1'
            name={password}
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder='password'
          />
        </div>
        <div className='form-group'>
          <select
            value={type}
            name={type}
            className='custom-select'
            onChange={(e) => setType(e.target.value)}
          >
            <option value=''>Choose Type</option>
            <option value='company'>Company</option>
            <option value='seeker'>Job Seeker</option>
          </select>
        </div>

        <button type='submit' className='btn btn-primary'>
          Submit
        </button>
      </form>
    </div>
  );
}

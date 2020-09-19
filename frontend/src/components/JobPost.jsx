import React, { useState } from 'react';
import axios from '../axios';
export default function JobPost(props) {
  const [title, setTitle] = useState('');
  const [des, setDes] = useState('');
  const [salary, setSalary] = useState('');
  const [location, setLocation] = useState('');
  const [country, setCountry] = useState('');
  const handleSubmit = async (e) => {
    e.preventDefault();
    const company_id = localStorage.getItem('company_id');
    const data = {
      title: title,
      des: des,
      salary: salary,
      location: location,
      country: country,
      company_id: company_id,
    };
    await axios.post('/job_register', data);
    props.history.push('/');
  };
  return (
    <div>
      <h4>Job Register:</h4>
      <form onSubmit={handleSubmit}>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={title}
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            placeholder='title'
          />
        </div>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={des}
            value={des}
            onChange={(e) => setDes(e.target.value)}
            placeholder='des'
          />
        </div>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={salary}
            value={salary}
            onChange={(e) => setSalary(e.target.value)}
            placeholder='salary'
          />
        </div>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={location}
            value={location}
            onChange={(e) => setLocation(e.target.value)}
            placeholder='location'
          />
        </div>
        <div className='form-group'>
          <input
            type='text'
            className='form-control mb-2'
            name={country}
            value={country}
            onChange={(e) => setCountry(e.target.value)}
            placeholder='country'
          />
        </div>

        <button type='submit' className='btn btn-primary btn-block'>
          Register
        </button>
      </form>
    </div>
  );
}

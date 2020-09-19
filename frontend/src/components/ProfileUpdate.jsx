import axios from '../axios';
import React, { useState } from 'react';

export default function ProfileUpdate(props) {
  const [image, setImage] = useState('');
  const [resume, setResume] = useState('');
  const [skill, setSkill] = useState('');
  const handleSubmit = async (e) => {
    e.preventDefault();
    console.log(image, resume, skill);
    const url = `emp_update/${props.match.params.id}`;
    const uploadreport = new FormData();
    uploadreport.append('image', image);
    uploadreport.append('resume', resume);
    uploadreport.append('skill', skill);

    const result = await axios.post(url, uploadreport);
    console.log(result.data);
  };
  return (
    <div>
      <div className='col-md-10'>
        <h3>Profile Update(add Profile pic & Resume)</h3>
        <form onSubmit={handleSubmit}>
          <div className='form-group'>
            <label htmlFor='name'> Profile Pic: </label>
            <input
              type='file'
              className='form-control'
              name={image}
              onChange={(e) => setImage(e.target.files[0])}
            />
          </div>
          <div className='form-group'>
            <label htmlFor='name'> Resume: </label>
            <input
              type='file'
              className='form-control'
              name={resume}
              onChange={(e) => setResume(e.target.files[0])}
            />
          </div>
          <div className='form-group'>
            <label htmlFor='name'>Skills: </label>
            <input
              type='text'
              className='form-control'
              placeholder='Skills '
              name='skill'
              value={skill}
              onChange={(e) => setSkill(e.target.value)}
            />
          </div>

          <button type='submit' className='btn btn-primary'>
            Update
          </button>
        </form>
      </div>
    </div>
  );
}

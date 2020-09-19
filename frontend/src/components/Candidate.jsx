import React, { Component } from 'react';
import axios from '../axios';

class Candidate extends Component {
  state = {
    seekers: [],
  };
  async componentDidMount() {
    const url = `can/${this.props.match.params.id}`;
    const result = await axios.get(url);
    this.setState({
      seekers: result.data,
    });
    console.log(this.state.seekers);
  }
  render() {
    const { seekers } = this.state;
    return (
      <div>
        <h5>Applied Candidate for this desired Post:</h5>
        {seekers.map((item) => (
          <div className='mt-4'>
            <div className='list-group'>
              <li className='list-group-item list-group-item-action active'>
                {item.employee_first_name}
              </li>
              <li className='list-group-item'>{item.employee_last_name}</li>
              <li className='list-group-item'>{item.employee_email}</li>
              <li className='list-group-item'>Resume: {item.resume_path}</li>
            </div>
          </div>
        ))}
      </div>
    );
  }
}

export default Candidate;

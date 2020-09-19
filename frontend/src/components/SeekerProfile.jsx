import React, { Component } from 'react';
import axios from '../axios';
import { Link } from 'react-router-dom';
class SeekerProfile extends Component {
  state = {
    employee: {},
  };
  async componentDidMount() {
    const url = `get_emp/${this.props.match.params.id}`;
    const result = await axios.get(url);
    this.setState({
      employee: result.data,
    });
  }
  render() {
    // console.log(this.state.employee);
    return (
      <div>
        <div className='card mt-5 ' style={{ width: '20rem' }}>
          <img
            src={
              `http://127.0.0.1:8000/images/` + this.state.employee.image_path
            }
            className='card-img-top'
            alt=''
            height='200'
            width='100%'
          />
          <div className='card-body'>
            <h5 className='card-title'>
              Welcome {this.state.employee.employee_first_name}{' '}
              {this.state.employee.employee_last_name}
            </h5>
            <p className='card-text'>{this.state.employee.employee_email}</p>
            <p className='card-text'>
              Resume: {this.state.employee.resume_path}
            </p>
            <Link
              to={`/profile_update/` + this.state.employee.employee_id}
              class='btn btn-primary'
            >
              Update profile
            </Link>
          </div>
        </div>
      </div>
    );
  }
}

export default SeekerProfile;

import React, { Component } from 'react';
import axios from '../axios';
import { Link } from 'react-router-dom';

class CompanyProfile extends Component {
  state = {
    company: {},
    jobs: [],
  };
  async componentDidMount() {
    //company profile
    const url = `com_profile/${this.props.match.params.id}`;
    const result = await axios.get(url);
    this.setState({
      company: result.data,
    });
    //jobs by the company

    const url2 = `posted/${this.props.match.params.id}`;
    const result2 = await axios.get(url2);

    this.setState({
      jobs: result2.data,
    });
  }
  render() {
    const { jobs } = this.state;
    return (
      <div>
        <h4>Welcome company</h4>
        <div className='card mt-5 ' style={{ width: '40rem' }}>
          <div className='card-body'>
            <h5 className='card-title'>
              Welcome {this.state.company.company_first_name}{' '}
              {this.state.company.company_last_name}
            </h5>
            <p className='card-text'>
              Business Name: {this.state.company.company_business_name}
            </p>
            <p className='card-text'>
              Email Address: {this.state.company.company_email}
            </p>
            <Link to='/job_post' className='btn btn-primary'>
              Job Post
            </Link>
          </div>
        </div>
        <h5 className='text-primary'>Posted Jobs:</h5>

        {jobs.map((job) => (
          <div className='mt-4' key={job.register_id}>
            <div className='list-group'>
              <li className='list-group-item list-group-item-action active'>
                {job.job_title}
              </li>
              <li className='list-group-item'>{job.job_description}</li>
              <li className='list-group-item'>{job.salary}</li>
              <li className='list-group-item'>{job.location}</li>
              <li className='list-group-item'>{job.country}</li>
              <li className='list-group-item'>
                <Link
                  to={`/candidate/` + job.register_id}
                  className='btn btn-info btn-block'
                >
                  Show Applied Candidates
                </Link>
              </li>
            </div>
          </div>
        ))}
      </div>
    );
  }
}

export default CompanyProfile;

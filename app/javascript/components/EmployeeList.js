import React, {Component} from 'react';
import axios from 'axios';

class employeeList extends Component {

    constructor(props) {
        super(props);
        console.log(this.props);
        this.state = {
            employees: []
        }
    }

    componentDidMount() {
        axios.get('/employees/show').then(res =>
            this.setState({
                employees: res.data.records
            }))
    }

    render() {
        return(
            <div className="container">
                <h1> Employees List</h1>
                <table className="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email Id</th>
                        </tr>
                    </thead>
                    <tbody>
                        {this.state.employees.map(emp => 
                            <tr key={emp.id}>
                                <td>{emp.firstName}</td>
                                <td>{emp.lastName}</td>
                                <td>{emp.emailId}</td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>
        ) 
    }

}

export default employeeList;
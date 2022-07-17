import React from "react";

export default function Profile({ profile }) {
  return (
    <div className="profile">
      <h2 className="text-center">PROFILE </h2>
      <ul className="list-group">
        <li className="list-group-item">Name : {profile.name} </li>
        <li className="list-group-item">Email : {profile.email}</li>
        <li style={{ padding: "12px" }}>
          <button className="btn btn-success m-4"> All Orders</button>
        </li>
      </ul>
    </div>
  );
}

import React, { useEffect, useState } from "react";
import { fetchAllSiteInfo } from "../../Services/services";

export default function Infor(props) {
  const [siteInfo, setSiteInfo] = useState([]);
  const [content, setContent] = useState("");
  useEffect(() => {
    async function fetchApi() {
      const data = await fetchAllSiteInfo();
      setSiteInfo(data[0]);
      setContent(data[0][props.slug]);
    }
    fetchApi();
  }, [props.slug]);

  return content ? (
    <div className="content">
      <div className="infopanel">
        <h2 className="title">{props.title}</h2>
        <div
          className="content h4"
          dangerouslySetInnerHTML={{ __html: content }}
        />
      </div>
    </div>
  ) : (
    <div className="ph-item">
      <div className="ph-col-12">
        <div className="ph-row">
          <div className="ph-col-2 "></div>
          <div className="ph-col-10 empty"></div>
          <div className="ph-col-4"></div>
          <div className="ph-col-8 empty"></div>
          <div className="ph-col-6"></div>
          <div className="ph-col-6 empty"></div>
          <div className="ph-col-9"></div>
          <div className="ph-col-3 empty"></div>
          <div className="ph-col-10"></div>
          <div className="ph-col-2 empty"></div>
          <div className="ph-col-11"></div>
          <div className="ph-col-1 empty"></div>
          <div className="ph-col-12"></div>
        </div>
      </div>
    </div>
  );
}

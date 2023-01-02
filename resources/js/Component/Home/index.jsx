import React,{useEffect,useState} from 'react';
import axios from 'axios';

function Home(){
    const [Post, setPost]=useState([]);
    useEffect(()=>{
        console.log(Post)
    })
    const fetchPost = ()=>{
         axios.get(`http://127.0.0.1:8000/api/posts`).then((d)=>{ setPost(d.data) })
    }
    window.onload=function(){
        fetchPost()
    }
    
    return(
        <>
        
            <div className="container-fluid">
                <div className="row">
                    <div className="col-lg-7 px-0">
                        <div className="position-relative overflow-hidden" style={{height: "500px"}}>
                            <img className="img-fluid h-100" src="frontend/img/news-800x500-1.jpg" style={{objectFit: "cover"}}/>
                            <div className="overlay">
                                <div className="mb-2">
                                    <a className="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                        href="">Business</a>
                                    <a className="text-white" href="">Jan 01, 2045</a>
                                </div>
                                <a className="h2 m-0 text-white text-uppercase font-weight-bold" href="">Lorem ipsum dolor sit amet elit. Proin vitae porta diam...</a>
                            </div>
                        </div>
                    </div>
                    <div className="col-lg-5 px-0">
                        <div className="row mx-0">
                            <div className="col-md-6 px-0">
                                <div className="position-relative overflow-hidden" style={{height: "250px"}}>
                                    <img className="img-fluid w-100 h-100" src="frontend/img/news-700x435-1.jpg" style={{objectFit: "cover"}}/>
                                    <div className="overlay">
                                        <div className="mb-2">
                                            <a className="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                href="">Business</a>
                                            <a className="text-white" href=""><small>Jan 01, 2045</small></a>
                                        </div>
                                        <a className="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                                    </div>
                                </div>
                            </div>
                            <div className="col-md-6 px-0">
                                <div className="position-relative overflow-hidden" style={{height: "250px"}}>
                                    <img className="img-fluid w-100 h-100" src="frontend/img/news-700x435-2.jpg" style={{objectFit: "cover"}}/>
                                    <div className="overlay">
                                        <div className="mb-2">
                                            <a className="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                href="">Business</a>
                                            <a className="text-white" href=""><small>Jan 01, 2045</small></a>
                                        </div>
                                        <a className="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                                    </div>
                                </div>
                            </div>
                            <div className="col-md-6 px-0">
                                <div className="position-relative overflow-hidden" style={{height: "250px"}}>
                                    <img className="img-fluid w-100 h-100" src="frontend/img/news-700x435-3.jpg" style={{objectFit: "cover"}}/>
                                    <div className="overlay">
                                        <div className="mb-2">
                                            <a className="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                href="">Business</a>
                                            <a className="text-white" href=""><small>Jan 01, 2045</small></a>
                                        </div>
                                        <a className="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                                    </div>
                                </div>
                            </div>
                            <div className="col-md-6 px-0">
                                <div className="position-relative overflow-hidden" style={{height: "250px"}}>
                                    <img className="img-fluid w-100 h-100" src="frontend/img/news-700x435-4.jpg" style={{objectFit: "cover"}}/>
                                    <div className="overlay">
                                        <div className="mb-2">
                                            <a className="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                href="">Business</a>
                                            <a className="text-white" href=""><small>Jan 01, 2045</small></a>
                                        </div>
                                        <a className="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="container-fluid bg-dark py-3 mb-3">
                <div className="container">
                    <div className="row align-items-center bg-dark">
                        <div className="col-12">
                            <div className="d-flex justify-content-between">
                                <div className="bg-primary text-dark text-center font-weight-medium py-2" style={{width: "170px"}}>Breaking News</div>
                                <marquee className="owl-carousel tranding-carousel position-relative d-inline-flex align-items-center ml-3">
                                    <div className="text-truncate"><a className="text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit. Proin interdum lacus eget ante tincidunt, sed faucibus nisl sodales</a> <a className="text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit. Proin interdum lacus eget ante tincidunt, sed faucibus nisl sodales</a></div>
                                </marquee>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="container-fluid">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-8">
                            <div className="row">
                                <div className="col-12">
                                    <div className="section-title">
                                        <h4 className="m-0 text-uppercase font-weight-bold">Latest News</h4>
                                        <a className="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                                    </div>
                                </div>
                                {Post.length > 0 && Post.map((row,key)=>(
                                <div className="col-lg-6">
                                    <div className="position-relative mb-3">
                                        <img className="img-fluid w-100" src={row.post_image} style={{objectFit: "cover"}}/>
                                        <div className="bg-white border border-top-0 p-4">
                                            <div className="mb-2">
                                                <a className="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                                    href="">Business</a>
                                                <a className="text-body" href=""><small>Jan 01, 2045</small></a>
                                            </div>
                                            <a className="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="">{row.title}</a>
                                            <p className="m-0">{row.short_details}</p>
                                        </div>
                                        <div className="d-flex justify-content-between bg-white border border-top-0 p-4">
                                            <div className="d-flex align-items-center">
                                                <img className="rounded-circle mr-2" src="frontend/img/user.jpg" width="25" height="25" alt=""/>
                                                <small>{row.author}</small>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                ))}
                                
                            </div>
                        </div>
                        
                        <div className="col-lg-4">
                            
                            
                            <div className="mb-3">
                                <div className="section-title mb-0">
                                    <h4 className="m-0 text-uppercase font-weight-bold">Advertisement</h4>
                                </div>
                                <div className="bg-white text-center border border-top-0 p-3">
                                    <a href=""><img className="img-fluid" src="img/news-800x500-2.jpg" alt=""/></a>
                                </div>
                            </div>
                        
                        
                            <div className="mb-3">
                                <div className="section-title mb-0">
                                    <h4 className="m-0 text-uppercase font-weight-bold">Tranding News</h4>
                                </div>
                                <div className="bg-white border border-top-0 p-3">
                                    <div className="d-flex align-items-center bg-white mb-3" style={{height: "110px"}}>
                                        <img className="img-fluid" src="img/news-110x110-1.jpg" alt=""/>
                                        <div className="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                            <div className="mb-2">
                                                <a className="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2" href="">Business</a>
                                                <a className="text-body" href=""><small>Jan 01, 2045</small></a>
                                            </div>
                                            <a className="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                                        </div>
                                    </div>
                                    <div className="d-flex align-items-center bg-white mb-3" style={{height: "110px"}}>
                                        <img className="img-fluid" src="img/news-110x110-2.jpg" alt=""/>
                                        <div className="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                            <div className="mb-2">
                                                <a className="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2" href="">Business</a>
                                                <a className="text-body" href=""><small>Jan 01, 2045</small></a>
                                            </div>
                                            <a className="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            <div className="mb-3">
                                <div className="section-title mb-0">
                                    <h4 className="m-0 text-uppercase font-weight-bold">Tags</h4>
                                </div>
                                <div className="bg-white border border-top-0 p-3">
                                    <div className="d-flex flex-wrap m-n1">
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Politics</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Business</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Corporate</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Business</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Health</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Education</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Science</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Business</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Foods</a>
                                        <a href="" className="btn btn-sm btn-outline-secondary m-1">Travel</a>
                                    </div>
                                </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </>

    );
}
export default Home;
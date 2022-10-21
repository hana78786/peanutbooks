<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>땅콩북스</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="/resources/img/icons8-book-32.png">
    <link rel="stylesheet" href="/resources/css/book/bookregist-admin.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>
<body>
	<jsp:include page="../header/header.jsp" />
    <main>
        <section class="container">
            <article>
                <h1>도서등록</h1>
                <div id="title-area">
                    <div class="title-text">

                        <input type="text" id="title-text" placeholder="제목을 입력하세요">
                    </div>
                    

                </div>

            </article>
            <article class="info-area row">
                <div class="col-md-6" id="pic-area">
                    <h5 class="cover-title">표지등록</h5>

                    <div class="align-items-center">
                        <div class="align-items-center">
                            <img class="headerimg">
                            <label class="input-file-button float-md-start"> 
                                <img src="/resources/img/book/icons8-camera-96.png" alt="" id="camera1">
                                 <input type="file" name="recipePicture" class="isFile" style="display: none"
                                    accept="image/jpeg, image/png, image/jpg" onchange="imgView(this);">
                            </label>
            
                        </div>
            
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="category">
                        <select name="" id="">
                            <option value="">카테고리를 선택하세요</option>
                            <option value="novel">소설</option>
                            <option value="essay">에세이</option>
                            <option value="tale">동화</option>
                            <option value="poem">시</option>
                        </select> 

                        <select name="" id="">
                            <option value="">언어를 선택하세요</option>
                            <option value="novel">한국어</option>
                            <option value="essay">영어</option>
                            <option value="tale">일본어</option>
                        </select>

                    </div>
                    <h5>작품소개</h5>
                    <textarea name="" id="info-text" cols="10" rows="10" placeholder="소개를 입력하세요"></textarea>
                    
                    <h5>작가소개</h5>
                    <input type="text" name="" id="writer-name" placeholder="작가명을 입력하세요">
                    <textarea name="" id="wirter-info" cols="10" rows="10" placeholder="소개를 입력하세요"></textarea>


                    <div id="tag-area">
                        <h5>해시태그</h5>
                        <select name="" id="">
                            <option value="">해시태그를 선택하세요</option>
                            <option value="essay">에세이</option>
                            <option value="tale">동화</option>
                            <option value="poem">시</option>
                        </select>

                        <select name="" id="">
                            <option value="">해시태그를 선택하세요</option>
                            <option value="essay">에세이</option>
                            <option value="tale">동화</option>
                            <option value="poem">시</option>
                        </select>
                        
                        <select name="" id="">
                            <option value="">해시태그를 선택하세요</option>
                            <option value="essay">에세이</option>
                            <option value="tale">동화</option>
                            <option value="poem">시</option>
                        </select>


                    </div>
                
                </div>

                    
            </article>
            
            <hr>
            <article id="first-contents">
                <h2>1화 등록</h2>
            
                <div id="contents-text" >
                    <input type="text" placeholder="제목을 입력해주세요" class="text-input">

                    
                </div>

                <div id="contents-pic-area">
                    <div class="align-items-center">
                        <div class="align-items-center">
                            <img class="contentsimg">
                            <label class="input-file-button float-md-start"> 
                                <img src="/resources/img/book/icons8-camera-96.png" alt="" id="camera2">
                                 <input type="file" name="recipePicture" class="isFile" style="display: none"
                                    accept="image/jpeg, image/png, image/jpg" onchange="imgView(this);">
                            </label>
            
                        </div>
            
                    </div>
                </div>

                <div class="contents-textarea">

                    <div id="summernote"></div>
                    <textarea rows="" cols="" style="display:none" name="Contents" required="required"></textarea>
                </div>
                <div class="contents-button row">
                    
                    <button class="col-6"> 등록</button>  <button class="col-6"> 취소</button>
                </div>


            </article>
        </section>

    </main>
    	<jsp:include page="../footer/footer.jsp" />
</body>
<script src="/resources/js/book/bookregist.js"></script>
</html>
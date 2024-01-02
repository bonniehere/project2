<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="euc-kr">
    <meta http-equiv="Content-Language" content="ko-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, viewport-fit=cover">
    <meta name="format-detection" content="telephone=no">
    
    <title>안심본인인증 - PASS - SK Telecom - 문자(SMS)로 인증</title>
    <!-- css -->
    <link href="/css/mobileCert/common.css?ver=1701927244016" media="screen" rel="stylesheet">
    <link href="/css/mobileCert/site.css?ver=1701927244016" media="screen" rel="stylesheet">
    <link href="/css/notice/notice.css?ver=1701927244016" media="screen" rel="stylesheet">
    <!-- common js -->
    <script type="text/javascript" src="/js/common/jquery-1.10.2.min.js?ver=1701927244016"></script>
    <script type="text/javascript" src="/js/common/jquery.nicescroll.js?ver=1701927244016"></script>
    <!-- service js -->
    <script type="text/javascript" src="/js/service/defaultPwDes.js?ver=1701927244016"></script>
    <script type="text/javascript" src="/js/service/commonUtil.js?ver=1701927244016"></script>
    <script type="text/javascript" src="/js/service/agreeLayer.js?ver=1701927244016"></script>
    <script type="text/javascript" src="/js/service/platformInfo.js?ver=1701927244016"></script>
    
    <!-- mobileCert js -->
    <script type="text/javascript" src="/js/mobileCert/mobileCertPwDes.js?ver=1701927244016"></script>
    <script type="text/javascript" src="/js/mobileCert/mobileCert.js?ver=1701927244016"></script>
    <!-- googleAnalytics js -->
    
    
        <!-- Google tag (gtag.js) -->
        <script async="" src="https://www.googletagmanager.com/gtag/js?id=G-HGV45ZGMXC"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'G-HGV45ZGMXC');

            // 구글 이벤트 추가
            let title = $("title").text();
            gtag("event", "nice_page_view",{
                "service" : "checkplus",
                "page_name" : title,
                "site_code" : "BY547",
                "auth_type" : ""});
        </script>
    

    <script type="text/javascript">
        const SERVICE_INFO = "75b743e86227a2589246472ecd4b01342c0391642fe851d57b0ea3336193835e";

        $(window).on("pageshow",function(evt) {
            try {
                if (evt.originalEvent.persisted || (window.performance && window.performance.navigation.type === 2)) {
                    onMovePage("/cert/mobileCert/main");
                }
            } catch (e) {
                console.log(e);
            }
        });

        $(window).load(function() {
            try {
                // 엣지 브라우져가 아니면 페이지 resize 동작 및 키보드 보안 동작
                winResize("wrap");
            } catch (err) {
                console.log(err);
            }
        });
    </script>
    
    
    
        <script type="text/javascript">
            //<![CDATA[
            let TNK_SR = "c027ce1717254047e89b3f8605cc8092";
            let touchEnControl = false;
            $(window).load(function() {
                try {
                    if (useTouchEnnxKey) {
                        console.log("키보드보안 적용");
                        for (let i = 0; i < document.forms.length; i++) {
                            for (let j = 0; j < document.forms[i].elements.length; j++) {
                                if (document.forms[i].elements[j].tagName === "INPUT" && (document.forms[i].elements[j].type === "text" || document.forms[i].elements[j].type === "password")) {
                                    if (document.forms[i].elements[j].name !== "userName") { // 한글 필드는 제외
                                        document.forms[i].elements[j].setAttribute("data-enc", "on");
                                    }
                                }
                            }
                        }
                        TK_Loading();
                    }
                } catch (err) {
                    console.log(err);
                }
            });
            //]]>
        </script>
        <script type="text/javascript" src="/touchEn/cmn/TouchEnNx.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/cmn/TouchEnNx_exproto.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/cmn/TouchEnNx_install.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/cmn/TouchEnNx_daemon.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/nxKey/js/nxkey_config.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/nxKey/js/TouchEnNxKey_Interface.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/nxKey/js/TouchEnNxKey.js?ver=1701927244016" charset="euc-kr"></script>
        <script type="text/javascript" src="/touchEn/cmn/TouchEnNx_loader.js?ver=1701927244016" charset="euc-kr"></script>
    

    <script type="text/javascript" src="/js/mobileCert/mobileCertPwDesInput.js?ver=1701927244016"></script>
    <script type="text/javascript" src="/js/service/simpleCaptcha.js?ver=1701927244016"></script>
    <script type="text/javascript">
        let overClickCheck = false; // 중복 클릭 방지
        const captchaVersion = "6f6bd817e960fa123f848ac6013392088fffb4264db631b459bb8ebacad39531";
        $(function() {
            // SMS 인증
            $('body').on('click', '#btnSubmit', function () {
                if (overClickCheck) return false;
                if (!checkValue($("#userName"),"이름을 입력해 주세요.")) return false;
                if (!checkRegExp($("#userName"), "NAME", "올바른 이름을 입력해주세요.")) return false;
                if (!checkValue($("#myNum1"),"생년월일을 입력해 주세요.")) return false;
                if (!checkRegExp($("#myNum1"), "MYNUM1", "올바른 생년월일을 입력해주세요.")) return false;
                if (!checkValue($("#myNum2"),"성별을 입력해 주세요.")) return false;
                if (!checkRegExp($("#myNum2"), "MYNUM2", "올바른 성별을 입력해주세요.")) return false;
                if (!checkValue($("#mobileNo"),"휴대폰 번호를 입력해 주세요.")) return false;
                if (!checkRegExp($("#mobileNo"), "MOBILENO", "올바른 휴대폰 번호를 입력해주세요.")) return false;
                //if (!checkValue($("#captchaAnswer"),"보안문자를 입력해 주세요.")) return false;

                const userNameEncoding = encodeURIComponent($("#userName").val());
                $("#userNameEncoding").val(userNameEncoding);

                // 요청 결과 처리
                function certificationSuccess(data) {
                    ajaxResponseResult(data.code, data.move_page, "/cert/mobileCert/message", data.message);
                    if (data.code === 'RETRY') {
                        if ($("#simpleCaptchaReBtn").length > 0) $("#simpleCaptchaReBtn").click();
                        overClickCheck = false;
                    }
                }

                // 요청 실패 처리
                function certificationFail() {
                    onMovePage("/cert/common/message");
                }

                // 키보드보안적용시
                if (typeof makeEncData == 'function') {
                    if (!makeEncData(document.frm)) {
                        return false;
                    }
                }

                overClickCheck = true;
                fnRequestAjax("/cert/mobileCert/certification/proc", $("#frm").serialize(), certificationSuccess, certificationFail);
            });
        });

        //호출 시 수행
        $(window).load(function() {
            // 입력 데이터 체크
            $(".input_mynum input").keyup();
        });

    </script>
</head>
<body>
<form name="frm" id="frm" method="post" autocomplete="off">
        <input type="hidden" name="userNameEncoding" id="userNameEncoding">
        <input type="hidden" name="mobileCertMethod" id="mobileCertMethod" value="SMS">
        <input type="hidden" name="mobileCo" id="mobileCo" value="SK">
        <section id="ct" class="certify_user2 certifyWrap certifyWrap_02">
            <div class="">
                <fieldset>
                    <legend>휴대폰 본인확인 입력</legend>
                    <ul class="frm_type">
                        <li class="name">
                            <h3><label for="userName" class="type02">이름</label></h3>
                            <div class="input input_del">
                                <input type="text" name="userName" id="userName" placeholder="이름 입력" class="checkValue" value="">
                            </div>
                        </li>
                        <li class="mynum">
                            <h3>
                                <label for="mynum1">생년월일/성별</label>
                            </h3>
                            <ul class="ui_cols">
                                <li>
                                    <span class="input input_mynum">
                                        <input type="text" name="myNum1" id="myNum1" maxlength="6" title="주민등록번호 앞 6자리" class="checkValue" value="" data-enc="on">
                                        <span class="mark firsChild" id="mynum1_mark"><i></i><i></i><i></i><i></i><i></i><i></i></span>
                                    </span>
                                </li>
                                <li><i></i></li>
                                <li>
                                    <span class="input input_mynum last">
                                        <input type="text" name="myNum2" id="myNum2" maxlength="1" title="주민등록번호 7번째 자리" class="checkValue" value="" data-enc="on">
                                        <span class="mark firstChild" id="mynum2_mark"><i></i></span>
                                    </span>
                                    <span class="mynum_after"><code class="blind">23456</code><i></i><i></i><i></i><i></i><i></i><i></i></span>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <h3><label for="mobileNo" class="type02">휴대폰번호</label></h3>
                            <div class="input input_del">
                                <input type="text" name="mobileNo" id="mobileNo" placeholder="숫자만 입력" title="숫자만 입력" maxlength="11" class="checkValue" value="" data-enc="on">
                            </div>
                        </li>
                        <li>
                            <!-- CAPTCHA -->
    <!--                         
    <h3><label for="captchaAnswer" class="type02">보안문자 입력</label></h3>
    <div class="input input_del secur_wrap">
        <div class="num_area">
            <div class="simpleCaptcha">
                <div class="simpleCaptchaDiv">
                    <img src="/cert/captcha/image/6f6bd817e960fa123f848ac6013392088fffb4264db631b459bb8ebacad39531" alt="보안문자" id="simpleCaptchaImg">
                    <div class="simpleCaptchaBtn">
                        <a id="simpleCaptchaReBtn" href="#" title="새로고침">
                            <img src="/images/mobileCert/captcha-reload.gif?ver=1701927244016" alt="새로고침">
                        </a>
                        <a id="simpleCaptchaAudioBtn" href="#" title="보안문자 음성안내">
                            <img src="/images/mobileCert/captcha-audio.gif?ver=1701927244016" alt="보안문자 음성안내">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="ipt_area">
            <div class="input input_del">
                <input type="text" name="captchaAnswer" id="captchaAnswer" placeholder="보안문자 입력" maxlength="6" value="" class="checkValue" style="text-transform: uppercase;" data-enc="on">
            </div>
        </div>
        <div id="simpleCaptchaAudioArea"></div>
    </div>

                         
                        </li>
                        <li class="myInfoSaveSelect">
                            <span class="checkbox check2">
                                <input type="checkbox" name="myInfoSave" id="myInfoSave" value="Y">
                                <label for="myInfoSave">인증정보(이름/휴대폰번호) 기억하기</label>
                                <label for="myInfoSave">인증정보(이름/휴대폰번호) 기억하기</label>
                            </span>
                        </li>
                    </ul>
                </fieldset>
           -->
                <div class="certi_btn_area">
                    <ul class="btn_area2 bt2">
                        <li><button type="button" id="btnMobileCertMain" class="btn_r btn_type6">취소</button></li>
                        <li><button type="button" id="btnSubmit" class="btn_r btn_type btn_type3">확인</button></li>
                    </ul>
                </div>
            </div>
        </section>
       
        <!-- mobileCertBanner -->
        <!-- 
        <div class="footerBanner">
    <script type="text/javascript">
        $(document).ready(function(){
            const bannerLink = "https://www.tauth.net/pass/bridge/link/add/A102"
            // 배너 링크
            $('body').on('click', '#bannerLink', function() {
                if (bannerLink !== '') {
                    if (bannerLink.indexOf("http") >= 0) {
                        window.open(bannerLink,"_blank");
                    } else if (bannerLink !== "#") {
                        onMovePage(bannerLink);
                    }
                }
            });
        });
    </script>
    <a href="#" id="bannerLink" title="새창열림">
        <img src="/images/banner/mobileCert/SKTB00001_PC_20230329.png?ver=1701927244016" alt="손쉬운 발급,3년 사용 안전하고 간편한 PASS인증서 PASS인증서">
    </a>
</div>
		 -->
        <!-- // mobileCertBanner -->
    </form>
</body>
</html>
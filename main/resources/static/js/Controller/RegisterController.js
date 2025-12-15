let registerController = {
    emailExpression : /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
    inputId : $('#inputId'),
    inputPassword : $('#inputPassword'),
    inputPassword2 : $('#inputPassword2'),
    inputEmail : $('#inputEmail'),
    inputMobile : $('#inputMobile'),
    inputJoinCode : $('#inputJoinCode'),
    checkInputMemberId : function() {
        var value = this.inputId.val();
        return !(_.isUndefined(value) || value.length < 4 || value.length > 10 || !/^[a-z0-9+]{4,10}$/.test(value));
    },
    checkInputMemberPassword : function() {
        var value = this.inputPassword.val();
        return !(_.isUndefined(value) || value.length < 4 || value.length > 12);
    },
    checkInputMemberEmail : function() {
        var value = this.inputEmail.val();
        return !(_.isUndefined(value) || !this.emailExpression.test(String(value).toLowerCase()));
    },
    checkInputMemberMobile : function() {
        var value = this.inputMobile.val();
        return !(_.isUndefined(value) || value.length < 1 || !$.isNumeric(value));
    },
    checkInputMemberJoinCode : function() {
        var value = this.inputJoinCode.val();
        return !(_.isUndefined(value) || value.length < 1);
    },
    execute: function () {
        if (!this.checkInputMemberId()) {
            alert('아이디는 4글자이상 10글자 이하 영문,숫자 조합입니다.');
            this.inputId.focus();
            return false;
        }

        if (!this.checkInputMemberEmail()) {
            alert('이메일형식이 올바르지 않습니다.');
            this.inputEmail.focus();
            return false;
        }

        if (!this.checkInputMemberPassword()) {
            alert('비밀번호는 4글자이상 12글자이하 입니다.');
            this.inputPassword.focus();
            return false;
        }

        if (this.inputPassword.val() !== this.inputPassword2.val()) {
            alert('비밀번호가 일치하지 않습니다.');
            this.inputPassword.focus();
            return false;
        }

        if (!this.checkInputMemberMobile()) {
            alert('모바일은 숫자만 입력하세요.');
            this.inputMobile.focus();
            return false;
        }

        if (!this.checkInputMemberJoinCode()) {
            alert('가입코드를 입력 해주세요.');
            this.inputJoinCode.focus();
            return false;
        }

        if (confirm('회원 가입 신청을 하시겠습니까?')) {
            var memberRequest = {};
            memberRequest.id = this.inputId.val();
            memberRequest.password = this.inputPassword.val();
            memberRequest.email = this.inputEmail.val();
            memberRequest.mobile = this.inputMobile.val();
            memberRequest.joinCode = this.inputJoinCode.val();

            $.ajax({
                url: '/register/rest/execute',
                data: JSON.stringify(memberRequest),
                cache: false,
                type: 'POST',
                dataType: 'json',
                contentType : 'application/json',
                success: function (data) {
                    if (data.status === "SUCCESS") {
                        alert('가입 신청이 완료 되었습니다.\n\n빠른 연락드리겠습니다.');
                        location.href = '/login';
                    }
                    else {
                        alert(data.message);
                    }
                }
            });
        }
    }
};
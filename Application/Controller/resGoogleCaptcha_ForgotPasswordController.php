<?php

namespace RESPONSEGmbH\resGoogleCaptcha\Application\Controller;

use RESPONSEGmbH\resGoogleCaptcha\Application\Model\resGoogleCaptcha_Validator;
use RESPONSEGmbH\resGoogleCaptcha\Core\resGoogleCaptcha_ViewConfig;

class resGoogleCaptcha_ForgotPasswordController extends resGoogleCaptcha_ForgotPasswordController_parent
{
    /**
     * Executes oxemail::SendForgotPwdEmail() and sends login
     * password to user according to login name (email).
     *
     * Template variables:
     * <b>sendForgotMail</b>
     */
    public function forgotPassword()
    {
        $oViewConf = oxNew(resGoogleCaptcha_ViewConfig::class);

        if (!$oViewConf->resGoogleCaptcha_showPwForgot()) {
            return parent::send();
        }

        $sFormCaptchaResponse = $this->getConfig()->getRequestParameter("g-recaptcha-response");
        $oResCaptchaValidator = oxNew(resGoogleCaptcha_Validator::class);

        if (!$oResCaptchaValidator->resValidateReCaptcha($sFormCaptchaResponse)) {
            return false;
        }

        return parent::forgotPassword();
    }
}
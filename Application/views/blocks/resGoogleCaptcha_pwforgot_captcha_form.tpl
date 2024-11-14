[{if $oViewConf->resGoogleCaptcha_getSiteKey() ne "" && $oViewConf->resGoogleCaptcha_showPwForgot()}]
    <div class="form-group">
        <label class="control-label col-md-3 req">[{oxmultilang ident="RES_GOOGLE_CAPTCHA_FORM_LABEL"}]</label>
        <div class="col-md-9">
            <div class="g-recaptcha" data-sitekey="[{$oViewConf->resGoogleCaptcha_getSiteKey()}]" data-theme="[{$oViewConf->resGoogleCaptcha_getTheme()}]"></div>
        </div>
    </div>

    <script type="text/javascript" src="https://www.google.com/recaptcha/api.js?hl=[{$oView->getActiveLangAbbr()}]"></script>
[{else}]
    [{$smarty.block.parent}]
[{/if}]
[{if $oViewConf->resGoogleCaptcha_getSiteKey() ne "" && $oViewConf->resGoogleCaptcha_showContactCaptcha()}]
    <div class="form-group">
        <label class="control-label col-lg-2 req">[{oxmultilang ident="RES_GOOGLE_CAPTCHA_FORM_LABEL"}]</label>
        <div class="col-lg-10">
            <div class="g-recaptcha" data-sitekey="[{$oViewConf->resGoogleCaptcha_getSiteKey()}]" data-theme="[{$oViewConf->resGoogleCaptcha_getTheme()}]"></div>
        </div>
    </div>

    <script type="text/javascript" src="https://www.google.com/recaptcha/api.js?hl=[{$oView->getActiveLangAbbr()}]"></script>
[{else}]
    [{$smarty.block.parent}]
[{/if}]
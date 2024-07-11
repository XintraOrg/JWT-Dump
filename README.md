
# JWT-Dump
Print out all of the JWT tokens from a memory dump of Microsoft processes
Written by **@svch0st**

# How to run
    Install-Module -name JWTDetails
    .\Get-JWTFromProcDump.ps1 -ProcdumpFilePath "C:\path\to\your_procdump.dmp"

# Example Output

    --------------- Potential Token Found ---------------
    eyJ0eXAiOiJKV1QiLCJub25jZSI6Ilo5cktFb24tWENrbVJyN2I4d1h2ZkJfU2VvRy00YWFWYUdzczJDeWJoODQiLCJhbGciOiJSUzI1NiIsIng1dCI6Ik1HTHFqOThWTkxvWGFGZnBKQ0JwZ0I0SmFLcy1Uad2CTxnpRoDhG-QKcoa3WJ_pwO5QH82z_rYl3RtYVd2PArNnjtfS1QO8ez3PHh_AJ9M02FSktrgiiAhpizv6kAjwBxLL54Zr0UuPA0lALKtAL3UCOGVQ7rsCzkjUUsqIY_-buerRm4kgud268TtRTA
    ---------- Attempted Parsed Token Details -----------
    aud                 : https://graph.microsoft.com/
    iss                 : https://sts.windows.net/<tenant-id>/
    iat                 : 1720711698
    nbf                 : 1720711698
    exp                 : 1720798398
    acct                : 0
    acr                 : 1
    aio                 : ATQAy/
    amr                 : {pwd, rsa}
    app_displayname     : Microsoft Office
    appid               : d3590ed6-52b3-4102
    appidacr            : 0
    deviceid            : 44785507-e831-44ab-
    family_name         : Patterson
    given_name          : Roland
    idtyp               : user
    ipaddr              : 127.0.0.1
    name                : Roland Patterson
    oid                 : 7edceb0c-b75d-4837-8613-4a57aa9
    onprem_sid          : S-1-5-21-433734080-4077520716-132830595-1111
    platf               : 3
    puid                : 100320037E
    pwd_url             : https://portal.microsoftonline.com/ChangePassword.aspx
    rh                  : 0.AUIAlE7hx4qFoEepU6mXgfdTvAMAAAAAAAAAwAAAAAAAAACkALw.
    scp                 : AuditLog.Read.All Calendar.ReadWrite Calendars.Read.Shared Calendars.ReadWrite Contacts.ReadWrite DataLossPreventionPolicy.Evaluate Directory.AccessAsUser.All Directory.Read.All email 
                          Files.Read Files.Read.All Files.ReadWrite.All Group.Read.All Group.ReadWrite.All InformationProtectionPolicy.Read Mail.ReadWrite Mail.Send Notes.Create offline_access openid 
                          Organization.Read.All People.Read People.Read.All Printer.Read.All PrinterShare.ReadBasic.All PrintJob.ReadWriteBasic profile SensitiveInfoType.Detect SensitiveInfoType.Read.All 
                          SensitivityLabel.Evaluate Tasks.ReadWrite TeamMember.ReadWrite.All TeamsTab.ReadWriteForChat User.Read.All User.ReadBasic.All User.ReadWrite Users.Read
    signin_state        : {dvc_mngd, dvc_dmjd}
    sub                 : A4H1tG9gMAxZvN6ZF-xlCYgcdT9P7pwlO6Zf6I4XJkM
    tenant_region_scope : OC
    tid                 : <tenant_id>
    unique_name         : roland@domain.com
    upn                 : roland@domain.com
    uti                 : 2ml2ed0eSkuS1AbGcmBHAA
    ver                 : 1.0
    wids                : {b79fbf4d-3ef9-4689-8143-7}
    xms_cc              : {CP1}
    xms_idrel           : 1 6
    xms_ssm             : 1
    xms_tcdt            : 1714529228
    sig                 : KXxmGM2YWfzZUh4MRTeFeP3Mh6b12/wGHgm5Fu7+hGoeGqYwhKEQ5OgdPXGgIuGhl4gI+yGaKuGp5uMR3WaHx4oAj3q9DC47kOCu5mEopJB7d11qRuOTjFP1bB+URfikGH6zaM03pbc==
    expiryDateTime      : 7/12/2024 3:33:18 PM
    timeToExpiry        : 20:15:47.1045929

.class public final Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mJsonStatusMap:Lorg/json/JSONObject;

.field public mStatusUrl:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;


# direct methods
.method public constructor <init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 p2, 0x10

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p2, "status"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string/jumbo v0, "reason"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 45
    .line 46
    const-string v1, "Invalid certificate with serial number "

    .line 47
    .line 48
    const-string v2, " has status "

    .line 49
    .line 50
    const-string v3, " because reason "

    .line 51
    .line 52
    invoke-static {v1, p1, v2, p2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :catchall_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    .line 68
    .line 69
    const-string p2, "Unable get properties for certificate with serial number "

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    .line 80
    .line 81
    const-string p1, "Certificate serial number can not be null."

    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final getSupportedExtensions()Ljava/util/Set;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final init(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->this$0:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v0, 0x1041003

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    .line 27
    .line 28
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->readAllBytes()[B

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "entries"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mJsonStatusMap:Lorg/json/JSONObject;

    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_2
    move-exception p1

    .line 75
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    :goto_0
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :goto_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "Unable to parse revocation status from "

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :catchall_3
    move-exception p1

    .line 102
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "Unable to get revocation status from "

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;->mStatusUrl:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    .line 125
    .line 126
    const-string p1, "R.string.vendor_required_attestation_revocation_list_url is empty."

    .line 127
    .line 128
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final isForwardCheckingSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

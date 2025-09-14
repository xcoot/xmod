.class public final Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string p0, "TestCertHelper"

    .line 10
    .line 11
    const-string/jumbo v0, "rootCertificateAlias is null or empty - use secure default value"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const-string p0, "GoogleCloudKeyVaultServiceV1"

    .line 18
    .line 19
    :cond_1
    return-object p0
.end method

.method public static getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getTestOnlyInsecureCertificate()Ljava/security/cert/X509Certificate;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p0}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 26
    .line 27
    const/16 v0, 0x1c

    .line 28
    .line 29
    const-string v1, "The provided root certificate alias is invalid"

    .line 30
    .line 31
    invoke-direct {p0, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static getValidationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    const-string v0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/util/Date;

    .line 10
    .line 11
    const/16 v0, 0x1e

    .line 12
    .line 13
    const/16 v1, 0x77

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0, v1, v2, v0}, Ljava/util/Date;-><init>(III)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

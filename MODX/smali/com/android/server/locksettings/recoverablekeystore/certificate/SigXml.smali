.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final intermediateCerts:Ljava/util/List;

.field public final signature:[B

.field public final signerCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->intermediateCerts:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signature:[B

    .line 10
    return-void
.end method

.method public static parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlRootNode([B)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    .line 7
    const-string/jumbo v1, "intermediates"

    .line 10
    const-string/jumbo v2, "cert"

    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2, p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/String;

    .line 45
    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 60
    move-result-object v1

    .line 61
    const-string/jumbo v3, "certificate"

    .line 64
    filled-new-array {v3}, [Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-static {v4, p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    .line 88
    move-result-object v3

    .line 89
    const-string/jumbo v5, "value"

    .line 92
    filled-new-array {v5}, [Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    invoke-static {v4, p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v0, v1, v3, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;-><init>(Ljava/util/List;Ljava/security/cert/X509Certificate;[B)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public final verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->intermediateCerts:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    .line 5
    invoke-static {p3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 8
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signerCert:Ljava/security/cert/X509Certificate;

    .line 10
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->signature:[B

    .line 16
    :try_start_0
    const-string p3, "SHA256withRSA"

    .line 18
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 21
    move-result-object p3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    invoke-virtual {p3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 25
    invoke-virtual {p3, p2}, Ljava/security/Signature;->update([B)V

    .line 28
    invoke-virtual {p3, p0}, Ljava/security/Signature;->verify([B)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    .line 37
    const-string p1, "The signature is invalid"

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    .line 46
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw p1

    .line 50
    :catch_1
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 56
    throw p1
.end method

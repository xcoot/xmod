.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final endpointCerts:Ljava/util/List;

.field public final intermediateCerts:Ljava/util/List;

.field public final serial:J


# direct methods
.method public constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->serial:J

    .line 6
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    .line 8
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 10
    return-void
.end method

.method public static parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlRootNode([B)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    .line 7
    const-string/jumbo v1, "metadata"

    .line 10
    const-string/jumbo v2, "serial"

    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2, p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    move-result-wide v3

    .line 35
    const-string/jumbo v1, "intermediates"

    .line 38
    const-string/jumbo v5, "cert"

    .line 41
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v1

    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/lang/String;

    .line 72
    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 87
    move-result-object v1

    .line 88
    const-string/jumbo v2, "endpoints"

    .line 91
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    const/4 v5, 0x2

    .line 96
    invoke-static {v5, p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    .line 99
    move-result-object p0

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    .line 102
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    check-cast p0, Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object p0

    .line 111
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_1

    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Ljava/lang/String;

    .line 123
    invoke-static {v5}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 126
    move-result-object v5

    .line 127
    invoke-static {v5}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 138
    move-result-object p0

    .line 139
    invoke-direct {v0, v3, v4, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;-><init>(JLjava/util/List;Ljava/util/List;)V

    .line 142
    return-object v0
.end method


# virtual methods
.method public getAllEndpointCerts()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public getAllIntermediateCerts()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public getEndpointCert(ILjava/util/Date;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    .line 11
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

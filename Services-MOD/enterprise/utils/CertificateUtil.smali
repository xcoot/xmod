.class public final Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCaCerts:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mRandom:Ljava/util/Random;

.field public mUserCert:Ljava/security/cert/X509Certificate;

.field public mUserKey:Ljava/security/PrivateKey;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Ljava/util/Random;

    .line 20
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 25
    const-string/jumbo v0, "user"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/os/UserManager;

    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 36
    return-void
.end method

.method public static convertDerToPem([B)[B
    .locals 4

    .line 1
    const-string v0, "Convert DER to PEM"

    .line 3
    const-string v1, "CertificateUtil"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    const-string v2, "X.509"

    .line 14
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 20
    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 29
    invoke-static {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string v2, "Couldn\'t convert DER to PEM"

    .line 37
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    return-object v0
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .locals 3

    .line 1
    const-string v0, "Could not convert certificate."

    .line 3
    const-string v1, "CertificateUtil"

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, [Ljava/security/cert/X509Certificate;

    .line 19
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "Not a certificate "

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_0

    .line 51
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "2.5.29.19"

    .line 4
    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 13
    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 16
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 22
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    .line 25
    move-result-object p0

    .line 26
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 28
    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 31
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 37
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    .line 44
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return p0

    .line 46
    :catch_0
    return v0
.end method

.method public static toCertificates([B)Ljava/util/List;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-static {p0}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 17
    return-object p0
.end method


# virtual methods
.method public final extractPkcs12(ILjava/lang/String;[B)Z
    .locals 5

    .line 1
    const-string v0, "CertificateUtil"

    .line 3
    if-nez p2, :cond_0

    .line 5
    const-string p2, ""

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    const-string v2, "PKCS12"

    .line 10
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/security/KeyStore$PasswordProtection;

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 19
    move-result-object p2

    .line 20
    invoke-direct {v3, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 23
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 25
    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {v2, p2, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 35
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 42
    move-result p3

    .line 43
    if-nez p3, :cond_1

    .line 45
    return v1

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_3

    .line 52
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Ljava/lang/String;

    .line 58
    invoke-virtual {v2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {v2, p3, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 67
    move-result-object p3

    .line 68
    instance-of v4, p3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 70
    if-eqz v4, :cond_1

    .line 72
    check-cast p3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 74
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z

    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string p3, "Skipping non-key entry"

    .line 83
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 87
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo p2, "extractPkcs12(): "

    .line 92
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    return v1
.end method

.method public final getAllUsersId()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {p0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 36
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object v0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw p0
.end method

.method public final installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p4

    .line 9
    move/from16 v4, p6

    .line 11
    const-string v5, "Installation result on Wi-Fi keystore: "

    .line 13
    const-string v6, "Installation result on VPN/Apps keystore: "

    .line 15
    const/4 v7, -0x2

    .line 16
    const-string v8, ".crt"

    .line 18
    const/4 v9, -0x3

    .line 19
    const-string v10, "PKCS12"

    .line 21
    const-string v11, "CERT"

    .line 23
    const/4 v12, 0x0

    .line 24
    if-nez v1, :cond_5

    .line 26
    if-nez v3, :cond_3

    .line 28
    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert(I[B)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 34
    const-string v1, ""

    .line 36
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12(ILjava/lang/String;[B)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    :goto_0
    move-object v1, v10

    .line 43
    :cond_0
    :goto_1
    move v7, v12

    .line 44
    goto :goto_6

    .line 45
    :cond_1
    :goto_2
    move-object v1, v11

    .line 46
    goto :goto_6

    .line 47
    :cond_2
    move-object v1, v11

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {v0, v4, v3, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12(ILjava/lang/String;[B)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    move v7, v9

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    move-result v13

    .line 62
    if-nez v13, :cond_9

    .line 64
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    move-result v13

    .line 68
    if-eqz v13, :cond_6

    .line 70
    goto :goto_5

    .line 71
    :cond_6
    const-string v7, ".p12"

    .line 73
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_8

    .line 79
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_7

    .line 85
    goto :goto_4

    .line 86
    :cond_7
    :goto_3
    move v7, v9

    .line 87
    goto :goto_6

    .line 88
    :cond_8
    :goto_4
    invoke-virtual {v0, v4, v3, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12(ILjava/lang/String;[B)Z

    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_0

    .line 94
    goto :goto_3

    .line 95
    :cond_9
    :goto_5
    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert(I[B)Z

    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_0

    .line 101
    :goto_6
    if-nez v7, :cond_19

    .line 103
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 105
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 110
    and-int/lit8 v3, p5, 0x4

    .line 112
    const/4 v4, 0x1

    .line 113
    const-string v9, "CertificateUtil"

    .line 115
    const-string/jumbo v15, "installAsUser(): "

    .line 118
    if-eqz v3, :cond_e

    .line 120
    :try_start_0
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 122
    if-eqz v3, :cond_a

    .line 124
    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    .line 127
    move-result-object v3

    .line 128
    move-object/from16 v16, v3

    .line 130
    goto :goto_7

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    move-object v10, v15

    .line 133
    goto/16 :goto_10

    .line 135
    :catch_0
    move-exception v0

    .line 136
    move-object v10, v15

    .line 137
    goto/16 :goto_e

    .line 139
    :cond_a
    const/16 v16, 0x0

    .line 141
    :goto_7
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 143
    if-eqz v3, :cond_b

    .line 145
    new-array v13, v4, [Ljava/security/cert/Certificate;

    .line 147
    aput-object v3, v13, v12

    .line 149
    invoke-static {v13}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 152
    move-result-object v3

    .line 153
    move-object/from16 v17, v3

    .line 155
    goto :goto_8

    .line 156
    :cond_b
    const/16 v17, 0x0

    .line 158
    :goto_8
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 160
    if-eqz v3, :cond_c

    .line 162
    check-cast v3, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_c

    .line 170
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 172
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    .line 175
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    move-object/from16 v18, v3

    .line 178
    goto :goto_9

    .line 179
    :cond_c
    const/16 v18, 0x0

    .line 181
    :goto_9
    const/4 v3, -0x1

    .line 182
    move-object v13, v2

    .line 183
    move-object/from16 v14, p3

    .line 185
    move-object v10, v15

    .line 186
    move v15, v3

    .line 187
    :try_start_1
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;I[B[B[B)Z

    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_d

    .line 193
    const/4 v7, -0x5

    .line 194
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v3

    .line 206
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    goto :goto_a

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    goto/16 :goto_10

    .line 213
    :catch_1
    move-exception v0

    .line 214
    goto/16 :goto_e

    .line 216
    :cond_e
    move-object v10, v15

    .line 217
    :goto_a
    and-int/lit8 v3, p5, 0x2

    .line 219
    if-eqz v3, :cond_13

    .line 221
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 223
    if-eqz v3, :cond_f

    .line 225
    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    .line 228
    move-result-object v3

    .line 229
    move-object/from16 v16, v3

    .line 231
    goto :goto_b

    .line 232
    :cond_f
    const/16 v16, 0x0

    .line 234
    :goto_b
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 236
    if-eqz v3, :cond_10

    .line 238
    new-array v6, v4, [Ljava/security/cert/Certificate;

    .line 240
    aput-object v3, v6, v12

    .line 242
    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 245
    move-result-object v3

    .line 246
    move-object/from16 v17, v3

    .line 248
    goto :goto_c

    .line 249
    :cond_10
    const/16 v17, 0x0

    .line 251
    :goto_c
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 253
    if-eqz v3, :cond_11

    .line 255
    check-cast v3, Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_11

    .line 263
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 265
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    .line 268
    move-result-object v3

    .line 269
    move-object/from16 v18, v3

    .line 271
    goto :goto_d

    .line 272
    :cond_11
    const/16 v18, 0x0

    .line 274
    :goto_d
    const/16 v15, 0x3f2

    .line 276
    move-object v13, v2

    .line 277
    move-object/from16 v14, p3

    .line 279
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;I[B[B[B)Z

    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_12

    .line 285
    const/4 v3, -0x6

    .line 286
    move v7, v3

    .line 287
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v3

    .line 299
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_13
    and-int/lit8 v3, p5, 0x1

    .line 304
    if-eqz v3, :cond_18

    .line 306
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->installCaCertsToDefaultKeystore(Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Z

    .line 309
    move-result v3

    .line 310
    const/4 v4, -0x4

    .line 311
    if-nez v3, :cond_14

    .line 313
    move v7, v4

    .line 314
    :cond_14
    iget-object v3, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 316
    if-eqz v3, :cond_16

    .line 318
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_15

    .line 324
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 327
    move-result v3

    .line 328
    if-eqz v3, :cond_16

    .line 330
    :cond_15
    move v7, v4

    .line 331
    :cond_16
    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 333
    if-eqz v0, :cond_18

    .line 335
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 338
    move-result v0

    .line 339
    if-nez v0, :cond_17

    .line 341
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 344
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    if-eqz v0, :cond_18

    .line 347
    :cond_17
    move v7, v4

    .line 348
    goto :goto_11

    .line 349
    :goto_e
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    move-result-object v0

    .line 365
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    :goto_f
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v0

    .line 380
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 386
    goto :goto_12

    .line 387
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object v1

    .line 399
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 405
    throw v0

    .line 406
    :cond_18
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 408
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    goto :goto_f

    .line 412
    :cond_19
    :goto_12
    return v7
.end method

.method public final installCaCertsToDefaultKeystore(Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    move v2, v1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    const-string v4, "Error converting certificate to PEM: "

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v6, "CertificateUtil"

    .line 31
    const/4 v7, 0x0

    .line 32
    if-eqz v3, :cond_3

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 40
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 54
    :try_start_0
    new-array v8, v1, [Ljava/security/cert/Certificate;

    .line 56
    aput-object v3, v8, v7

    .line 58
    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 61
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    invoke-static {v6, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    move v2, v7

    .line 68
    :goto_1
    if-eqz v5, :cond_1

    .line 70
    invoke-virtual {p1, v5}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_2

    .line 76
    move v7, v1

    .line 77
    :cond_2
    and-int/2addr v2, v7

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 81
    check-cast p0, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object p0

    .line 87
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 99
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v3, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_4

    .line 113
    :try_start_1
    new-array v3, v1, [Ljava/security/cert/Certificate;

    .line 115
    aput-object v0, v3, v7

    .line 117
    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 120
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception v0

    .line 123
    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    move-object v0, v5

    .line 127
    move v2, v7

    .line 128
    :goto_3
    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_5

    .line 136
    move v0, v1

    .line 137
    goto :goto_4

    .line 138
    :cond_5
    move v0, v7

    .line 139
    :goto_4
    and-int/2addr v0, v2

    .line 140
    move v2, v0

    .line 141
    goto :goto_2

    .line 142
    :cond_6
    const-string p0, "CaCerts put state for default keystore: "

    .line 144
    invoke-static {p0, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    return v2
.end method

.method public final declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "certificate_policy"

    .line 5
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    :try_start_1
    invoke-interface {v0, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    array-length v4, v2

    .line 29
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    array-length v4, v2

    .line 33
    move v5, v1

    .line 34
    :goto_0
    if-ge v5, v4, :cond_0

    .line 36
    aget-object v6, v2, v5

    .line 38
    new-instance v7, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 40
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 42
    invoke-direct {v7, v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 45
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 54
    :cond_0
    invoke-interface {v0, v3, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    .line 57
    move-result v2

    .line 58
    const/4 v3, -0x1

    .line 59
    if-eq v2, v3, :cond_1

    .line 61
    const-string v3, "CertificateUtil"

    .line 63
    const-string/jumbo v4, "certificate failed during validation"

    .line 66
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string/jumbo v3, "installer_module"

    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v0, v3, v2, v1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    .line 80
    return v1

    .line 81
    :catch_0
    :try_start_2
    const-string p2, "CertificateUtil"

    .line 83
    const-string v0, "Certificate policy not found"

    .line 85
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_1

    .line 89
    :catch_1
    const-string p2, "CertificateUtil"

    .line 91
    const-string v0, "Failed talking to certificate policy"

    .line 93
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 102
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 108
    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    .line 113
    move-result-object p1

    .line 114
    const-string p2, "CertificateUtil"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v2, "# certs extracted = "

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    array-length v2, p1

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p2, Ljava/util/ArrayList;

    .line 139
    array-length v0, p1

    .line 140
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 145
    array-length v0, p1

    .line 146
    :goto_2
    if-ge v1, v0, :cond_3

    .line 148
    aget-object v2, p1, v1

    .line 150
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 152
    invoke-static {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    const-string p1, "CertificateUtil"

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v0, "# ca certs extracted = "

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 178
    check-cast v0, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 183
    move-result v0

    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p2

    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    monitor-exit p0

    .line 195
    const/4 p0, 0x1

    .line 196
    return p0

    .line 197
    :goto_3
    monitor-exit p0

    .line 198
    throw p1
.end method

.method public final parseCert(I[B)Z
    .locals 5

    .line 1
    const-string v0, "CertificateUtil"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "X.509"

    .line 6
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 12
    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 15
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 21
    const-string/jumbo v2, "certificate_policy"

    .line 24
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    .line 31
    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz v2, :cond_0

    .line 34
    :try_start_1
    invoke-interface {v2, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 42
    invoke-direct {v3, p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 45
    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    .line 48
    move-result v3

    .line 49
    const/4 v4, -0x1

    .line 50
    if-eq v3, v4, :cond_0

    .line 52
    const-string/jumbo v4, "certificate failed during validation"

    .line 55
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v4, "installer_module"

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v2, v4, v3, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    return v1

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :catch_1
    :try_start_2
    const-string p1, "Certificate policy not found"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_0

    .line 77
    :catch_2
    const-string p1, "Failed talking to certificate policy"

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 88
    const-string/jumbo p1, "got a CA cert"

    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 96
    check-cast p0, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const-string/jumbo p1, "got a user cert"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :goto_1
    const/4 v1, 0x1

    .line 111
    goto :goto_3

    .line 112
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo p2, "parseCert(): "

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_3
    return v1
.end method

.method public final sendIntentToSettings(IZ)V
    .locals 6

    .line 1
    if-eqz p2, :cond_3

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v0

    .line 7
    new-instance p2, Landroid/content/Intent;

    .line 9
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 12
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

    .line 15
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 20
    const-class v3, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 28
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 46
    move-result-object p1

    .line 47
    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 51
    new-instance v3, Landroid/os/UserHandle;

    .line 53
    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 56
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    .line 59
    invoke-virtual {v2, p2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 64
    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p1

    .line 76
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 88
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 96
    new-instance v5, Landroid/os/UserHandle;

    .line 98
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 100
    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 103
    invoke-virtual {v3, p2, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    :cond_3
    return-void
.end method

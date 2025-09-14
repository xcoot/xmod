.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 4
    .line 5
    const-string v2, "AndroidKeyStore"

    .line 6
    .line 7
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;-><init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/security/KeyStoreException;

    .line 24
    .line 25
    const-string v2, "Unable to load keystore."

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public static getInternalAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "com.android.server.locksettings.recoverablekeystore/application/"

    .line 2
    .line 3
    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final deleteEntry(IILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v0, "Del "

    .line 4
    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    invoke-static {p1, p2, v0, v1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "RecoverableAppKeyStore"

    .line 12
    .line 13
    invoke-static {v0, p3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 17
    .line 18
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 32
    .line 33
    const/16 p2, 0x16

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final setSymmetricKeyEntry(II[BLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    const-string v1, "Set "

    .line 5
    .line 6
    const-string v2, "/"

    .line 7
    .line 8
    invoke-static {p1, p2, v1, v2, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ": "

    .line 13
    .line 14
    const-string v3, " bytes of key material"

    .line 15
    .line 16
    invoke-static {v0, p4, v2, v3, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "RecoverableAppKeyStore"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 26
    .line 27
    invoke-static {p1, p2, p4}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 32
    .line 33
    new-instance p4, Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    const-string v0, "AES"

    .line 36
    .line 37
    invoke-direct {p4, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 41
    .line 42
    .line 43
    new-instance p3, Landroid/security/keystore/KeyProtection$Builder;

    .line 44
    .line 45
    const/4 p4, 0x3

    .line 46
    invoke-direct {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const-string p4, "GCM"

    .line 50
    .line 51
    filled-new-array {p4}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const-string p4, "NoPadding"

    .line 60
    .line 61
    filled-new-array {p4}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 83
    .line 84
    const/16 p2, 0x16

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

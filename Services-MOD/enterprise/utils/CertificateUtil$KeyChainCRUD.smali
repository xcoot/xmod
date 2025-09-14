.class public final Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConnection:Landroid/security/KeyChain$KeyChainConnection;

.field public final mContext:Landroid/content/Context;

.field public mDpmsService:Landroid/app/admin/IDevicePolicyManager;

.field public mService:Landroid/security/IKeyChainService;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mDpmsService:Landroid/app/admin/IDevicePolicyManager;

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Landroid/os/UserHandle;

    .line 17
    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 20
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 27
    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 5

    .line 1
    const-string v0, "CertificateUtil"

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    .line 15
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 17
    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 23
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 29
    const-string/jumbo v2, "device_policy"

    .line 32
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mDpmsService:Landroid/app/admin/IDevicePolicyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "Unable to connect to KeyChainService for user "

    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 55
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 72
    return v1

    .line 73
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    const-string v4, "Error binding KeyChain. Is KeyChainService running for user "

    .line 77
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 82
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 85
    move-result v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, "?"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 104
    return v1
.end method

.method public final contains(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting contains operation"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "Error in KeyChainService.contains for alias "

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return v1
.end method

.method public final deleteEntry(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting deleteEntry operation"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->deleteEntry(Ljava/lang/String;I)Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "Error in KeyChainService.deleteEntry for alias "

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return v1
.end method

.method public final disconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string v0, "CertificateUtil"

    .line 11
    const-string v1, "Error disconnecting from KeyChain!"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 21
    :cond_0
    return-void
.end method

.method public final get(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting get operation"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {p0, p2, p3, p1}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;I)[B

    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string p3, "Error in KeyChainService.getCertificateSystem for alias "

    .line 28
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return-object v1
.end method

.method public final installCaCertificate([B)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting installCaCertificate operation"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {v0, p1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mDpmsService:Landroid/app/admin/IDevicePolicyManager;

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 26
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    move-result p0

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-interface {v0, p1, p0, v3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string p1, "Error in KeyChainService.installCaCertificate"

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return-object v1
.end method

.method public final isCertificateEntry(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting isCertificateEntry operation."

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->isCertificateEntry(Ljava/lang/String;I)Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "Error in KeyChainService.isCertificateEntry for alias "

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return v1
.end method

.method public final listAliases(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting listAliases operation"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "Error in KeyChainService.listAliases for keystore "

    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return-object v1
.end method

.method public final put(Ljava/lang/String;I[B[B[B)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting put operation."

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    move-object v6, p5

    .line 21
    move-object v7, p1

    .line 22
    move v8, p2

    .line 23
    invoke-interface/range {v3 .. v8}, Landroid/security/IKeyChainService;->installKeyPair([B[B[BLjava/lang/String;I)Z

    .line 26
    move-result p2

    .line 27
    if-eqz p3, :cond_1

    .line 29
    const/4 p3, 0x1

    .line 30
    if-ne p2, p3, :cond_1

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 34
    invoke-interface {p0, p1, p3}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    return p2

    .line 41
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    const-string p3, "Error in KeyChainService.installKeyPair for alias "

    .line 45
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return v1
.end method

.method public final updateKeyPair(I[B[BLjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CertificateUtil"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "Aborting updateKeyPair operation."

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 18
    invoke-interface {p0, p4, p2, p3, p1}, Landroid/security/IKeyChainService;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string p2, "Error in KeyChainService.updateKeyPair for alias "

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return v1
.end method

.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;[BLandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$2:[B

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$3:Landroid/content/ComponentName;

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$4:Landroid/os/Bundle;

    .line 14
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$2:[B

    .line 7
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$3:Landroid/content/ComponentName;

    .line 9
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda26;->f$4:Landroid/os/Bundle;

    .line 11
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mCertificateMonitor:Lcom/android/server/devicepolicy/CertificateMonitor;

    .line 13
    iget v5, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 15
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string/jumbo v6, "installCaCertsToKeyChain(): "

    .line 25
    const-string v7, "DevicePolicyManager"

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x1

    .line 29
    const/4 v10, 0x0

    .line 30
    :try_start_0
    const-string v11, "X.509"

    .line 32
    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 35
    move-result-object v11

    .line 36
    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 38
    invoke-direct {v12, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    invoke-virtual {v11, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 47
    new-array v11, v9, [Ljava/security/cert/Certificate;

    .line 49
    aput-object v2, v11, v8

    .line 51
    invoke-static {v11}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 54
    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    :try_start_1
    iget-object v4, v4, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 57
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v4, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 62
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5, v2}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    .line 70
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    move-object v10, v2

    .line 75
    goto :goto_3

    .line 76
    :catch_0
    move-exception v2

    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception v2

    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    if-eqz v4, :cond_0

    .line 83
    :try_start_4
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception v4

    .line 88
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 92
    :goto_1
    invoke-static {v7, v6, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 102
    goto :goto_3

    .line 103
    :goto_2
    invoke-static {v7, v6, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    goto :goto_3

    .line 107
    :catch_2
    move-exception v2

    .line 108
    const-string v4, "Problem converting cert"

    .line 110
    invoke-static {v7, v4, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_3
    const/16 v2, 0x15

    .line 115
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 118
    move-result-object v2

    .line 119
    iget-object v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 124
    move-result-object v1

    .line 125
    if-nez v3, :cond_1

    .line 127
    move v8, v9

    .line 128
    :cond_1
    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 139
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    return-object v10
.end method

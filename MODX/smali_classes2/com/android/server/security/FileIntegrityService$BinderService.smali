.class public final Lcom/android/server/security/FileIntegrityService$BinderService;
.super Landroid/security/IFileIntegrityService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/FileIntegrityService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/security/IFileIntegrityService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static checkCallerPackageName(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    .line 27
    .line 28
    const-string v2, "Calling uid "

    .line 29
    .line 30
    const-string v3, " does not own package "

    .line 31
    .line 32
    invoke-static {v0, v2, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method


# virtual methods
.method public final createAuthToken(Landroid/os/ParcelFileDescriptor;)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/os/storage/StorageManagerInternal;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManagerInternal;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Landroid/os/RemoteException;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final isApkVeritySupported()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/android/server/security/FileIntegrityService$BinderService;->checkCallerPackageName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.permission.INSTALL_PACKAGES"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Landroid/app/AppOpsManager;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/AppOpsManager;

    .line 32
    .line 33
    const/16 v1, 0x42

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v1, v2, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_5

    .line 44
    .line 45
    :goto_0
    invoke-static {}, Landroid/security/Flags;->deprecateFsvSig()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    return v0

    .line 60
    :cond_2
    if-nez p1, :cond_3

    .line 61
    .line 62
    const-string p0, "FileIntegrityService"

    .line 63
    .line 64
    const-string p1, "Received a null certificate"

    .line 65
    .line 66
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return v0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object p2, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/ArrayList;

    .line 75
    .line 76
    monitor-enter p2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService;->mTrustedCertificates:Ljava/util/ArrayList;

    .line 80
    .line 81
    sget-object v1, Lcom/android/server/security/FileIntegrityService;->sCertFactory:Ljava/security/cert/CertificateFactory;

    .line 82
    .line 83
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 84
    .line 85
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    monitor-exit p2

    .line 103
    return p0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 107
    .line 108
    const-string p1, "Expected to contain an X.509 certificate"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :goto_2
    const-string p1, "FileIntegrityService"

    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, "Failed to convert the certificate: "

    .line 121
    .line 122
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return v0

    .line 136
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 137
    .line 138
    const-string p1, "Caller should have INSTALL_PACKAGES or REQUEST_INSTALL_PACKAGES"

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;-><init>(Lcom/android/server/security/FileIntegrityService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setupFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/security/IFileIntegrityService$Stub;->setupFsverity_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/android/server/security/FileIntegrityService$BinderService;->checkCallerPackageName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/os/storage/StorageManagerInternal;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/storage/StorageManagerInternal;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Landroid/os/RemoteException;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

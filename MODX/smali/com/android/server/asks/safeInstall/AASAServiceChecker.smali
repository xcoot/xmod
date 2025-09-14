.class public final Lcom/android/server/asks/safeInstall/AASAServiceChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final context:Landroid/content/Context;

.field public final safeInstallVo:Lcom/android/server/asks/safeInstall/SafeInstallVo;


# direct methods
.method public constructor <init>(Lcom/android/server/asks/safeInstall/SafeInstallVo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->safeInstallVo:Lcom/android/server/asks/safeInstall/SafeInstallVo;

    .line 6
    iput-object p2, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->context:Landroid/content/Context;

    .line 8
    return-void
.end method


# virtual methods
.method public final getPolicyResult()I
    .locals 9

    .line 1
    const-string v0, "PackageInformation_AASAService"

    .line 3
    const-string v1, "AASAService version : "

    .line 5
    const/16 v2, 0x64

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v3

    .line 13
    const-string/jumbo v4, "com.samsung.aasaservice"

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 40
    const v3, 0x6021664

    .line 43
    if-lt v1, v3, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->makeBundle()Landroid/os/Bundle;

    .line 48
    move-result-object v1

    .line 49
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 54
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 60
    new-instance v5, Ljava/lang/Thread;

    .line 62
    new-instance v6, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;

    .line 64
    invoke-direct {v6, p0, v1, v4, v3}, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/asks/safeInstall/AASAServiceChecker;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 67
    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 73
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 76
    move-result-wide v5

    .line 77
    const-wide/16 v7, 0x1

    .line 79
    cmp-long p0, v5, v7

    .line 81
    if-nez p0, :cond_0

    .line 83
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 85
    const-wide/16 v5, 0x1e

    .line 87
    invoke-virtual {v4, v5, v6, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :cond_1
    const-string p0, "AASAService is not supported"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_2

    .line 104
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_2
    return v2
.end method

.method public final makeBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->safeInstallVo:Lcom/android/server/asks/safeInstall/SafeInstallVo;

    .line 8
    iget-object v1, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->packageName:Ljava/lang/String;

    .line 10
    const-string/jumbo v2, "packageName"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v1, "permList"

    .line 19
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->permList:[Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "servicePermList"

    .line 27
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->servicePermList:[Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    const-string v1, "baseCodePath"

    .line 34
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->baseCodePath:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "signatures"

    .line 42
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->signatures:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "initiatingPackageName"

    .line 50
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->initiatingPackageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "originatingPackageName"

    .line 58
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originatingPackageName:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "originalInstallerPackageName"

    .line 66
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originalInstallerPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "sdkVersion"

    .line 74
    iget v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->sdkVersion:I

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string/jumbo v1, "referralUrl"

    .line 82
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->referralUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "downloadUrl"

    .line 90
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->downloadUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "safeInstallToken"

    .line 98
    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallToken:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "safeInstallCert"

    .line 106
    iget-object p0, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallCert:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

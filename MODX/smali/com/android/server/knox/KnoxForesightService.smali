.class public final Lcom/android/server/knox/KnoxForesightService;
.super Lcom/samsung/android/knox/IBasicCommand$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static KFAgentVersion:Ljava/lang/String;

.field public static sClassLoadCount:I

.field public static sInstance:Lcom/android/server/knox/KnoxForesightService;


# instance fields
.field public clientThread:Lcom/android/server/knox/KnoxForesightService$1;

.field public dexClassLoader:Ldalvik/system/DexClassLoader;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/knox/KnoxForesightService;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/KnoxForesightService;->sInstance:Lcom/android/server/knox/KnoxForesightService;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/knox/KnoxForesightService;

    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/IBasicCommand$Stub;-><init>()V

    .line 13
    iput-object p0, v1, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 15
    new-instance v2, Landroid/content/IntentFilter;

    .line 17
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v3, "package"

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v3, "com.samsung.android.knox.foresight"

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 38
    new-instance v3, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;

    .line 40
    invoke-direct {v3, v1}, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;-><init>(Lcom/android/server/knox/KnoxForesightService;)V

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p0, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    sput-object v1, Lcom/android/server/knox/KnoxForesightService;->sInstance:Lcom/android/server/knox/KnoxForesightService;

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/KnoxForesightService;->sInstance:Lcom/android/server/knox/KnoxForesightService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    .line 55
    return-object p0

    .line 56
    :goto_1
    monitor-exit v0

    .line 57
    throw p0
.end method


# virtual methods
.method public final initializeKnoxForesight()V
    .locals 7

    .line 1
    const-string/jumbo v0, "ignore for max load count exceeded "

    .line 4
    iget-object v1, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "android"

    .line 12
    const-string/jumbo v3, "com.samsung.android.knox.foresight"

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    const-string v2, "KnoxForesightService"

    .line 21
    if-nez v1, :cond_2

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object v1

    .line 29
    const/16 v4, 0x2000

    .line 31
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    move-result-object v1

    .line 35
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 39
    new-instance v4, Lcom/android/server/knox/KnoxForesightService$1;

    .line 41
    invoke-direct {v4, p0}, Lcom/android/server/knox/KnoxForesightService$1;-><init>(Lcom/android/server/knox/KnoxForesightService;)V

    .line 44
    iput-object v4, p0, Lcom/android/server/knox/KnoxForesightService;->clientThread:Lcom/android/server/knox/KnoxForesightService$1;

    .line 46
    iget-object v4, p0, Lcom/android/server/knox/KnoxForesightService;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 48
    if-eqz v4, :cond_1

    .line 50
    sget-object v4, Lcom/android/server/knox/KnoxForesightService;->KFAgentVersion:Ljava/lang/String;

    .line 52
    if-eqz v4, :cond_1

    .line 54
    sget v5, Lcom/android/server/knox/KnoxForesightService;->sClassLoadCount:I

    .line 56
    add-int/lit8 v6, v5, 0x1

    .line 58
    sput v6, Lcom/android/server/knox/KnoxForesightService;->sClassLoadCount:I

    .line 60
    const/4 v6, 0x5

    .line 61
    if-ge v5, v6, :cond_0

    .line 63
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    sget v0, Lcom/android/server/knox/KnoxForesightService;->sClassLoadCount:I

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, "/"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    sget-object v0, Lcom/android/server/knox/KnoxForesightService;->KFAgentVersion:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 102
    sput-object v0, Lcom/android/server/knox/KnoxForesightService;->KFAgentVersion:Ljava/lang/String;

    .line 104
    new-instance v0, Ldalvik/system/DexClassLoader;

    .line 106
    iget-object v1, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 115
    move-result-object v1

    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-direct {v0, v3, v4, v4, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 120
    iput-object v0, p0, Lcom/android/server/knox/KnoxForesightService;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/android/server/knox/KnoxForesightService;->clientThread:Lcom/android/server/knox/KnoxForesightService$1;

    .line 124
    iget-object v1, p0, Lcom/android/server/knox/KnoxForesightService;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->clientThread:Lcom/android/server/knox/KnoxForesightService$1;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_2

    .line 135
    :catch_0
    const-string p0, "KnoxForesight is not installed"

    .line 137
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_2
    return-void

    .line 141
    :cond_2
    const-string/jumbo p0, "signature is not matched, ignore"

    .line 144
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public final sendCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "sendCmd "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "KnoxForesightService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object v2

    .line 31
    const/16 v3, 0x3e8

    .line 33
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const-string/jumbo v0, "cmd"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 49
    const-string/jumbo p0, "invalid cmd received"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0

    .line 56
    :cond_0
    const-string/jumbo v2, "initialize"

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 65
    const-string/jumbo p0, "unknown cmd received"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    move-result-wide v1

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->initializeKnoxForesight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    :goto_0
    return-object v0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo p1, "caller not allowed : "

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 99
    move-result v0

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p0, Ljava/lang/SecurityException;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 120
    move-result p1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0
.end method

.method public final setCaller(Lcom/samsung/android/knox/IBasicCommand;)V
    .locals 2

    .line 1
    const-string p1, "KnoxForesightService"

    .line 3
    const-string/jumbo v0, "setCaller"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object p0

    .line 19
    const/16 v1, 0x3e8

    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v0, "caller not allowed : "

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0
.end method

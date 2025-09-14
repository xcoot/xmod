.class public final Lcom/android/server/tv/TvRemoteProviderWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProviderProxies:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Lcom/android/server/tv/TvRemoteProviderWatcher$1;

.field public final mScanPackagesRunnable:Lcom/android/server/tv/TvRemoteProviderWatcher$2;

.field public final mUnbundledServicePackages:Ljava/util/Set;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TvRemoteProviderWatcher"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$1;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$2;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    new-instance p2, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 57
    .line 58
    const/16 v0, 0x2c

    .line 59
    .line 60
    invoke-direct {p2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 61
    .line 62
    .line 63
    const v0, 0x10403c8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->forEach(Ljava/util/function/Consumer;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "TvRemoteProviderWatcher"

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const-string v4, "android.permission.BIND_TV_REMOTE_SERVICE"

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    .line 20
    .line 21
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    check-cast v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "Ignoring atv remote provider service because the package has not been set and/or whitelisted: "

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    const-string v1, "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "Ignoring atv remote provider service because its package does not have TV_VIRTUAL_REMOTE_CONTROLLER permission: "

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p0, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "Ignoring atv remote provider service because it did not require the BIND_TV_REMOTE_SERVICE permission in its manifest: "

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p0, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return v2
.end method

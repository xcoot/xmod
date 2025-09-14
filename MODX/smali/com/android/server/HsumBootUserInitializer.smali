.class public final Lcom/android/server/HsumBootUserInitializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

.field public final mPms:Lcom/android/server/pm/PackageManagerService;

.field public final mShouldAlwaysHaveMainUser:Z

.field public final mUmi:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/HsumBootUserInitializer$1;

    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/HsumBootUserInitializer$1;-><init>(Lcom/android/server/HsumBootUserInitializer;Landroid/os/Handler;)V

    .line 18
    iput-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    .line 20
    iput-object p1, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 22
    iput-object p2, p0, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 24
    iput-object p3, p0, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 26
    iput-object p4, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    iput-boolean p5, p0, Lcom/android/server/HsumBootUserInitializer;->mShouldAlwaysHaveMainUser:Z

    .line 30
    return-void
.end method

.method public static createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v6, Lcom/android/server/HsumBootUserInitializer;

    .line 11
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 20
    move-object v0, v6

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    move v5, p3

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/android/server/HsumBootUserInitializer;-><init>(Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)V

    .line 28
    return-object v6
.end method


# virtual methods
.method public final init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 8

    .line 1
    const-string v0, "HsumBootUserInitializer"

    .line 3
    const-string/jumbo v1, "init())"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-boolean v1, p0, Lcom/android/server/HsumBootUserInitializer;->mShouldAlwaysHaveMainUser:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    const-string/jumbo v1, "createMainUserIfNeeded"

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 21
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 24
    move-result v1

    .line 25
    const/16 v2, -0x2710

    .line 27
    if-eq v1, v2, :cond_0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p0

    .line 33
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    const-string v1, "Found existing MainUser, userId=%d"

    .line 39
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "Creating a new MainUser"

    .line 45
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 50
    const-string v4, "android.os.usertype.full.SECONDARY"

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    const/16 v5, 0x4002

    .line 57
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    .line 60
    move-result-object p0

    .line 61
    const-string v1, "Successfully created MainUser, userId=%d"

    .line 63
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p0

    .line 69
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    const-string v1, "Initial bootable MainUser creation failed"

    .line 80
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 86
    :cond_1
    return-void
.end method

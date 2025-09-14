.class public final Lcom/android/server/os/BugreportManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v3, v3, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 14
    .line 15
    new-instance v4, Landroid/util/AtomicFile;

    .line 16
    .line 17
    new-instance v5, Ljava/io/File;

    .line 18
    .line 19
    new-instance v6, Ljava/io/File;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const-string/jumbo v8, "system"

    .line 26
    .line 27
    .line 28
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v7, "bugreport-mapping.xml"

    .line 32
    .line 33
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    iput-object v3, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    .line 45
    .line 46
    iput-object v4, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mMappingFile:Landroid/util/AtomicFile;

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v2, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "bugreport"

    .line 59
    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

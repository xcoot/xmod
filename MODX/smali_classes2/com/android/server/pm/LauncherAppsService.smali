.class public final Lcom/android/server/pm/LauncherAppsService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final WM_TRACE_FILE_PERMISSIONS:Ljava/util/Set;


# instance fields
.field public final mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 4
    .line 5
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 6
    .line 7
    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/pm/LauncherAppsService;->WM_TRACE_FILE_PERMISSIONS:Ljava/util/Set;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 4

    .line 1
    const-string v0, "launcherapps"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/os/UserHandle;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 34
    .line 35
    new-instance v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;

    .line 36
    .line 37
    invoke-direct {v3, v1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    const-class p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    .line 49
    .line 50
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mInternal:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

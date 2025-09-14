.class public final Lcom/android/server/am/AccessCheckDelegateHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

.field public final mActiveInstrumentation:Ljava/util/List;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerGlobalLock;Ljava/util/List;Lcom/android/server/appop/AppOpsService;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 10
    iput-object p4, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 12
    return-void
.end method


# virtual methods
.method public final getAccessCheckDelegateLPr()Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 13
    iput-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 15
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 17
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 22
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 24
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 26
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iput-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 31
    monitor-exit v2

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 38
    return-object p0
.end method

.method public final onInstrumentationFinished(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 9
    if-eqz v1, :cond_2

    .line 11
    iget v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v2, p1, :cond_0

    .line 16
    iget-object v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 18
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 24
    iput-object v3, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 26
    iput-object v3, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    .line 28
    const/4 p2, 0x0

    .line 29
    iput-boolean p2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    .line 31
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 34
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateAndOwnerUid(I)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 40
    iput-object v3, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 42
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->hasDelegateOrOverrides()Z

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 66
    throw p0
.end method

.method public final removeAccessCheckDelegateLPr()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 4
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;)V

    .line 9
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 11
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 13
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

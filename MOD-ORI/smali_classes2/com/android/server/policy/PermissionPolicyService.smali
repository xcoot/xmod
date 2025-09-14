.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppOpPermissions:Ljava/util/List;

.field public mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsStarted:Landroid/util/SparseBooleanArray;

.field public final mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

.field public final mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

.field public final mIsVivo:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLock:Ljava/lang/Object;

.field public mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

.field public mOnInitializedCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

.field public final mSimConfigBroadcastReceiver:Lcom/android/server/policy/PermissionPolicyService$4;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 13
    .line 14
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "ZVV"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsVivo:Z

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$4;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/android/server/policy/PermissionPolicyService$4;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Lcom/android/server/policy/PermissionPolicyService$4;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    new-instance v0, Landroid/os/Handler;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    const-class v0, Landroid/app/KeyguardManager;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/app/KeyguardManager;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 97
    .line 98
    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 101
    .line 102
    .line 103
    const-class p0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 104
    .line 105
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Cannot create context for user "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "PermissionPolicyService"

    .line 38
    .line 39
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method


# virtual methods
.method public final isStarted(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const/16 v0, 0x208

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Lcom/android/server/policy/PermissionPolicyService$4;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    :cond_0
    const/16 v0, 0x226

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    array-length v3, v2

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    if-ge v4, v3, :cond_2

    .line 41
    .line 42
    aget v5, v2, v4

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v5}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser$1(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x1

    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    const-class v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    .line 79
    .line 80
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    const/16 v0, 0x3e8

    .line 84
    .line 85
    if-ne p1, v0, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter p1

    .line 90
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 91
    .line 92
    monitor-exit p1

    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_4
    :goto_1
    return-void
.end method

.method public final onStart()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    const/4 v4, 0x1

    .line 6
    const-string v5, "Cannot set up app-ops listener"

    .line 7
    .line 8
    const-string v6, "PermissionPolicyService"

    .line 9
    .line 10
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 19
    .line 20
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 27
    .line 28
    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 29
    .line 30
    const-string v0, "appops"

    .line 31
    .line 32
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$1;

    .line 43
    .line 44
    invoke-direct {v8, v1}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 48
    .line 49
    .line 50
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v8, v1}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$2;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 66
    .line 67
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtection()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v8, 0x0

    .line 78
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    move v10, v2

    .line 85
    :goto_0
    if-ge v10, v9, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    check-cast v11, Landroid/content/pm/PermissionInfo;

    .line 92
    .line 93
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_1

    .line 98
    .line 99
    iget-object v12, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v12}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-ne v12, v3, :cond_0

    .line 106
    .line 107
    move v12, v3

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    invoke-static {v12}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    :goto_1
    iget-object v13, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 114
    .line 115
    invoke-interface {v7, v12, v8, v13}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_2

    .line 123
    .line 124
    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v8, v8, v8, v8, v11}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-virtual {v11}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eq v11, v3, :cond_2

    .line 135
    .line 136
    iget-object v12, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 137
    .line 138
    invoke-interface {v7, v11, v8, v12}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    :cond_2
    add-int/2addr v10, v4

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_3
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 151
    .line 152
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtectionFlags()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v9, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v9, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 162
    .line 163
    move-object v9, v0

    .line 164
    check-cast v9, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    move v11, v2

    .line 171
    :goto_2
    if-ge v11, v10, :cond_8

    .line 172
    .line 173
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 178
    .line 179
    iget-object v12, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    sparse-switch v13, :sswitch_data_0

    .line 189
    .line 190
    .line 191
    :goto_3
    move v12, v3

    .line 192
    goto :goto_4

    .line 193
    :sswitch_0
    const-string v13, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 194
    .line 195
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-nez v12, :cond_4

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_4
    const/4 v12, 0x2

    .line 203
    goto :goto_4

    .line 204
    :sswitch_1
    const-string v13, "android.permission.ACCESS_NOTIFICATIONS"

    .line 205
    .line 206
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-nez v12, :cond_5

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    move v12, v4

    .line 214
    goto :goto_4

    .line 215
    :sswitch_2
    const-string v13, "android.permission.MANAGE_IPSEC_TUNNELS"

    .line 216
    .line 217
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    if-nez v12, :cond_6

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_6
    move v12, v2

    .line 225
    :goto_4
    packed-switch v12, :pswitch_data_0

    .line 226
    .line 227
    .line 228
    iget-object v12, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v12}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-eq v12, v3, :cond_7

    .line 235
    .line 236
    iget-object v13, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 237
    .line 238
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 239
    .line 240
    check-cast v13, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :try_start_1
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 246
    .line 247
    invoke-interface {v7, v12, v8, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :catch_1
    move-exception v0

    .line 252
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .line 254
    .line 255
    :cond_7
    :goto_5
    :pswitch_0
    add-int/2addr v11, v4

    .line 256
    goto :goto_2

    .line 257
    :cond_8
    new-instance v15, Landroid/content/IntentFilter;

    .line 258
    .line 259
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 263
    .line 264
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 268
    .line 269
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v0, "package"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    new-instance v13, Lcom/android/server/policy/PermissionPolicyService$3;

    .line 283
    .line 284
    invoke-direct {v13, v1}, Lcom/android/server/policy/PermissionPolicyService$3;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 285
    .line 286
    .line 287
    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 288
    .line 289
    const/16 v16, 0x0

    .line 290
    .line 291
    const/16 v17, 0x0

    .line 292
    .line 293
    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    new-instance v0, Landroid/permission/PermissionControllerManager;

    .line 297
    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-static {v1, v2}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-direct {v0, v1, v2}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;

    .line 322
    .line 323
    invoke-direct {v2, v0}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;-><init>(Landroid/permission/PermissionControllerManager;)V

    .line 324
    .line 325
    .line 326
    const-wide/32 v3, 0xea60

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x1277d93c -> :sswitch_2
        0x50b27c6d -> :sswitch_1
        0x69eee241 -> :sswitch_0
    .end sparse-switch

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartUser$1(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsVivo:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class v3, Landroid/app/AppOpsManager;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/app/AppOpsManager;

    .line 25
    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "com.android.systemui"

    .line 33
    .line 34
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const-string v4, "android:coarse_location"

    .line 49
    .line 50
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 53
    .line 54
    const-string v6, "com.android.systemui"

    .line 55
    .line 56
    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const-string v4, "android:fine_location"

    .line 60
    .line 61
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 64
    .line 65
    const-string v5, "com.android.systemui"

    .line 66
    .line 67
    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string v0, "PermissionPolicyService"

    .line 71
    .line 72
    const-string v3, "Ignore location AppOps which come from systemui"

    .line 73
    .line 74
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v4, "Permission_grant_default_permissions-"

    .line 85
    .line 86
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 100
    .line 101
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 106
    .line 107
    iget-object v3, v3, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 108
    .line 109
    iget-object v4, v3, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v4

    .line 112
    :try_start_1
    iget-object v3, v3, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 113
    .line 114
    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    const-string v3, "Permission_callback_waiting-"

    .line 122
    .line 123
    sget-boolean v4, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    .line 124
    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 129
    .line 130
    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v6, "defaultPermsWereGrantedSinceBoot("

    .line 136
    .line 137
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v6, ")"

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v6, "PermissionPolicyService"

    .line 153
    .line 154
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    .line 158
    .line 159
    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v6, Landroid/permission/PermissionControllerManager;

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v7, v8}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-direct {v6, v7, v8}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;

    .line 188
    .line 189
    invoke-direct {v8, p1, v5}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;-><init>(ILcom/android/internal/infra/AndroidFuture;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v7, v8}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 193
    .line 194
    .line 195
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v4, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 214
    .line 215
    .line 216
    :goto_0
    new-instance v3, Landroid/permission/PermissionControllerManager;

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Landroid/permission/PermissionControllerManager;->updateUserSensitive()V

    .line 238
    .line 239
    .line 240
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 241
    .line 242
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 243
    .line 244
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 245
    .line 246
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 247
    .line 248
    iget-object v3, v3, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 249
    .line 250
    iget-object v5, v3, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 251
    .line 252
    monitor-enter v5

    .line 253
    :try_start_3
    iget-object v4, v3, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz v4, :cond_3

    .line 256
    .line 257
    iget-object v6, v3, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 258
    .line 259
    invoke-virtual {v6, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object v4, v3, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 263
    .line 264
    invoke-virtual {v4, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 268
    .line 269
    .line 270
    monitor-exit v5

    .line 271
    goto :goto_3

    .line 272
    :catchall_0
    move-exception p0

    .line 273
    goto :goto_1

    .line 274
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 275
    .line 276
    const-string p1, "The version of the permission controller hasn\'t been set before trying to update the fingerprint."

    .line 277
    .line 278
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    throw p0

    .line 284
    :catchall_1
    move-exception p0

    .line 285
    goto :goto_2

    .line 286
    :catch_1
    move-exception p0

    .line 287
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 288
    .line 289
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 293
    :goto_2
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 298
    .line 299
    .line 300
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 301
    .line 302
    monitor-enter v3

    .line 303
    :try_start_5
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 304
    .line 305
    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 306
    .line 307
    .line 308
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    .line 309
    .line 310
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v4, "Permission_synchronize_permissions-"

    .line 314
    .line 315
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 329
    .line 330
    invoke-direct {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 331
    .line 332
    .line 333
    new-instance v4, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-static {v5, v6}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v6, "Permission_synchronize_addPackages-"

    .line 353
    .line 354
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v3, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 368
    .line 369
    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;

    .line 370
    .line 371
    invoke-direct {v5, v4}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 378
    .line 379
    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v5, "Permission_syncPackages-"

    .line 383
    .line 384
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-virtual {v3, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-static {v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 404
    .line 405
    .line 406
    if-eqz v1, :cond_5

    .line 407
    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v3, "Permission_onInitialized-"

    .line 411
    .line 412
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-object p0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 426
    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 436
    .line 437
    .line 438
    :cond_5
    return-void

    .line 439
    :catchall_2
    move-exception p0

    .line 440
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 441
    throw p0

    .line 442
    :catchall_3
    move-exception p0

    .line 443
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 444
    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser$1(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    .line 26
    .line 27
    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v1, v4, v2}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public final resetAppOpPermissionsIfNotRequestedForUid(I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {v2, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    if-eqz v8, :cond_6

    .line 35
    .line 36
    array-length v3, v8

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_0
    new-instance v9, Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    array-length v3, v8

    .line 47
    const/4 v10, 0x0

    .line 48
    move v4, v10

    .line 49
    :goto_0
    if-ge v4, v3, :cond_3

    .line 50
    .line 51
    aget-object v5, v8, v4

    .line 52
    .line 53
    const/16 v6, 0x1000

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 62
    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v9, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-class v2, Landroid/app/AppOpsManager;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v11, v1

    .line 79
    check-cast v11, Landroid/app/AppOpsManager;

    .line 80
    .line 81
    const-class v1, Landroid/app/AppOpsManagerInternal;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v12, v1

    .line 88
    check-cast v12, Landroid/app/AppOpsManagerInternal;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 91
    .line 92
    check-cast v1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    move v14, v10

    .line 99
    :goto_2
    if-ge v14, v13, :cond_6

    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 102
    .line 103
    check-cast v1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_5

    .line 116
    .line 117
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    array-length v5, v8

    .line 126
    move v4, v10

    .line 127
    :goto_3
    if-ge v4, v5, :cond_5

    .line 128
    .line 129
    aget-object v3, v8, v4

    .line 130
    .line 131
    invoke-virtual {v11, v15, v7, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eq v1, v6, :cond_4

    .line 136
    .line 137
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 138
    .line 139
    invoke-virtual {v12, v15, v7, v6, v1}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/server/policy/PermissionPolicyService$2;

    .line 143
    .line 144
    move-object v1, v12

    .line 145
    move-object/from16 v16, v2

    .line 146
    .line 147
    move v2, v15

    .line 148
    move-object/from16 v17, v3

    .line 149
    .line 150
    move/from16 v3, p1

    .line 151
    .line 152
    move/from16 v18, v4

    .line 153
    .line 154
    move-object/from16 v4, v17

    .line 155
    .line 156
    move/from16 v17, v5

    .line 157
    .line 158
    move v5, v6

    .line 159
    move/from16 v19, v6

    .line 160
    .line 161
    move-object/from16 v6, v16

    .line 162
    .line 163
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_4
    move/from16 v18, v4

    .line 168
    .line 169
    move/from16 v17, v5

    .line 170
    .line 171
    move/from16 v19, v6

    .line 172
    .line 173
    :goto_4
    add-int/lit8 v4, v18, 0x1

    .line 174
    .line 175
    move/from16 v5, v17

    .line 176
    .line 177
    move/from16 v6, v19

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :goto_5
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    throw v0
.end method

.method public final synchronizeUidPermissionsAndAppOps(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x3e8

    .line 34
    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 39
    .line 40
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackagesForAppId(I)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_0
    if-ge v0, p1, :cond_1

    .line 58
    .line 59
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 64
    .line 65
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final synchronizeUidPermissionsAndAppOpsAsync(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 47
    .line 48
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
    monitor-exit v0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_2
    return-void
.end method

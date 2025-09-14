.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# static fields
.field public static final ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

.field public static final SUPPORT_EDGE_MUM:Z

.field public static final TASKMANAGER_PKGS:[Ljava/lang/String;

.field public static mLock:Ljava/lang/Object;

.field public static mProcessing:Z

.field public static volatile packageRemoveIntentReceiver:Ljava/util/Map;

.field public static volatile terminateIntentReceiver:Ljava/util/Map;


# instance fields
.field public final mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mAvailableKeyCodesList:Ljava/util/List;

.field public final mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mKey:Ljava/lang/String;

.field public mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mPolicyDefinitions:Ljava/util/Map;

.field public final mReceiver:Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

.field public final mToken:Landroid/os/IBinder;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, "com.sec.android.app.controlpanel"

    .line 8
    const-string/jumbo v1, "com.sec.android.app.taskmanager"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 20
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 27
    const v2, 0x224d4

    .line 30
    if-lt v1, v2, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->SUPPORT_EDGE_MUM:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mToken:Landroid/os/IBinder;

    .line 11
    const-string/jumbo v0, "key_knoxcustommanagerservice_kiosk"

    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKey:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 25
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 27
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 29
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 31
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 36
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 47
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v1, Landroid/os/HandlerThread;

    .line 62
    const-string v2, "KioskModeService"

    .line 64
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 74
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    .line 83
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 85
    const-string v1, "application_policy"

    .line 87
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 93
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 95
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 97
    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/Object;

    .line 101
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 104
    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 106
    :cond_0
    const-string/jumbo v1, "user"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/os/UserManager;

    .line 115
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    .line 119
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    .line 126
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    .line 133
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 136
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x2

    .line 140
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 143
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 145
    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 150
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;

    .line 152
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 155
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 157
    return-void
.end method

.method public static wipeRecentTasks(I)Z
    .locals 4

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/app/IActivityTaskManager;->clearRecentTasks(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    const-string v2, "KioskModeService"

    const-string v3, "Remote exception calling clearRecentTasks!"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    throw p0
.end method


# virtual methods
.method public final _disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 14

    .line 1
    move-object v2, p0

    .line 2
    move-object v3, p1

    .line 3
    move/from16 v7, p2

    .line 5
    sget-object v10, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v10

    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_0
    sput-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 18
    move-result v1

    .line 19
    const/16 v4, 0x3e8

    .line 21
    const/4 v5, 0x0

    .line 22
    if-ne v1, v4, :cond_0

    .line 24
    move v1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v5

    .line 27
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    move-result v6

    .line 31
    iget v8, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    move-result-wide v11

    .line 37
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 43
    const-string v0, "KioskModeService"

    .line 45
    const-string v1, "Kiosk Mode already disabled"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, v8, v7, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 53
    goto/16 :goto_2

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_3

    .line 58
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    .line 61
    move-result v0

    .line 62
    if-eq v0, v8, :cond_2

    .line 64
    const-string v0, "KioskModeService"

    .line 66
    const-string v1, "Kiosk Mode enabled by different admin"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, -0x2

    .line 72
    invoke-virtual {p0, v8, v7, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 75
    goto/16 :goto_2

    .line 77
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver(I)V

    .line 80
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver(I)V

    .line 83
    iget-object v0, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    const-string v4, "KIOSKMODE"

    .line 87
    const-string/jumbo v9, "kioskModeKioskPackage"

    .line 90
    invoke-virtual {v0, v8, v5, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    iget-object v0, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 96
    const-string v9, "KIOSKMODE"

    .line 98
    const-string/jumbo v13, "kioskModeDefaultPackage"

    .line 101
    invoke-virtual {v0, v8, v5, v9, v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    const/4 v9, 0x0

    .line 106
    invoke-virtual {p0, v8, v9, v9, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p0, v6, v4, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 112
    iget-object v0, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 114
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0, v8, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 119
    iget-object v0, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 121
    invoke-virtual {v0, v8, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 124
    iget-object v0, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    .line 128
    filled-new-array {v4}, [Ljava/lang/String;

    .line 131
    move-result-object v13

    .line 132
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 135
    move-result-object v13

    .line 136
    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-virtual {v0, p1, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_3
    :try_start_1
    const-string/jumbo v0, "statusbar"

    .line 145
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_4

    .line 155
    iget-object v9, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mToken:Landroid/os/IBinder;

    .line 157
    iget-object v13, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKey:Ljava/lang/String;

    .line 159
    invoke-interface {v0, v5, v9, v13}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_2
    const-string v9, "KioskModeService"

    .line 166
    const-string v13, "Failed to enable Google assistant"

    .line 168
    invoke-static {v9, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 173
    new-instance v0, Ljava/lang/Thread;

    .line 175
    new-instance v13, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;

    .line 177
    move-object v1, v13

    .line 178
    move-object v2, p0

    .line 179
    move-object v3, p1

    .line 180
    move v5, v6

    .line 181
    move v6, v8

    .line 182
    move/from16 v7, p2

    .line 184
    move-wide v8, v11

    .line 185
    invoke-direct/range {v1 .. v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V

    .line 188
    invoke-direct {v0, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    monitor-exit v10

    .line 195
    return-void

    .line 196
    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 199
    invoke-static {v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 202
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 205
    invoke-virtual {p0, v8, v7, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 208
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 214
    move-result v0

    .line 215
    invoke-virtual {p0, v6, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 218
    sput-boolean v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 220
    monitor-exit v10

    .line 221
    return-void

    .line 222
    :goto_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    throw v0
.end method

.method public final allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "KioskModeService"

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    :try_start_0
    iget-object v6, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 19
    const-string v8, "KIOSKMODE"

    .line 21
    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    .line 24
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 27
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move v11, v6

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    const-string v7, "allowAirCommandMode() : fail to get admin policy value = "

    .line 34
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    invoke-static {v6, v7, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 42
    move v11, v5

    .line 43
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    const-string v7, "allowAirCommandMode() : "

    .line 47
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    move/from16 v7, p2

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v8, ", userId = "

    .line 57
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v12, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    iget v14, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 74
    const/16 v16, 0x0

    .line 76
    const-string v13, "KIOSKMODE"

    .line 78
    const-string/jumbo v17, "kioskModeAirCommandAllowed"

    .line 81
    move/from16 v15, p2

    .line 83
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {v0, v3, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    .line 98
    move-result v3

    .line 99
    move v6, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_1

    .line 107
    iget-object v6, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    move-result-object v6

    .line 113
    const-string/jumbo v8, "pen_detachment_option"

    .line 116
    invoke-static {v6, v8, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 119
    move-result v6

    .line 120
    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 123
    move-result-object v9

    .line 124
    aget-object v6, v9, v6

    .line 126
    sget-object v9, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .line 128
    invoke-virtual {v6, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_1

    .line 134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 137
    move-result-wide v9

    .line 138
    iget-object v6, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    move-result-object v6

    .line 144
    invoke-static {v6, v8, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 147
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    :cond_1
    move v6, v5

    .line 151
    :goto_1
    if-nez v6, :cond_3

    .line 153
    iget-object v8, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 155
    iget v10, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 157
    const/4 v12, 0x0

    .line 158
    const-string v9, "KIOSKMODE"

    .line 160
    const-string/jumbo v13, "kioskModeAirCommandAllowed"

    .line 163
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 166
    move-result v3

    .line 167
    const-string v4, "allowAirCommandMode() : restore policy because fail to update aircommand setting. = "

    .line 169
    invoke-static {v4, v1, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    goto :goto_2

    .line 173
    :cond_2
    const-string v3, "allowAirCommandMode() : failed to update policy. "

    .line 175
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3
    :goto_2
    iget v1, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 180
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 184
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    move-result-object v3

    .line 188
    const-string v4, "allowAirCommandMode"

    .line 190
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    return v6
.end method

.method public final allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v1

    .line 21
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v3

    .line 27
    const-string v4, "air_view_master_onoff"

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v1

    .line 40
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v3

    .line 46
    const-string/jumbo v4, "finger_air_view"

    .line 49
    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    move-result-wide v1

    .line 59
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v4, "finger_air_view_information_preview"

    .line 68
    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    move-result-wide v1

    .line 78
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object v3

    .line 84
    const-string/jumbo v4, "pen_hovering"

    .line 87
    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 95
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x0

    .line 100
    const-string v3, "allowAirViewMode"

    .line 102
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 107
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 109
    const/4 v8, 0x0

    .line 110
    const-string v5, "KIOSKMODE"

    .line 112
    const-string/jumbo v9, "kioskModeAirViewAllowed"

    .line 115
    move v7, p2

    .line 116
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 119
    move-result p0

    .line 120
    return p0
.end method

.method public final allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x1f

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    and-int/lit8 v0, p2, 0x1f

    .line 13
    if-lez v0, :cond_3

    .line 15
    if-nez p3, :cond_3

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v2

    .line 21
    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->SUPPORT_EDGE_MUM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const-string/jumbo v4, "edge_enable"

    .line 26
    if-eqz v0, :cond_1

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 30
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 50
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    move-result v5

    .line 58
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object v6

    .line 64
    invoke-static {v6, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    goto :goto_2

    .line 83
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0

    .line 87
    :cond_3
    :goto_2
    and-int/lit8 v0, p2, 0x1

    .line 89
    const/4 v2, 0x1

    .line 90
    if-lez v0, :cond_4

    .line 92
    if-nez p3, :cond_4

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 100
    const-string/jumbo v0, "night_mode"

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;)V

    .line 106
    :cond_4
    and-int/lit8 v0, p2, 0x2

    .line 108
    if-lez v0, :cond_5

    .line 110
    if-nez p3, :cond_5

    .line 112
    const/4 v0, 0x2

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 119
    const-string/jumbo v0, "people_stripe"

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;)V

    .line 125
    :cond_5
    and-int/lit8 v0, p2, 0x8

    .line 127
    if-lez v0, :cond_6

    .line 129
    if-nez p3, :cond_6

    .line 131
    const/16 v0, 0x8

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_6

    .line 139
    const-string/jumbo v0, "turn_over_lighting"

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "edge_lighting"

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;)V

    .line 151
    :cond_6
    and-int/lit8 v0, p2, 0x4

    .line 153
    const/4 v3, 0x4

    .line 154
    if-lez v0, :cond_7

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 159
    move-result v4

    .line 160
    if-nez p3, :cond_8

    .line 162
    if-eqz v4, :cond_8

    .line 164
    const-string/jumbo v5, "edge_information_stream"

    .line 167
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 173
    goto :goto_3

    .line 174
    :cond_7
    move v4, v2

    .line 175
    :cond_8
    :goto_3
    and-int/lit8 v5, p2, 0x10

    .line 177
    if-lez v5, :cond_9

    .line 179
    if-nez p3, :cond_9

    .line 181
    const/16 v5, 0x10

    .line 183
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_9

    .line 189
    const-string/jumbo v5, "task_edge"

    .line 192
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;)V

    .line 195
    :cond_9
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 197
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 199
    const-string v7, "KIOSKMODE"

    .line 201
    const-string/jumbo v8, "edgeScreenBlockedFunctions"

    .line 204
    invoke-virtual {v5, v6, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 207
    move-result v1
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    goto :goto_4

    .line 209
    :catch_0
    const-string v5, "KioskModeService"

    .line 211
    const-string/jumbo v6, "getBlockedEdgeScreen() failed"

    .line 214
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_4
    if-eqz p3, :cond_a

    .line 219
    not-int v5, p2

    .line 220
    and-int/2addr v1, v5

    .line 221
    :goto_5
    move v8, v1

    .line 222
    goto :goto_6

    .line 223
    :cond_a
    or-int/2addr v1, p2

    .line 224
    goto :goto_5

    .line 225
    :goto_6
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 227
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 229
    const-string v9, "KIOSKMODE"

    .line 231
    const-string/jumbo v10, "edgeScreenBlockedFunctions"

    .line 234
    const/4 v7, 0x0

    .line 235
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_b

    .line 241
    if-lez v0, :cond_b

    .line 243
    if-eqz p3, :cond_b

    .line 245
    if-nez v4, :cond_b

    .line 247
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_b

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 256
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string p2, " "

    .line 270
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object p2

    .line 284
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 286
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 289
    move-result-object p3

    .line 290
    const-string v0, "allowEdgeScreen"

    .line 292
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 295
    return v1
.end method

.method public final allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "KioskModeService"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p0, "allowHardwareKeys() failed. Caller is not owner"

    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-object v1

    .line 20
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    if-eqz p2, :cond_a

    .line 34
    array-length v5, p2

    .line 35
    if-nez v5, :cond_1

    .line 37
    goto/16 :goto_4

    .line 39
    :cond_1
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_0
    array-length v7, p2

    .line 42
    if-ge v6, v7, :cond_2

    .line 44
    aget v7, p2, v6

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p2

    .line 60
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_7

    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/Integer;

    .line 72
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v6

    .line 76
    const/4 v7, 0x1

    .line 77
    if-nez p3, :cond_5

    .line 79
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    .line 86
    move-result-object v8

    .line 87
    move-object v9, v8

    .line 88
    check-cast v9, Ljava/util/HashSet;

    .line 90
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v10

    .line 94
    if-nez v10, :cond_4

    .line 96
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList$1(ILjava/util/Set;)Z

    .line 102
    move-result v7

    .line 103
    :cond_4
    if-eqz v7, :cond_3

    .line 105
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    .line 116
    move-result-object v8

    .line 117
    move-object v9, v8

    .line 118
    check-cast v9, Ljava/util/HashSet;

    .line 120
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_6

    .line 126
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList$1(ILjava/util/Set;)Z

    .line 132
    move-result v7

    .line 133
    :cond_6
    if-eqz v7, :cond_3

    .line 135
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_1

    .line 139
    :cond_7
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 141
    invoke-virtual {p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()V

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result p2

    .line 148
    new-array v0, p2, [I

    .line 150
    :goto_2
    if-ge v5, p2, :cond_9

    .line 152
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Ljava/lang/Integer;

    .line 158
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 161
    move-result v4

    .line 162
    aput v4, v0, v5

    .line 164
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 166
    if-nez v6, :cond_8

    .line 168
    const-string/jumbo v4, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 171
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    goto :goto_3

    .line 175
    :cond_8
    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 178
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 180
    goto :goto_2

    .line 181
    :cond_9
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 183
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 186
    move-result-object p2

    .line 187
    const-string p3, "allowHardwareKeys"

    .line 189
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    return-object v0

    .line 193
    :cond_a
    :goto_4
    const-string p0, "allowHardwareKeys() return null because invalid request. "

    .line 195
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v1
.end method

.method public final allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    const-string v4, "allowMultiWindowMode() : "

    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    move/from16 v4, p2

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v5, ", userId = "

    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    const-string v11, "KioskModeService"

    .line 37
    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v2, :cond_0

    .line 43
    const-string v0, "allowMultiWindowMode() failed. Caller is not owner"

    .line 45
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v3

    .line 49
    :cond_0
    const/4 v12, 0x1

    .line 50
    :try_start_0
    iget-object v5, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 54
    const-string v7, "KIOSKMODE"

    .line 56
    const-string/jumbo v8, "multiWindowEnabled"

    .line 59
    invoke-virtual {v5, v6, v3, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 62
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    move/from16 v16, v3

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    const-string v5, "allowMultiWindowMode() : fail to get admin policy value = "

    .line 70
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 75
    invoke-static {v3, v5, v11}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 78
    move/from16 v16, v12

    .line 80
    :goto_0
    iget-object v5, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 82
    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 84
    const/4 v9, 0x0

    .line 85
    const-string v6, "KIOSKMODE"

    .line 87
    const-string/jumbo v10, "multiWindowEnabled"

    .line 90
    move/from16 v8, p2

    .line 92
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {v0, v2, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(IZ)Z

    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_2

    .line 104
    iget-object v13, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 106
    iget v15, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 108
    const/16 v17, 0x0

    .line 110
    const-string v14, "KIOSKMODE"

    .line 112
    const-string/jumbo v18, "multiWindowEnabled"

    .line 115
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 118
    move-result v2

    .line 119
    const-string v5, "allowMultiWindowMode() : restore policy because fail to update multiwindow setting. = "

    .line 121
    invoke-static {v5, v11, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    const-string v2, "allowMultiWindowMode() : failed to update policy. "

    .line 127
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    :goto_1
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 132
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    move-result-object v4

    .line 140
    const-string v5, "allowMultiWindowMode"

    .line 142
    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 145
    return v3
.end method

.method public final allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v2

    .line 15
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 17
    const-string v5, "android"

    .line 19
    const/4 v6, 0x0

    .line 20
    invoke-static {v4, v5, v6, v1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v1, :cond_0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    move-result-object v1

    .line 32
    const/16 v5, 0x200

    .line 34
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    move v5, v6

    .line 46
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_5

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 58
    sget-object v8, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    .line 60
    array-length v9, v8

    .line 61
    move v10, v6

    .line 62
    :goto_0
    if-ge v10, v9, :cond_4

    .line 64
    aget-object v11, v8, v10

    .line 66
    iget-object v12, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v11

    .line 72
    if-eqz v11, :cond_3

    .line 74
    move v5, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    :goto_1
    if-eqz v5, :cond_2

    .line 81
    :cond_5
    move v4, v5

    .line 82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    :goto_2
    const-string v1, "KioskModeService"

    .line 87
    if-nez v4, :cond_6

    .line 89
    const-string p0, "allowTaskManager() - Task Manager is not available in this device"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v6

    .line 95
    :cond_6
    if-eqz v0, :cond_7

    .line 97
    const-string p0, "allowTaskManager() - failed. Caller is not owner"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v6

    .line 103
    :cond_7
    if-nez p2, :cond_8

    .line 105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    move-result-wide v2

    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 112
    move-result-object v4

    .line 113
    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 115
    invoke-interface {v4, v5, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 118
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 121
    move-result-object v4

    .line 122
    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 124
    invoke-interface {v4, v5, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 127
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 130
    move-result-object v4

    .line 131
    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 133
    invoke-interface {v4, v5, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    goto :goto_5

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_1
    const-string v4, "allowTaskManager() failed to force stopping packages"

    .line 145
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    goto :goto_3

    .line 149
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    throw p0

    .line 153
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 155
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 157
    const/4 v8, 0x0

    .line 158
    const-string v5, "KIOSKMODE"

    .line 160
    const-string/jumbo v9, "taskManagerEnabled"

    .line 163
    move v7, p2

    .line 164
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 167
    move-result v0

    .line 168
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 170
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 173
    move-result-object p2

    .line 174
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    move-result-object v1

    .line 178
    const-string v2, "allowTaskManager"

    .line 180
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    return v0
.end method

.method public final applyHideNavigationBarSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNavigationBarHiddenAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "KioskModeService"

    .line 23
    const-string p2, "applyHideNavigationBarSystemUI() failed. "

    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    return-void

    .line 30
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    throw p0
.end method

.method public final applyHideStatusBarSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setStatusBarHiddenAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "KioskModeService"

    .line 23
    const-string p2, "applyHideStatusBarSystemUI() failed. "

    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    return-void

    .line 30
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    throw p0
.end method

.method public final applyHideSystemBarSystemUI(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v3

    .line 23
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideStatusBarSystemUI(IZ)V

    .line 26
    if-nez v0, :cond_3

    .line 28
    if-eqz v2, :cond_2

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v3, v4

    .line 32
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideNavigationBarSystemUI(IZ)V

    .line 35
    return-void
.end method

.method public final applyMultiWindowPolicy(IZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    const-string v3, "KioskModeService"

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string/jumbo v6, "com.android.server.enterprise.kioskmode"

    .line 16
    if-nez v0, :cond_0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 20
    const-string/jumbo v7, "disable"

    .line 23
    invoke-virtual {p0, v6, v7, v5, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 26
    goto :goto_2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p2, :cond_1

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 35
    const-string/jumbo v7, "enable"

    .line 38
    invoke-virtual {p0, v6, v7, v4, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_2

    .line 42
    :goto_0
    :try_start_1
    const-string v4, "applyMultiWindowPolicy() : Failed to update multi window policy"

    .line 44
    invoke-static {v3, v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    move v4, v5

    .line 51
    goto :goto_3

    .line 52
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    :goto_3
    const-string p0, "applyMultiWindowPolicy() : ret = "

    .line 61
    const-string v1, ", allowed = "

    .line 63
    const-string v2, ", userId = "

    .line 65
    invoke-static {p0, v4, v1, v0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, " ,isCalledAdmin="

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v4
.end method

.method public final broadcastBlockedEdgeScreenIntent(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 7
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.INFORMATION_STREAM_INTERNAL"

    .line 10
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.BLOCKED_STATUS"

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 18
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 23
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    .line 26
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    throw p0
.end method

.method public final broadcastKioskResult(III)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    const/16 v1, 0x2710

    .line 11
    if-lt v0, v1, :cond_0

    .line 13
    const/16 v1, 0x4e1f

    .line 15
    if-le v0, v1, :cond_1

    .line 17
    :cond_0
    const-string/jumbo v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    :goto_0
    if-nez v0, :cond_2

    .line 29
    return-void

    .line 30
    :cond_2
    const/4 v1, 0x1

    .line 31
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    .line 34
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 37
    if-eq p2, v1, :cond_5

    .line 39
    const/4 v1, 0x2

    .line 40
    if-eq p2, v1, :cond_4

    .line 42
    const/4 p3, 0x3

    .line 43
    if-eq p2, p3, :cond_3

    .line 45
    return-void

    .line 46
    :cond_3
    new-instance p2, Landroid/content/Intent;

    .line 48
    const-string/jumbo p3, "com.samsung.android.knox.intent.action.UNEXPECTED_KIOSK_BEHAVIOR"

    .line 51
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

    .line 66
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    new-instance p2, Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    .line 84
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 99
    move-result-wide v0

    .line 100
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 102
    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 104
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    .line 107
    invoke-virtual {p1, p2, p3, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    new-instance v4, Landroid/content/Intent;

    .line 122
    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 125
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 130
    move-result-object p2

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 134
    move-result v5

    .line 135
    invoke-virtual {p2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 138
    move-result p2

    .line 139
    invoke-virtual {v4, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p0, v4, p3, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    return-void
.end method

.method public final cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 7
    if-eqz v2, :cond_1

    .line 9
    const-string/jumbo v2, "com.sec.android.kiosk"

    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 18
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 20
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 28
    move-result p2

    .line 29
    sget v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->MY_PID:I

    .line 31
    if-ne p2, v3, :cond_0

    .line 33
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 36
    move-result p2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplicationInternal(IILjava/lang/String;Z)Z

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 44
    const-string p1, "Process should have system uid"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return-void
.end method

.method public final clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->clearAllNotificationsAsUser(I)Z

    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0

    .line 32
    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    const/4 v1, 0x0

    .line 39
    const-string/jumbo v2, "clearAllNotifications"

    .line 42
    invoke-virtual {p0, p1, v2, v1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    return v0
.end method

.method public final disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 4

    .line 1
    const-string v0, "KioskModeService"

    .line 3
    const-string/jumbo v1, "disableKioskMode"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v0, v2, :cond_0

    .line 19
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 21
    const/4 v0, -0x4

    .line 22
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 25
    return-void

    .line 26
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 34
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Landroid/os/Bundle;

    .line 40
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v2, "adminuid"

    .line 45
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 53
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 55
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "android.permission.DUMP"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p0, "Permission Denial: can\'t dump KioskModeService"

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "[KioskMode Cache]"

    .line 23
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object p3

    .line 44
    iget-object v0, p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    check-cast v0, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_3

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 76
    const-string v2, "BlockedKeyList for userId "

    .line 78
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, " {"

    .line 86
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v2, p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 91
    check-cast v2, Ljava/util/HashMap;

    .line 93
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/util/Set;

    .line 99
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v1

    .line 103
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_1

    .line 124
    const-string v2, ", "

    .line 126
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    const-string/jumbo v1, "} "

    .line 133
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    const-string p3, "KioskMode Enabled : "

    .line 155
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance p3, Lcom/samsung/android/knox/ContextInfo;

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 163
    move-result v0

    .line 164
    invoke-direct {p3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 167
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 169
    if-eqz v0, :cond_4

    .line 171
    const/4 p3, 0x1

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 176
    move-result p3

    .line 177
    :goto_2
    invoke-static {p1, p3, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 180
    sget-boolean p1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 182
    if-eqz p1, :cond_5

    .line 184
    const-string p1, "\tKiosk Mode is busy on processing."

    .line 186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    :cond_5
    const-string/jumbo v3, "taskManagerEnabled"

    .line 192
    const-string/jumbo v4, "kioskModeAirCommandAllowed"

    .line 195
    const-string v0, "adminUid"

    .line 197
    const-string/jumbo v1, "systemBarEnabled"

    .line 200
    const-string/jumbo v2, "multiWindowEnabled"

    .line 203
    const-string/jumbo v5, "kioskModeAirViewAllowed"

    .line 206
    const-string/jumbo v6, "edgeScreenBlockedFunctions"

    .line 209
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    iget-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 215
    const-string v0, "KIOSKMODE"

    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p3, v0, v1, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 221
    move-result-object p1

    .line 222
    const-string p3, "[userId = 0]"

    .line 224
    const-string v0, "\tSystem Bar Hidden = "

    .line 226
    invoke-static {p2, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    move-result-object p3

    .line 230
    const-string/jumbo v0, "systemBarEnabled"

    .line 233
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpMaskedPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object p3

    .line 244
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance p3, Ljava/lang/StringBuilder;

    .line 249
    const-string v0, "\tStatus Bar Hidden = "

    .line 251
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v0, "statusBarHidden"

    .line 257
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpMaskedPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance p3, Ljava/lang/StringBuilder;

    .line 273
    const-string v0, "\tNavigation Bar Hidden = "

    .line 275
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "navigationBarHidden"

    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpMaskedPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object p3

    .line 292
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance p3, Ljava/lang/StringBuilder;

    .line 297
    const-string v0, "\tMultiWindow Allow = "

    .line 299
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "multiWindowEnabled"

    .line 305
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object p3

    .line 316
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance p3, Ljava/lang/StringBuilder;

    .line 321
    const-string v0, "\tTaskManager Allow = "

    .line 323
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v0, "taskManagerEnabled"

    .line 329
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object p3

    .line 340
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance p3, Ljava/lang/StringBuilder;

    .line 345
    const-string v0, "\tAirCommand Allow = "

    .line 347
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "kioskModeAirCommandAllowed"

    .line 353
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object p3

    .line 364
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance p3, Ljava/lang/StringBuilder;

    .line 369
    const-string v0, "\tAirView Allow = "

    .line 371
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v0, "kioskModeAirViewAllowed"

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object p3

    .line 388
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance p3, Ljava/lang/StringBuilder;

    .line 393
    const-string v0, "\tEdgeScreenFunctions Allow = "

    .line 395
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v0, "edgeScreenBlockedFunctions"

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->dumpMaskedPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object p0

    .line 412
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public final dumpMaskedPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 11
    iget v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->policyMask:I

    .line 13
    const-string/jumbo v1, "statusBarHidden"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    const-string/jumbo v1, "navigationBarHidden"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    :cond_0
    const-string/jumbo p1, "systemBarEnabled"

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p2

    .line 43
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 49
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/ContentValues;

    .line 55
    const-string v3, "adminUid"

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 64
    move-result-object v2

    .line 65
    if-eqz v3, :cond_2

    .line 67
    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v2

    .line 73
    and-int/2addr v2, v0

    .line 74
    if-ne v2, v0, :cond_2

    .line 76
    const-string v2, " "

    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_4

    .line 92
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 94
    check-cast p0, Ljava/util/HashMap;

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 102
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultMessage:Ljava/lang/String;

    .line 104
    return-object p0

    .line 105
    :cond_4
    const/4 p2, 0x0

    .line 106
    const-string v0, " Enforced [ "

    .line 108
    invoke-virtual {v1, p2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 113
    check-cast p0, Ljava/util/HashMap;

    .line 115
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 121
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->enforcedMessage:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string p0, "]"

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method

.method public final dumpPolicy(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 11
    iget v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultValue:I

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/ContentValues;

    .line 34
    const-string v3, "adminUid"

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    if-eqz v3, :cond_0

    .line 46
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v2

    .line 52
    if-eq v2, v0, :cond_0

    .line 54
    const-string v2, " "

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 72
    check-cast p0, Ljava/util/HashMap;

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->defaultMessage:Ljava/lang/String;

    .line 82
    return-object p0

    .line 83
    :cond_2
    const/4 p2, 0x0

    .line 84
    const-string v0, " Enforced [ "

    .line 86
    invoke-virtual {v1, p2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPolicyDefinitions:Ljava/util/Map;

    .line 91
    check-cast p0, Ljava/util/HashMap;

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 99
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;->enforcedMessage:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string p0, "]"

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method

.method public final enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "KioskModeService"

    .line 3
    const-string/jumbo v1, "enableKioskMode"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    move-result-object p1

    .line 13
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_0

    .line 18
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    const/4 p2, -0x4

    .line 21
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 24
    return-void

    .line 25
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0, v0, v1, p2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 31
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v1, "package"

    .line 40
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 43
    move-result-object p2

    .line 44
    const-string v1, "adminuid"

    .line 46
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 48
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void
.end method

.method public final enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final forceTerminateKiosk(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v2, "forceTerminateKiosk() - uid : "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " /userId : "

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v1, "KioskModeService"

    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 35
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 42
    return-void
.end method

.method public final getActiveKioskAdmin(I)I
    .locals 5

    .line 1
    const-string v0, "adminUid"

    .line 3
    const-string/jumbo v1, "kioskModeEnabled"

    .line 6
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    const-string v3, "KIOSKMODE"

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, v4, p1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0

    .line 31
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/content/ContentValues;

    .line 43
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    if-ne v3, v4, :cond_0

    .line 54
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return p0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :cond_1
    const-string/jumbo p0, "getActiveKioskAdmin() failed for user : "

    .line 70
    const-string v0, "KioskModeService"

    .line 72
    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 p0, -0x1

    .line 76
    return p0
.end method

.method public final getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/util/Set;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    if-eqz p0, :cond_1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object p1
.end method

.method public final getAllBlockedList()Ljava/util/Map;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 7
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 35
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    const-string v4, "KIOSKMODE"

    .line 47
    const-string/jumbo v5, "blockedHwKeyList"

    .line 50
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Ljava/util/HashSet;

    .line 56
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 59
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v3

    .line 65
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/String;

    .line 77
    const-string v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_0

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-object v0
.end method

.method public final getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 p1, 0x0

    .line 4
    const-string v0, "KIOSKMODE"

    .line 6
    const-string/jumbo v1, "edgeScreenBlockedFunctions"

    .line 9
    invoke-virtual {p0, p1, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 33
    or-int/2addr p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return p1
.end method

.method public final getBlockedHwKeysCache()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 5
    return-object p0
.end method

.method public final getBlockedList(I)Ljava/util/Set;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "KIOSKMODE"

    .line 6
    const-string/jumbo v2, "blockedHwKeyList"

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 18
    if-eqz p0, :cond_0

    .line 20
    const-string v1, ","

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    array-length v1, p0

    .line 27
    :goto_0
    if-ge v0, v1, :cond_0

    .line 29
    aget-object v2, p0, v0

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p1
.end method

.method public final getDefaultHomeScreen(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "android.intent.category.DEFAULT"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 20
    const/high16 v1, 0x10000

    .line 22
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 25
    move-result-object p0

    .line 26
    const/4 p1, 0x0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    .line 31
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 35
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 37
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 39
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v0, p1

    .line 44
    :goto_0
    if-nez v0, :cond_1

    .line 46
    const-string p0, "KioskModeService"

    .line 48
    const-string/jumbo v0, "getDefaultHomeScreen() fail"

    .line 51
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object p1

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    const-string v1, "android"

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 67
    return-object p1

    .line 68
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public final getHardwareKeyList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 9
    monitor-exit p1

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final getHomeActivity(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "android.intent.category.DEFAULT"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v1

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 24
    const/high16 v3, 0x10000

    .line 26
    invoke-virtual {p0, v0, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 37
    move-result v0

    .line 38
    if-ge p1, v0, :cond_1

    .line 40
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 46
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 62
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 64
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 66
    return-object p0

    .line 67
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p0, "KioskModeService"

    .line 72
    const-string p1, " - cannot find matched home activity"

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public final getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final getKioskHomePackageAsUser(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "kioskModeKioskPackage"

    .line 4
    const-string/jumbo v1, "kioskModeEnabled"

    .line 7
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    const-string v3, "KIOSKMODE"

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v4, p1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/content/ContentValues;

    .line 44
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    if-ne v3, v4, :cond_0

    .line 57
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 62
    :catch_0
    const-string/jumbo p0, "getKioskHomePackageAsUser() failed user : "

    .line 65
    const-string v0, "KioskModeService"

    .line 67
    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public final getRestrictedKeyCodes()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "KioskModeService"

    .line 3
    return-object p0
.end method

.method public final getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v0

    .line 9
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object p0

    .line 18
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 26
    const-string v0, ":"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 31
    move-result v0

    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq v0, v1, :cond_1

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    :cond_1
    const-string v0, "android.uid.systemui"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v0

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 55
    move-result p0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "System UI : "

    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string p1, " / userId : "

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    const-string v2, "KioskModeService"

    .line 82
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    return p0

    .line 89
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 92
    move-result p0

    .line 93
    return p0
.end method

.method public final hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string p0, "KioskModeService"

    .line 14
    const-string/jumbo p1, "hideNavigationBar() failed. Caller is not owner"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v1

    .line 21
    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v2, "KIOSKMODE"

    .line 27
    const-string/jumbo v4, "systemBarEnabled"

    .line 30
    invoke-virtual {p1, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 33
    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    const/4 p1, 0x1

    .line 35
    if-ne p2, p1, :cond_1

    .line 37
    or-int/lit8 p1, v1, 0x2

    .line 39
    :goto_0
    move v5, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    and-int/lit8 p1, v1, -0x3

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    const/4 v4, 0x0

    .line 47
    const-string v6, "KIOSKMODE"

    .line 49
    const-string/jumbo v7, "systemBarEnabled"

    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    .line 59
    move-result p2

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideNavigationBarSystemUI(IZ)V

    .line 65
    :cond_2
    return p1
.end method

.method public final hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string p0, "KioskModeService"

    .line 14
    const-string/jumbo p1, "hideStatusBar() failed. Caller is not owner"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v1

    .line 21
    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v2, "KIOSKMODE"

    .line 27
    const-string/jumbo v4, "systemBarEnabled"

    .line 30
    invoke-virtual {p1, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 33
    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    const/4 p1, 0x1

    .line 35
    if-ne p2, p1, :cond_1

    .line 37
    or-int/2addr p1, v1

    .line 38
    :goto_0
    move v5, p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    and-int/lit8 p1, v1, -0x2

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    const/4 v4, 0x0

    .line 46
    const-string v6, "KIOSKMODE"

    .line 48
    const-string/jumbo v7, "systemBarEnabled"

    .line 51
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    .line 58
    move-result p2

    .line 59
    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideStatusBarSystemUI(IZ)V

    .line 64
    :cond_2
    return p1
.end method

.method public final hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string p0, "KioskModeService"

    .line 14
    const-string/jumbo p1, "hideSystemBar() failed. Caller is not owner"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v1

    .line 21
    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v2, "KIOSKMODE"

    .line 27
    const-string/jumbo v4, "systemBarEnabled"

    .line 30
    invoke-virtual {p1, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 33
    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    const/4 p1, 0x1

    .line 35
    if-ne p2, p1, :cond_1

    .line 37
    or-int/lit8 p1, v1, 0x3

    .line 39
    :goto_0
    move v5, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    and-int/lit8 p1, v1, -0x4

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    const/4 v4, 0x0

    .line 47
    const-string v6, "KIOSKMODE"

    .line 49
    const-string/jumbo v7, "systemBarEnabled"

    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    .line 61
    :cond_2
    return p1
.end method

.method public final initKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    move-object/from16 v9, p2

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result v0

    .line 11
    const-string/jumbo v2, "com.sec.android.kiosk"

    .line 14
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    const/16 v10, -0x7d0

    .line 20
    const/4 v11, 0x0

    .line 21
    const-string v12, "KioskModeService"

    .line 23
    if-eqz v2, :cond_d

    .line 25
    const-string v13, "IOException while closing InputStream"

    .line 27
    const-string v14, "IOException while closing OutputStream"

    .line 29
    const-string v0, "/system/kioskdefault.apk"

    .line 31
    const/4 v2, 0x0

    .line 32
    :try_start_0
    iget-object v3, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 34
    const-string/jumbo v4, "com.samsung.android.mdm"

    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_0

    .line 44
    const-string v0, "MDMApp context could not be created!"

    .line 46
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    move-object v15, v2

    .line 50
    move-object/from16 v17, v15

    .line 52
    goto/16 :goto_3

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object v1, v0

    .line 56
    move-object v15, v2

    .line 57
    move-object/from16 v17, v15

    .line 59
    goto/16 :goto_11

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object v15, v2

    .line 63
    move-object/from16 v17, v15

    .line 65
    goto/16 :goto_c

    .line 67
    :catch_1
    move-exception v0

    .line 68
    move-object v15, v2

    .line 69
    move-object/from16 v17, v15

    .line 71
    goto/16 :goto_e

    .line 73
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 76
    move-result-object v3

    .line 77
    const-string/jumbo v4, "kioskdefault.apk"

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 83
    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    new-instance v7, Ljava/io/File;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 112
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    .line 114
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 117
    const/16 v0, 0x400

    .line 119
    :try_start_3
    new-array v0, v0, [B

    .line 121
    :goto_0
    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    .line 124
    move-result v2

    .line 125
    const/4 v3, -0x1

    .line 126
    if-eq v2, v3, :cond_1

    .line 128
    invoke-virtual {v6, v0, v11, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x1b4

    .line 134
    :try_start_4
    invoke-static {v7, v0, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 137
    iget-object v2, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 139
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 143
    const/4 v0, 0x0

    .line 144
    const/16 v16, 0x1

    .line 146
    const/4 v5, 0x0

    .line 147
    move-object/from16 v3, p1

    .line 149
    move-object/from16 v17, v6

    .line 151
    move-object v6, v0

    .line 152
    move-object/from16 v18, v7

    .line 154
    move/from16 v7, v16

    .line 156
    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;Z)Z

    .line 159
    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 165
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 168
    goto :goto_1

    .line 169
    :catch_2
    move-exception v0

    .line 170
    move-object v2, v0

    .line 171
    invoke-static {v12, v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_1
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 177
    goto :goto_2

    .line 178
    :catch_3
    move-exception v0

    .line 179
    move-object v2, v0

    .line 180
    invoke-static {v12, v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :goto_2
    move v10, v11

    .line 184
    goto/16 :goto_10

    .line 186
    :cond_2
    move-object/from16 v2, v18

    .line 188
    :goto_3
    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 193
    :cond_3
    if-eqz v17, :cond_4

    .line 195
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 198
    goto :goto_4

    .line 199
    :catch_4
    move-exception v0

    .line 200
    move-object v2, v0

    .line 201
    invoke-static {v12, v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_4
    :goto_4
    if-eqz v15, :cond_9

    .line 206
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 209
    goto/16 :goto_10

    .line 211
    :catch_5
    move-exception v0

    .line 212
    move-object v2, v0

    .line 213
    invoke-static {v12, v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    goto/16 :goto_10

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    :goto_5
    move-object v1, v0

    .line 220
    :goto_6
    move-object/from16 v2, v18

    .line 222
    goto/16 :goto_11

    .line 224
    :catch_6
    move-exception v0

    .line 225
    :goto_7
    move-object/from16 v2, v18

    .line 227
    goto :goto_c

    .line 228
    :catch_7
    move-exception v0

    .line 229
    :goto_8
    move-object/from16 v2, v18

    .line 231
    goto/16 :goto_e

    .line 233
    :catchall_2
    move-exception v0

    .line 234
    :goto_9
    move-object/from16 v17, v6

    .line 236
    move-object/from16 v18, v7

    .line 238
    goto :goto_5

    .line 239
    :catch_8
    move-exception v0

    .line 240
    :goto_a
    move-object/from16 v17, v6

    .line 242
    move-object/from16 v18, v7

    .line 244
    goto :goto_7

    .line 245
    :catch_9
    move-exception v0

    .line 246
    :goto_b
    move-object/from16 v17, v6

    .line 248
    move-object/from16 v18, v7

    .line 250
    goto :goto_8

    .line 251
    :catchall_3
    move-exception v0

    .line 252
    goto :goto_9

    .line 253
    :catch_a
    move-exception v0

    .line 254
    goto :goto_a

    .line 255
    :catch_b
    move-exception v0

    .line 256
    goto :goto_b

    .line 257
    :catchall_4
    move-exception v0

    .line 258
    move-object/from16 v18, v7

    .line 260
    move-object v1, v0

    .line 261
    move-object/from16 v17, v2

    .line 263
    goto :goto_6

    .line 264
    :catch_c
    move-exception v0

    .line 265
    move-object/from16 v18, v7

    .line 267
    move-object/from16 v17, v2

    .line 269
    goto :goto_7

    .line 270
    :catch_d
    move-exception v0

    .line 271
    move-object/from16 v18, v7

    .line 273
    move-object/from16 v17, v2

    .line 275
    goto :goto_8

    .line 276
    :catchall_5
    move-exception v0

    .line 277
    move-object v1, v0

    .line 278
    move-object/from16 v17, v2

    .line 280
    goto :goto_11

    .line 281
    :catch_e
    move-exception v0

    .line 282
    move-object/from16 v17, v2

    .line 284
    goto :goto_c

    .line 285
    :catch_f
    move-exception v0

    .line 286
    move-object/from16 v17, v2

    .line 288
    goto :goto_e

    .line 289
    :goto_c
    :try_start_a
    const-string v3, "NameNotFoundException while creating package context"

    .line 291
    invoke-static {v12, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 294
    if-eqz v2, :cond_5

    .line 296
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 299
    :cond_5
    if-eqz v17, :cond_6

    .line 301
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    .line 304
    goto :goto_d

    .line 305
    :catch_10
    move-exception v0

    .line 306
    move-object v2, v0

    .line 307
    invoke-static {v12, v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :cond_6
    :goto_d
    if-eqz v15, :cond_9

    .line 312
    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 315
    goto :goto_10

    .line 316
    :catchall_6
    move-exception v0

    .line 317
    move-object v1, v0

    .line 318
    goto :goto_11

    .line 319
    :goto_e
    :try_start_d
    const-string v3, "IOException while extracting default apk"

    .line 321
    invoke-static {v12, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 324
    if-eqz v2, :cond_7

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 329
    :cond_7
    if-eqz v17, :cond_8

    .line 331
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    .line 334
    goto :goto_f

    .line 335
    :catch_11
    move-exception v0

    .line 336
    move-object v2, v0

    .line 337
    invoke-static {v12, v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_8
    :goto_f
    if-eqz v15, :cond_9

    .line 342
    :try_start_f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 345
    :cond_9
    :goto_10
    if-eqz v10, :cond_10

    .line 347
    return v10

    .line 348
    :goto_11
    if-eqz v2, :cond_a

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 353
    :cond_a
    if-eqz v17, :cond_b

    .line 355
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    .line 358
    goto :goto_12

    .line 359
    :catch_12
    move-exception v0

    .line 360
    move-object v2, v0

    .line 361
    invoke-static {v12, v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    :cond_b
    :goto_12
    if-eqz v15, :cond_c

    .line 366
    :try_start_11
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    .line 369
    goto :goto_13

    .line 370
    :catch_13
    move-exception v0

    .line 371
    move-object v2, v0

    .line 372
    invoke-static {v12, v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    :cond_c
    :goto_13
    throw v1

    .line 376
    :cond_d
    const/4 v2, -0x3

    .line 377
    :try_start_12
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 380
    move-result-object v3

    .line 381
    const-wide/16 v4, 0x80

    .line 383
    invoke-interface {v3, v9, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 386
    move-result-object v3

    .line 387
    if-nez v3, :cond_e

    .line 389
    const-string v3, "Check if Kiosk App exists and is enabled  - fail "

    .line 391
    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    .line 394
    return v2

    .line 395
    :catch_14
    :cond_e
    iget-object v3, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 397
    invoke-virtual {v3, v9, v11, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 400
    move-result v3

    .line 401
    if-nez v3, :cond_f

    .line 403
    const-string v0, "Check if Kiosk App Disabled  - fail "

    .line 405
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v2

    .line 409
    :cond_f
    invoke-virtual {v1, v0, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    .line 412
    move-result-object v0

    .line 413
    if-nez v0, :cond_10

    .line 415
    const-string v0, "Check if Kiosk App have home activities  - fail "

    .line 417
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v10

    .line 421
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 424
    move-result-wide v2

    .line 425
    :try_start_13
    iget-object v0, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 427
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 429
    const/4 v5, 0x1

    .line 430
    invoke-virtual {v0, v4, v9, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 433
    iget-object v0, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 435
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 437
    invoke-virtual {v0, v4, v9, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 440
    iget-object v0, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    .line 444
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    .line 447
    move-result-object v4

    .line 448
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 451
    move-result-object v4

    .line 452
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 458
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    return v11

    .line 462
    :catchall_7
    move-exception v0

    .line 463
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v0
.end method

.method public final isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "KIOSKMODE"

    .line 5
    const-string/jumbo v0, "kioskModeAirCommandAllowed"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 35
    return p1

    .line 36
    :cond_1
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public final isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "KIOSKMODE"

    .line 5
    const-string/jumbo v0, "kioskModeAirViewAllowed"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 35
    return p1

    .line 36
    :cond_1
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public final isEdgeAllowed()Z
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isEdgeScreenFunctionalityAllowed(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I

    .line 5
    move-result p0

    .line 6
    and-int/2addr p0, p1

    .line 7
    if-lez p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    :goto_0
    return p0
.end method

.method public final isEnableKioskModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 11
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 5

    .line 1
    const-string p1, "KioskModeService"

    .line 3
    const-string/jumbo v0, "isHardwareKeyAllowed() key "

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 9
    iget-object v2, v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/util/Set;

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 48
    move v1, v3

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 54
    if-nez v1, :cond_1

    .line 56
    const p0, 0x1040619

    .line 59
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 62
    :cond_1
    if-nez v1, :cond_2

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p2, " is blocked"

    .line 74
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_2

    .line 85
    :goto_1
    const-string/jumbo p2, "exception inside isHardwareKeyAllowed"

    .line 88
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_2
    :goto_2
    return v1
.end method

.method public final isKeyCodeInputAllowed(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string p1, "KioskModeService"

    .line 3
    const-string/jumbo v0, "kioskModeEnabled"

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    const-string v3, "KIOSKMODE"

    .line 15
    invoke-virtual {p0, v1, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_3

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    move v2, v1

    .line 32
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/ContentValues;

    .line 44
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    const/4 v3, 0x1

    .line 55
    if-ne v2, v3, :cond_1

    .line 57
    move v2, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v2, v1

    .line 60
    :goto_0
    if-ne v2, v3, :cond_0

    .line 62
    :cond_2
    move v1, v2

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    :try_start_2
    const-string p0, "There\'s no matched data"

    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    :goto_1
    const-string/jumbo p0, "isKioskModeEnabledAsUser() failed"

    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_2
    return v1
.end method

.method public final isKioskModeEnabledAsUser(I)Z
    .locals 5

    .line 1
    const-string v0, "KioskModeService"

    .line 3
    const-string/jumbo v1, "kioskModeEnabled"

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    const-string v4, "KIOSKMODE"

    .line 15
    invoke-virtual {p0, v2, p1, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_3

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    move p1, v2

    .line 32
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/ContentValues;

    .line 44
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    const/4 v3, 0x1

    .line 55
    if-ne p1, v3, :cond_1

    .line 57
    move p1, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move p1, v2

    .line 60
    :goto_0
    if-ne p1, v3, :cond_0

    .line 62
    :cond_2
    move v2, p1

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move v2, p1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    :try_start_2
    const-string p0, "There\'s no matched data"

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    :goto_1
    const-string/jumbo p0, "isKioskModeEnabledAsUser() failed"

    .line 75
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_2
    return v2
.end method

.method public final isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p2, :cond_0

    .line 11
    if-nez p0, :cond_0

    .line 13
    const p1, 0x10408bb

    .line 16
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 19
    :cond_0
    return p0
.end method

.method public final isMultiWindowModeAllowedAsUser(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "KIOSKMODE"

    .line 5
    const-string/jumbo v0, "multiWindowEnabled"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    move p1, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return p1
.end method

.method public final isNavigationBarHidden()Z
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .line 3
    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "systemBarEnabled"

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result p0

    return p0
.end method

.method public final isStatusBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isStatusBarHiddenAsUser(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 p1, 0x0

    .line 4
    const-string v0, "KIOSKMODE"

    .line 6
    const-string/jumbo v1, "systemBarEnabled"

    .line 9
    invoke-virtual {p0, p1, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    and-int/2addr v0, v1

    .line 35
    if-eqz v0, :cond_0

    .line 37
    move p1, v1

    .line 38
    :cond_1
    return p1
.end method

.method public final isSystemBarHidden()Z
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .line 3
    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "systemBarEnabled"

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final isSystemBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result p0

    return p0
.end method

.method public final isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isTaskManagerAllowedAsUser(ZI)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p2, "KIOSKMODE"

    .line 5
    const-string/jumbo v0, "taskManagerEnabled"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    const/4 p2, 0x1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    move p2, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    .line 40
    if-nez p2, :cond_2

    .line 42
    const p0, 0x1040f17

    .line 45
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 48
    :cond_2
    return p2
.end method

.method public final launchHomeActivity(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const/high16 v1, 0x10000000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 20
    new-instance v1, Landroid/os/UserHandle;

    .line 22
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_0
    return-void
.end method

.method public final logToKnoxsdkFile$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7

    .line 1
    const-string v0, ", api: "

    .line 3
    const-string v1, "KioskModeService"

    .line 5
    const-string v2, ", result: "

    .line 7
    const-string v3, ", param: "

    .line 9
    const-string/jumbo v4, "callerId: "

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, ", callerPkgName: "

    .line 37
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    const-string/jumbo p1, "logToKnoxsdkFile failed due to unexpected exception"

    .line 90
    invoke-static {v1, p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-static {v1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()V

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(IZ)Z

    .line 36
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 14

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result v0

    .line 11
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 13
    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 16
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v3, :cond_0

    .line 23
    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 32
    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 35
    :cond_1
    if-nez v0, :cond_6

    .line 37
    const-string v2, "adminUid"

    .line 39
    const-string/jumbo v3, "edgeScreenBlockedFunctions"

    .line 42
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    const-string v7, "KIOSKMODE"

    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v5

    .line 61
    move v6, v1

    .line 62
    move v7, v6

    .line 63
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_5

    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Landroid/content/ContentValues;

    .line 75
    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 78
    move-result-object v9

    .line 79
    if-eqz v9, :cond_2

    .line 81
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v9

    .line 85
    and-int/lit8 v9, v9, 0x4

    .line 87
    if-lez v9, :cond_3

    .line 89
    move v9, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v9, v1

    .line 92
    :goto_1
    int-to-long v10, p1

    .line 93
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 100
    move-result-wide v12

    .line 101
    cmp-long v8, v10, v12

    .line 103
    if-eqz v8, :cond_4

    .line 105
    if-eqz v9, :cond_2

    .line 107
    move v7, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    if-eqz v9, :cond_2

    .line 111
    move v6, v4

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    if-eqz v6, :cond_6

    .line 115
    if-nez v7, :cond_6

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 120
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    .line 129
    move-result v1

    .line 130
    if-ne p1, v1, :cond_7

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 135
    :cond_7
    return-void
.end method

.method public final registerPackageRemoveReceiver(I)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v4, Landroid/content/IntentFilter;

    .line 17
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 19
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 24
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "package"

    .line 30
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 39
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 41
    new-instance v3, Landroid/os/UserHandle;

    .line 43
    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 46
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

    .line 49
    const/4 v6, 0x0

    .line 50
    move-object v2, v0

    .line 51
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    sget-object p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    check-cast p0, Ljava/util/HashMap;

    .line 62
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    const-string p0, "KioskModeService"

    .line 68
    const-string p1, "Cannot register packageRemoveIntentReceiver"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    return-void
.end method

.method public final registerTerminationReceiver(I)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v4, Landroid/content/IntentFilter;

    .line 17
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

    .line 20
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-direct {v2, p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 29
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    check-cast v0, Ljava/util/HashMap;

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 42
    new-instance v3, Landroid/os/UserHandle;

    .line 44
    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 47
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x2

    .line 52
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    const-string p0, "KioskModeService"

    .line 58
    const-string p1, "Cannot register terminateIntentReceiver"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method public final resetEdgeScreenSetting(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, p1, v2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final saveBlockedList$1(ILjava/util/Set;)Z
    .locals 8

    .line 1
    check-cast p2, Ljava/util/HashSet;

    .line 3
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string/jumbo v5, "blockedHwKeyList"

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "KIOSKMODE"

    .line 18
    move v2, p1

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ","

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v7

    .line 72
    const-string v5, "KIOSKMODE"

    .line 74
    const-string/jumbo v6, "blockedHwKeyList"

    .line 77
    const/4 v4, 0x0

    .line 78
    move v3, p1

    .line 79
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    move-result p0

    .line 83
    :goto_1
    return p0
.end method

.method public final setAirCommandOn(IZ)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "setAirCommandOn() : failed to update setting value ."

    .line 4
    const-string v1, "KioskModeService"

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v2

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p0

    .line 16
    const-string v4, "air_button_onoff"

    .line 18
    invoke-static {p0, v4, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    :try_start_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    const/4 p0, 0x0

    .line 36
    :goto_0
    if-nez p0, :cond_0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return p0

    .line 42
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p0
.end method

.method public final setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v5, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    move-object/from16 v2, p3

    .line 9
    new-instance v3, Landroid/content/Intent;

    .line 11
    const-string v4, "android.intent.action.MAIN"

    .line 13
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v6, "android.intent.category.HOME"

    .line 18
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v7, "android.intent.category.DEFAULT"

    .line 23
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string/jumbo v8, "com.sec.android.kiosk"

    .line 29
    const/4 v9, 0x1

    .line 30
    const/4 v10, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 33
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 36
    move-result-object v11

    .line 37
    const-wide/16 v12, 0x80

    .line 39
    invoke-interface {v11, v2, v12, v13, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 42
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v11, :cond_0

    .line 45
    move v11, v9

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    :cond_0
    move v11, v10

    .line 48
    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v12

    .line 52
    if-eqz v12, :cond_1

    .line 54
    if-eqz v11, :cond_1

    .line 56
    move v11, v9

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v11, v10

    .line 59
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    move-result-wide v12

    .line 63
    :try_start_1
    const-string/jumbo v14, "package"

    .line 66
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    move-result-object v14

    .line 70
    invoke-static {v14}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 73
    move-result-object v14

    .line 74
    invoke-interface {v14, v1, v5}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivitiesAsUserForMDM(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :catch_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw v0

    .line 86
    :cond_2
    move v11, v10

    .line 87
    :goto_2
    if-eqz v2, :cond_6

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    move-result-wide v12

    .line 93
    iget-object v1, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 95
    const/high16 v14, 0x10000

    .line 97
    invoke-virtual {v1, v3, v14, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 100
    move-result-object v1

    .line 101
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    .line 106
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    move v12, v10

    .line 110
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 113
    move-result v13

    .line 114
    if-ge v12, v13, :cond_4

    .line 116
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v13

    .line 120
    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 122
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 124
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 126
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v14

    .line 130
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 132
    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 134
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 136
    if-eqz v11, :cond_3

    .line 138
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v15

    .line 142
    if-eqz v15, :cond_3

    .line 144
    goto :goto_4

    .line 145
    :cond_3
    new-instance v15, Landroid/content/ComponentName;

    .line 147
    invoke-direct {v15, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 155
    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 159
    move-result v1

    .line 160
    new-array v1, v1, [Landroid/content/ComponentName;

    .line 162
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 166
    move-object v3, v1

    .line 167
    check-cast v3, [Landroid/content/ComponentName;

    .line 169
    invoke-virtual {v0, v5, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    if-nez v1, :cond_5

    .line 175
    return v10

    .line 176
    :cond_5
    new-instance v8, Landroid/content/ComponentName;

    .line 178
    invoke-direct {v8, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    .line 183
    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 195
    move-result-wide v6

    .line 196
    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 198
    const/high16 v2, 0x100000

    .line 200
    move-object v4, v8

    .line 201
    move/from16 v5, p1

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 206
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    :cond_6
    return v9
.end method

.method public final setKioskModeEnabledSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setKioskModeEnabledAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "KioskModeService"

    .line 23
    const-string/jumbo p2, "setKioskModeEnabledSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setMediator(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 7
    iget-object p1, p1, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 9
    check-cast p1, Ljava/util/HashSet;

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public final systemReady()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 23
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    if-eqz v2, :cond_1

    .line 47
    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 55
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 58
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    new-instance v7, Landroid/content/IntentFilter;

    .line 67
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 72
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    new-instance v6, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    .line 77
    const/4 v0, 0x3

    .line 78
    invoke-direct {v6, p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 81
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x2

    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    const-string v0, "KioskModeService"

    .line 92
    const-string v1, "Cannot register registerSwitchingUserReceiver"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    invoke-static {}, Landroid/view/KeyEvent;->getSamsungLastKeyCode()I

    .line 100
    move-result v0

    .line 101
    new-array v1, v0, [I

    .line 103
    const/4 v2, 0x0

    .line 104
    move v3, v2

    .line 105
    :goto_2
    if-ge v3, v0, :cond_3

    .line 107
    add-int/lit8 v4, v3, 0x1

    .line 109
    aput v4, v1, v3

    .line 111
    move v3, v4

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_6

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 121
    monitor-enter v1

    .line 122
    :goto_3
    :try_start_1
    array-length v3, v0

    .line 123
    if-ge v2, v3, :cond_5

    .line 125
    aget-boolean v3, v0, v2

    .line 127
    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 131
    add-int/lit8 v4, v2, 0x1

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v4

    .line 137
    check-cast v3, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_4

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_5

    .line 145
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    monitor-exit v1

    .line 149
    goto :goto_6

    .line 150
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p0

    .line 152
    :cond_6
    :goto_6
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 154
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()V

    .line 157
    return-void
.end method

.method public final unregisterPackageRemoveReceiver(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 18
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    sget-object p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    check-cast p0, Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p0, "KioskModeService"

    .line 49
    const-string p1, "There\'s no matched key"

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void
.end method

.method public final unregisterTerminationReceiver(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 18
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    sget-object p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    check-cast p0, Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p0, "KioskModeService"

    .line 49
    const-string p1, "There\'s no matched key"

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void
.end method

.method public final updateDB(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4
    const-string v2, "KIOSKMODE"

    .line 6
    const-string/jumbo v6, "kioskModeEnabled"

    .line 9
    const/4 v5, 0x0

    .line 10
    move v3, p1

    .line 11
    move/from16 v4, p4

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    iget-object v7, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    const-string v10, "KIOSKMODE"

    .line 20
    const-string/jumbo v11, "kioskModeDefaultPackage"

    .line 23
    const/4 v9, 0x0

    .line 24
    move v8, p1

    .line 25
    move-object/from16 v12, p3

    .line 27
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    const-string v3, "KIOSKMODE"

    .line 34
    const-string/jumbo v4, "kioskModeKioskPackage"

    .line 37
    const/4 v2, 0x0

    .line 38
    move v1, p1

    .line 39
    move-object v5, p2

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    return-void
.end method

.method public final wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result p0

    return p0
.end method

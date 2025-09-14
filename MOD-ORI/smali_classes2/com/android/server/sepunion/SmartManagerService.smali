.class public final Lcom/android/server/sepunion/SmartManagerService;
.super Lcom/samsung/android/sepunion/ISmartManagerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final ARGS:[Ljava/lang/String;

.field public static final IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

.field public static final PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

.field public static final PAYMENT_APP_URI:Landroid/net/Uri;

.field public static final PAYMENT_SWITCH_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SM_PROVIDER_URI:Landroid/net/Uri;


# instance fields
.field public final mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

.field public final mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mImportantAppSet:Ljava/util/HashSet;

.field public final mImportantComponentList:Ljava/util/ArrayList;

.field public final mLocationChangeReceiver:Lcom/android/server/sepunion/SmartManagerService$4;

.field public final mPkgChangedIntentReceiver:Lcom/android/server/sepunion/SmartManagerService$2;

.field public final mPrivacyChangedListener:Lcom/android/server/sepunion/SmartManagerService$5;

.field public volatile mProtectedAppLoaded:Z

.field public final mProtectedAppSet:Ljava/util/HashSet;

.field public final mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

.field public final mUserActionReceiver:Lcom/android/server/sepunion/SmartManagerService$1;


# direct methods
.method public static -$$Nest$monPermissionChanged(Lcom/android/server/sepunion/SmartManagerService;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "permission_type"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 29
    .line 30
    const-wide/16 v1, 0x64

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SmartManagerService;

    .line 2
    .line 3
    const-string/jumbo v0, "payment_safety_switch"

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    .line 11
    .line 12
    const-string v0, "content://com.samsung.android.sm/ProtectedApps"

    .line 13
    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_URI:Landroid/net/Uri;

    .line 19
    .line 20
    const-string v0, "content://com.samsung.android.sm.payment"

    .line 21
    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    .line 27
    .line 28
    const-string v0, "content://com.samsung.android.sm.payment/importantComponentList"

    .line 29
    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

    .line 35
    .line 36
    const-string/jumbo v0, "package_name"

    .line 37
    .line 38
    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PROJECTION:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "1"

    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->ARGS:[Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "content://com.samsung.android.sm.dcapi"

    .line 54
    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->SM_PROVIDER_URI:Landroid/net/Uri;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ISmartManagerService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppLoaded:Z

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$1;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mUserActionReceiver:Lcom/android/server/sepunion/SmartManagerService$1;

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$2;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$2;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mPkgChangedIntentReceiver:Lcom/android/server/sepunion/SmartManagerService$2;

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$3;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$3;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

    .line 69
    .line 70
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$4;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$4;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mLocationChangeReceiver:Lcom/android/server/sepunion/SmartManagerService$4;

    .line 76
    .line 77
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$5;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$5;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mPrivacyChangedListener:Lcom/android/server/sepunion/SmartManagerService$5;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const-string p1, "SmartManagerService"

    .line 87
    .line 88
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;-><init>(Lcom/android/server/sepunion/SmartManagerService;Landroid/os/Looper;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "##### SmartManagerService  #####"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, " Current Payment App:"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 15
    .line 16
    new-instance p3, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {p3, p2}, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final isProtectedApp(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadProtectedAppSet()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string p0, "SmartManagerService"

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " not target"

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final loadImportantAppComponentList()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/android/server/sepunion/SmartManagerService;->IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v3, Landroid/content/ComponentName;

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    throw p0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_2
    const-string v0, "SmartManagerService"

    .line 86
    .line 87
    const-string v1, "getImportantComponentList"

    .line 88
    .line 89
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_3
    return-void
.end method

.method public final loadProtectedAppSet()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppLoaded:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string/jumbo v2, "payment_safety_switch"

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string p0, "SmartManagerService"

    .line 29
    .line 30
    const-string v1, "Payment switch is off"

    .line 31
    .line 32
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_5

    .line 39
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    sget-object v5, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_URI:Landroid/net/Uri;

    .line 46
    .line 47
    sget-object v6, Lcom/android/server/sepunion/SmartManagerService;->PROJECTION:[Ljava/lang/String;

    .line 48
    .line 49
    const-string/jumbo v7, "mode=?"

    .line 50
    .line 51
    .line 52
    sget-object v8, Lcom/android/server/sepunion/SmartManagerService;->ARGS:[Ljava/lang/String;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-lez v2, :cond_1

    .line 72
    .line 73
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const-string v2, "SmartManagerService"

    .line 80
    .line 81
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-string p0, "SmartManagerService"

    .line 101
    .line 102
    const-string v2, "Protected App is empty"

    .line 103
    .line 104
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    .line 107
    :cond_2
    if-eqz v1, :cond_4

    .line 108
    .line 109
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catch_0
    move-exception p0

    .line 114
    goto :goto_3

    .line 115
    :goto_1
    if-eqz v1, :cond_3

    .line 116
    .line 117
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_2
    move-exception v1

    .line 122
    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    :goto_3
    :try_start_6
    const-string v1, "SmartManagerService"

    .line 127
    .line 128
    const-string v2, "SmartManager app doesn\'t support payment app list, please check"

    .line 129
    .line 130
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_4
    monitor-exit v0

    .line 134
    return-void

    .line 135
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "SmartManagerService"

    .line 6
    .line 7
    const-string/jumbo v0, "onBootPhase"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerWatcherForImportantComponentList()V
    .locals 3

    .line 1
    const-string v0, "SmartManagerService"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v2, "usagestats"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string p0, "IMPORTANT_COMPONENT_LIST is empty"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_0
    const-string/jumbo v1, "registerWatcherForImportantComponents cause exception"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

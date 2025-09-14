.class public final Lcom/android/server/sepunion/SemGoodCatchService;
.super Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

.field public mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

.field public mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

.field public mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

.field public mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

.field public final mGoodCatchClients:Ljava/util/HashMap;

.field public mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

.field public mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

.field public final mIntentReceiver:Lcom/android/server/sepunion/SemGoodCatchService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SemGoodCatchService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v2, Landroid/content/IntentFilter;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    .line 41
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 47
    .line 48
    .line 49
    monitor-enter p0

    .line 50
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    :try_start_2
    const-string p1, "SemGoodCatchService"

    .line 61
    .line 62
    const-string v0, "Interrupted while waiting on vibrator handler."

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    const/4 p0, 0x0

    .line 70
    invoke-static {p1, p0, v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    throw p1
.end method

.method public static sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    int-to-long v2, p3

    .line 6
    add-long/2addr v0, v2

    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p1, p3, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "\nGoodCatchClient size = "

    .line 2
    .line 3
    const-string p3, "\n##### GoodCatchService #####\n##### (dumpsys sepunion goodcatch) #####\n"

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 9
    .line 10
    invoke-virtual {p3, p2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 19
    .line 20
    invoke-virtual {p3, p2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 21
    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 29
    .line 30
    invoke-virtual {p3, p2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 34
    .line 35
    monitor-enter p3

    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->dump(Ljava/io/PrintWriter;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    monitor-exit p3

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final getSelectedSettingKey()Ljava/util/List;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "SemGoodCatchService"

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "db_key"

    .line 14
    .line 15
    filled-new-array {v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v9, 0x0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    if-eqz v9, :cond_1

    .line 36
    .line 37
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 58
    .line 59
    .line 60
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-nez p0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "getSelectedSettingKey() error : "

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 83
    .line 84
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 85
    .line 86
    .line 87
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "getSelectedSettingKey() returns "

    .line 90
    .line 91
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, " keys."

    .line 102
    .line 103
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-object v1
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 8
    .line 9
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    const-string p0, "SemGoodCatchService"

    .line 27
    .line 28
    const-string p1, "PHASE_BOOT_COMPLETED, send com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
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

.method public final registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    const-string v0, "SemGoodCatchService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "registerListener, "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ", "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    new-instance v7, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 33
    .line 34
    move-object v1, v7

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, p3

    .line 39
    move-object v6, p4

    .line 40
    invoke-direct/range {v1 .. v6}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final update([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.class public abstract Lcom/android/server/am/AppStateBroadcaster;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final APP_TERM_REASONS:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static mContext:Landroid/content/Context;

.field public static volatile mIsBroadcastEnabled:Z

.field public static mLastFocusAppName:Ljava/lang/String;

.field public static mObjHandler:Landroid/os/Handler;

.field public static final sKnownRunningPackages:Ljava/util/HashMap;

.field public static final sPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v0, "com.tmobile.pr.mytmobile"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "com.sprint.ms.smf.services"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "com.tmobile.echolocate"

    .line 30
    .line 31
    .line 32
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "ANR"

    .line 39
    .line 40
    const-string v1, "CRASH"

    .line 41
    .line 42
    const-string v2, "NORMAL_SYSTEM_HALT"

    .line 43
    .line 44
    const-string v3, "USER_HALTED"

    .line 45
    .line 46
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    .line 58
    .line 59
    return-void
.end method

.method public static broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "AppStateBroadcaster"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v2, " packageName : "

    .line 8
    .line 9
    const-string v3, " appState : "

    .line 10
    .line 11
    invoke-static {v2, p0, v3, p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string v2, "EXITED"

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    aget-object v3, v0, v2

    .line 35
    .line 36
    const-string/jumbo v4, "diagandroid.app.ApplicationState"

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v3}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "ApplicationPackageName"

    .line 44
    .line 45
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const-string v4, "ApplicationState"

    .line 53
    .line 54
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    const-string/jumbo v6, "oemIntentTimestamp"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    sget-object v4, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 70
    .line 71
    const-string/jumbo v6, "diagandroid.app.receiveDetailedApplicationState"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-eqz v1, :cond_2

    .line 81
    .line 82
    const-string p0, "Can\'t send broadcast mContext is null"

    .line 83
    .line 84
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public static enableIntentBroadcast(Landroid/content/Context;Lcom/android/internal/app/ProcessMap;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/util/SparseArray;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ge v0, v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 52
    .line 53
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public static logOriginFunction(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v1, v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, " called from "

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x2

    .line 25
    aget-object v0, v0, v1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "AppStateBroadcaster"

    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public static sendApplicationFocusLoss(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "sendApplicationFocusLoss("

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ")"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-boolean v1, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    const-string v1, "FOCUS_LOSS"

    .line 47
    .line 48
    invoke-static {p0, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "AppStateBroadcaster"

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string/jumbo v2, "sendApplicationFocusLoss sent APP_STATE_FOCUS_LOSS for "

    .line 56
    .line 57
    .line 58
    invoke-static {v2, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v0, "packageName is same as mLastFocusAppName: "

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "; setting it to null"

    .line 82
    .line 83
    invoke-static {p0, v0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    const/4 p0, 0x0

    .line 87
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method public static sendApplicationStart(ILjava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const-string/jumbo v0, "packageRunning for "

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-boolean v3, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string v4, "AppStateBroadcaster"

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " with processId "

    .line 36
    .line 37
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " packageName "

    .line 44
    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/server/am/ApplicationState;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    new-instance v0, Lcom/android/server/am/ApplicationState;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    iput v4, v0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 76
    .line 77
    new-instance v4, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v4, v0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    :cond_1
    iget-object v0, v0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    const-string p0, "START"

    .line 101
    .line 102
    invoke-static {p1, p0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    const-string p0, "AppStateBroadcaster"

    .line 108
    .line 109
    const-string/jumbo v0, "packageRunning sent APP_STATE_START for "

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p0

    .line 122
    :cond_2
    :goto_2
    return-void
.end method

.method public static stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    return-object p0
.end method

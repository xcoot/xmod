.class public final Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field public static final DEBUG:Z

.field public static final SIMPLE_NAME:Ljava/lang/String;


# instance fields
.field public mBootComplete:Z

.field public mConnected:Z

.field public final mContext:Lcom/android/server/notification/EventConditionProvider;

.field public final mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

.field public mNextAlarmTime:J

.field public final mReceiver:Lcom/android/server/notification/EventConditionProvider$1;

.field public mRegistered:Z

.field public final mSubscriptions:Landroid/util/ArraySet;

.field public final mTrackerCallback:Lcom/android/server/notification/EventConditionProvider$2;

.field public final mTrackers:Landroid/util/SparseArray;

.field public final mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ConditionProviders"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class v1, Lcom/android/server/notification/EventConditionProvider;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "android"

    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 24
    .line 25
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    .line 26
    .line 27
    const-string v0, "EventConditionProvider"

    .line 28
    .line 29
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, ".EVALUATE"

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 5
    .line 6
    new-instance v0, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 12
    .line 13
    new-instance v0, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/EventConditionProvider$2;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$1;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Lcom/android/server/notification/EventConditionProvider$1;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$4;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    .line 41
    .line 42
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 43
    .line 44
    const-string v1, "ConditionProviders.ECP"

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "new "

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 57
    .line 58
    const-string v3, "()"

    .line 59
    .line 60
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    .line 83
    .line 84
    return-void
.end method

.method public static createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;
    .locals 9

    .line 1
    new-instance v8, Landroid/service/notification/Condition;

    .line 2
    .line 3
    const-string v3, "..."

    .line 4
    .line 5
    const-string v4, "..."

    .line 6
    .line 7
    const-string v2, "..."

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v7, 0x2

    .line 11
    move-object v0, v8

    .line 12
    move-object v1, p1

    .line 13
    move v6, p0

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 15
    .line 16
    .line 17
    return-object v8
.end method


# virtual methods
.method public final asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Landroid/service/notification/IConditionProvider;

    .line 7
    .line 8
    return-object p0
.end method

.method public final attachBase(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ":"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "      mConnected="

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "      mRegistered="

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "      mBootComplete="

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/notification/SystemConditionProviderService;->dumpUpcomingTime(Ljava/io/PrintWriter;JJ)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    const-string v1, "      mSubscriptions="

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/net/Uri;

    .line 80
    .line 81
    const-string v3, "        "

    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const-string v0, "      mTrackers="

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-ge v0, v1, :cond_1

    .line 106
    .line 107
    const-string v1, "        user="

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/android/server/notification/CalendarTracker;

    .line 128
    .line 129
    const-string v2, "          "

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v3, "mCallback="

    .line 138
    .line 139
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v1, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    .line 143
    .line 144
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v3, "mRegistered="

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v3, v1, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 157
    .line 158
    const-string/jumbo v4, "u="

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v2, v4, v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_1
    return-void

    .line 177
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw p0
.end method

.method public final evaluateSubscriptions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isScheduleEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isValidConditionId(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onBootComplete()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConditionProviders.ECP"

    .line 6
    .line 7
    const-string/jumbo v1, "onBootComplete"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 20
    .line 21
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 22
    .line 23
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 30
    .line 31
    new-instance v2, Lcom/android/server/notification/EventConditionProvider$1;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onConnected()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConditionProviders.ECP"

    .line 6
    .line 7
    const-string/jumbo v1, "onConnected"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 15
    .line 16
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "ConditionProviders.ECP"

    .line 9
    .line 10
    const-string/jumbo v1, "onDestroy"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 18
    .line 19
    return-void
.end method

.method public final onScheduleEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "onScheduleEnabled : "

    .line 6
    .line 7
    .line 8
    const-string v0, "ConditionProviders.ECP"

    .line 9
    .line 10
    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onSubscribe(Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConditionProviders.ECP"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onSubscribe "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {v0, p1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(ILandroid/net/Uri;)Landroid/service/notification/Condition;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 52
    .line 53
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

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final onUnsubscribe(Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConditionProviders.ECP"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onUnsubscribe "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final reloadTrackers()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "ConditionProviders.ECP"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "reloadTrackers"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    move v2, v0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/notification/CalendarTracker;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/EventConditionProvider$2;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/os/UserHandle;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6, v0, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-object v5, v4

    .line 90
    :goto_2
    if-nez v5, :cond_3

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v6, "Unable to create context for user "

    .line 95
    .line 96
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    new-instance v7, Lcom/android/server/notification/CalendarTracker;

    .line 121
    .line 122
    iget-object v8, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 123
    .line 124
    invoke-direct {v7, v8, v5}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final rescheduleAlarm(JJ)V
    .locals 6

    .line 1
    iput-wide p3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 4
    .line 5
    const-string v1, "alarm"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/AlarmManager;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Lcom/android/server/notification/EventConditionProvider;

    .line 14
    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x10000000

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "android"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string/jumbo v2, "time"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/high16 v2, 0xc000000

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    cmp-long v1, p3, v1

    .line 54
    .line 55
    const-string v2, "ConditionProviders.ECP"

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    cmp-long v3, p3, p1

    .line 60
    .line 61
    if-gez v3, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sub-long v3, p3, p1

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "Scheduling evaluate for "

    .line 91
    .line 92
    const-string v4, ", in "

    .line 93
    .line 94
    const-string v5, ", now="

    .line 95
    .line 96
    invoke-static {p2, v1, v4, v3, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2, p1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    const/4 p1, 0x0

    .line 104
    invoke-virtual {v0, p1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 109
    .line 110
    if-eqz p0, :cond_4

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    const-string/jumbo p0, "no time specified"

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string/jumbo p0, "specified time in the past"

    .line 119
    .line 120
    .line 121
    :goto_1
    const-string p1, "Not scheduling evaluate: "

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_4
    return-void
.end method

.method public final setRegistered(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string/jumbo v0, "setRegistered "

    .line 11
    .line 12
    .line 13
    const-string v1, "ConditionProviders.ECP"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const-string p1, "android.intent.action.TIME_SET"

    .line 23
    .line 24
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Lcom/android/server/notification/EventConditionProvider$1;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-virtual {p0, v0, p1, v1}, Landroid/service/notification/ConditionProviderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Lcom/android/server/notification/EventConditionProvider$1;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.class public final Lcom/android/server/notification/CountdownConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field public static final DEBUG:Z


# instance fields
.field public mConnected:Z

.field public final mContext:Lcom/android/server/notification/CountdownConditionProvider;

.field public mIsAlarm:Z

.field public final mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

.field public mTime:J


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
    sput-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class v1, Lcom/android/server/notification/CountdownConditionProvider;

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
    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 24
    .line 25
    const-class v0, Lcom/android/server/notification/CountdownConditionProvider;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 12
    .line 13
    sget-boolean p0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "ConditionProviders.CCP"

    .line 18
    .line 19
    const-string/jumbo v0, "new CountdownConditionProvider()"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
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
    .locals 2

    .line 1
    const-string v0, "    CountdownConditionProvider:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "      mConnected="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    .line 15
    .line 16
    const-string v0, "      mTime="

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

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
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onBootComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onConnected()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConditionProviders.CCP"

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
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 16
    .line 17
    new-instance v2, Landroid/content/IntentFilter;

    .line 18
    .line 19
    sget-object v3, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    .line 30
    .line 31
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "ConditionProviders.CCP"

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
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    .line 29
    .line 30
    return-void
.end method

.method public final onScheduleEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "onScheduleEnabled : "

    .line 6
    .line 7
    .line 8
    const-string v0, "ConditionProviders.CCP"

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 6
    .line 7
    const-string v3, "ConditionProviders.CCP"

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v5, "onSubscribe "

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iput-wide v4, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iput-boolean v4, v0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    .line 40
    .line 41
    iget-object v4, v0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    .line 42
    .line 43
    const-string v5, "alarm"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/app/AlarmManager;

    .line 50
    .line 51
    new-instance v5, Landroid/content/Intent;

    .line 52
    .line 53
    sget-object v7, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v6, "android"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-string v6, "condition_id"

    .line 65
    .line 66
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/high16 v5, 0x40000000    # 2.0f

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v5, v0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    .line 77
    .line 78
    const/16 v6, 0x64

    .line 79
    .line 80
    const/high16 v8, 0xc000000

    .line 81
    .line 82
    invoke-static {v5, v6, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 87
    .line 88
    .line 89
    iget-wide v5, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 90
    .line 91
    const-wide/16 v8, 0x0

    .line 92
    .line 93
    cmp-long v5, v5, v8

    .line 94
    .line 95
    if-lez v5, :cond_3

    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    iget-wide v8, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 102
    .line 103
    const-wide/32 v12, 0xea60

    .line 104
    .line 105
    .line 106
    move-wide v10, v5

    .line 107
    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    iget-wide v8, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 112
    .line 113
    cmp-long v11, v8, v5

    .line 114
    .line 115
    if-gtz v11, :cond_1

    .line 116
    .line 117
    iget-boolean v1, v0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    .line 118
    .line 119
    new-instance v4, Landroid/service/notification/Condition;

    .line 120
    .line 121
    invoke-static {v8, v9, v1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    const/16 v18, 0x1

    .line 128
    .line 129
    const-string v13, ""

    .line 130
    .line 131
    const-string v14, ""

    .line 132
    .line 133
    const-string v15, ""

    .line 134
    .line 135
    const/16 v16, 0x0

    .line 136
    .line 137
    move-object v11, v4

    .line 138
    invoke-direct/range {v11 .. v18}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v4}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    const/4 v11, 0x0

    .line 146
    invoke-virtual {v4, v11, v8, v9, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    if-eqz v2, :cond_3

    .line 150
    .line 151
    iget-wide v1, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 152
    .line 153
    cmp-long v4, v1, v5

    .line 154
    .line 155
    if-gtz v4, :cond_2

    .line 156
    .line 157
    const-string v4, "Not scheduling"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    const-string v4, "Scheduling"

    .line 161
    .line 162
    :goto_1
    invoke-static {v1, v2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    iget-wide v0, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 167
    .line 168
    sub-long/2addr v0, v5

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v5, v6}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    move-object v6, v4

    .line 178
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "%s %s for %s, %s in the future (%s), now=%s"

    .line 183
    .line 184
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_3
    return-void
.end method

.method public final onUnsubscribe(Landroid/net/Uri;)V
    .locals 0

    .line 1
    return-void
.end method

.class public final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DREAMING_DELIVERY_GROUP_KEY:Ljava/lang/String;

.field public static final DREAMING_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String;


# instance fields
.field public final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field public final mCloseNotificationShadeOptions:Landroid/os/Bundle;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field public final mDreamingStartedIntent:Landroid/content/Intent;

.field public final mDreamingStartedStoppedOptions:Landroid/os/Bundle;

.field public final mDreamingStoppedIntent:Landroid/content/Intent;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/dreams/DreamManagerService$4;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPreviousDreams:Ljava/util/ArrayList;

.field public final mResetScreenTimeoutOnUnexpectedDreamExit:Z

.field public mSentStartBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_KEY:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamManagerService$4;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x50000000

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    .line 22
    .line 23
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 31
    .line 32
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 38
    .line 39
    .line 40
    sget-object v2, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v3, Lcom/android/server/dreams/DreamController;->DREAMING_DELIVERY_GROUP_KEY:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamManagerService$4;

    .line 72
    .line 73
    const-class p2, Landroid/app/ActivityTaskManager;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/app/ActivityTaskManager;

    .line 80
    .line 81
    const-class p2, Landroid/os/PowerManager;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Landroid/os/PowerManager;

    .line 88
    .line 89
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    .line 90
    .line 91
    new-instance p2, Landroid/content/Intent;

    .line 92
    .line 93
    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 94
    .line 95
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 99
    .line 100
    const-string/jumbo v0, "reason"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v3, "dream"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const/high16 v0, 0x10000000

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2, p3, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeOptions:Landroid/os/Bundle;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const p2, 0x111020e

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final stopDream(ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->stopPreviousDreams()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 8

    .line 1
    const-string v0, "DreamController"

    .line 2
    .line 3
    const-string v1, "(from \'"

    .line 4
    .line 5
    const-string v2, "Stopping dream: name="

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-wide/32 v3, 0x20000

    .line 11
    .line 12
    .line 13
    const-string/jumbo v5, "stopDream"

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-boolean p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_1
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    iput-boolean v6, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    :try_start_2
    iput-object p2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const-wide/16 v6, 0x1388

    .line 46
    .line 47
    invoke-virtual {v5, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :catch_0
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", isPreviewMode="

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean v2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", canDoze="

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-boolean v2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", userId="

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ", reason=\'"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p2, "\'"

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object p2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    .line 111
    .line 112
    if-nez p2, :cond_3

    .line 113
    .line 114
    const-string p2, ""

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, "\')"

    .line 128
    .line 129
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    iget-boolean p2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 149
    .line 150
    if-eqz p2, :cond_4

    .line 151
    .line 152
    const/16 p2, 0xdf

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    const/16 p2, 0xde

    .line 156
    .line 157
    :goto_1
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    iget-boolean p2, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 163
    .line 164
    if-eqz p2, :cond_5

    .line 165
    .line 166
    const-string/jumbo p2, "dozing_minutes"

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const-string/jumbo p2, "dreaming_minutes"

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    iget-wide v6, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    .line 178
    .line 179
    sub-long/2addr v1, v6

    .line 180
    const-wide/32 v6, 0xea60

    .line 181
    .line 182
    .line 183
    div-long/2addr v1, v6

    .line 184
    long-to-int v1, v1

    .line 185
    invoke-static {p1, p2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 189
    .line 190
    invoke-virtual {v5, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 194
    .line 195
    invoke-virtual {v5, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    .line 200
    const/4 p2, 0x0

    .line 201
    const/4 v1, 0x0

    .line 202
    if-eqz p1, :cond_6

    .line 203
    .line 204
    :try_start_4
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    .line 207
    :catch_1
    :try_start_5
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 208
    .line 209
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-interface {p1, p3, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    .line 215
    .line 216
    :catch_2
    :try_start_6
    iput-object v1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 217
    .line 218
    :cond_6
    iget-boolean p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 219
    .line 220
    if-eqz p1, :cond_7

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 231
    .line 232
    if-ne p3, p1, :cond_a

    .line 233
    .line 234
    iput-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 235
    .line 236
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 237
    .line 238
    if-eqz p1, :cond_8

    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 243
    .line 244
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 245
    .line 246
    iget-object v6, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    .line 247
    .line 248
    invoke-virtual {p1, v2, v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 252
    .line 253
    :cond_8
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 254
    .line 255
    if-eqz p1, :cond_9

    .line 256
    .line 257
    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mAppTask:Landroid/app/IAppTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 258
    .line 259
    if-eqz p1, :cond_9

    .line 260
    .line 261
    :try_start_7
    invoke-interface {p1}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :catch_3
    :try_start_8
    const-string p1, "Unable to stop dream activity."

    .line 266
    .line 267
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamManagerService$4;

    .line 271
    .line 272
    iget-object p1, p3, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 273
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService$4;->onDreamStopped(Landroid/os/Binder;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 275
    .line 276
    .line 277
    :cond_a
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    .line 283
    .line 284
    throw p0
.end method

.method public final stopPreviousDreams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const-string/jumbo v3, "stop previous dream"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$2:Landroid/app/PendingIntent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$2:Landroid/app/PendingIntent;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v12, "Could not deliver pendingIntent: "

    .line 15
    .line 16
    const-string v4, "android.app.wearable.WearableSensingDataRequestBundleKey"

    .line 17
    .line 18
    const-class v5, Landroid/app/wearable/WearableSensingDataRequest;

    .line 19
    .line 20
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    move-object v13, v4

    .line 25
    check-cast v13, Landroid/app/wearable/WearableSensingDataRequest;

    .line 26
    .line 27
    const-string v14, "WearableSensingManagerService"

    .line 28
    .line 29
    if-nez v13, :cond_0

    .line 30
    .line 31
    const-string v0, "Received data request callback without a request."

    .line 32
    .line 33
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    const-string v4, "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"

    .line 39
    .line 40
    const-class v5, Landroid/os/RemoteCallback;

    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/os/RemoteCallback;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const-string v0, "Received data request callback without a status callback."

    .line 51
    .line 52
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v13}, Landroid/app/wearable/WearableSensingDataRequest;->getDataSize()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-le v4, v5, :cond_2

    .line 66
    .line 67
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v2, "WearableSensingDataRequest size exceeds the maximum allowed size of %s bytes. Dropping the request."

    .line 80
    .line 81
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    invoke-static {v0, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object v4, v2, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 94
    .line 95
    const-string v5, "android"

    .line 96
    .line 97
    invoke-virtual {v4, v3, v5, v14}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    .line 103
    const-string v0, "Data request exceeded rate limit. Dropping the request."

    .line 104
    .line 105
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    invoke-static {v0, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    new-instance v7, Landroid/content/Intent;

    .line 114
    .line 115
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v4, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    .line 119
    .line 120
    invoke-virtual {v7, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const/4 v15, 0x2

    .line 128
    invoke-virtual {v4, v15}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 129
    .line 130
    .line 131
    iget-object v6, v2, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 132
    .line 133
    invoke-virtual {v6, v3, v5, v14}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 137
    .line 138
    .line 139
    move-result-wide v16

    .line 140
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    move-object v4, v0

    .line 153
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-static {v2, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "Sending data request to %s: %s"

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v13}, Landroid/app/wearable/WearableSensingDataRequest;->toExpandedString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    .line 181
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto :goto_2

    .line 187
    :catch_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    invoke-static {v15, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :goto_1
    return-void

    .line 207
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

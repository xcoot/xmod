.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    .line 8
    return-void
.end method


# virtual methods
.method public final deliverOnFlushComplete(I)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 13
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    .line 15
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 17
    new-instance p0, Landroid/content/Intent;

    .line 19
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-string/jumbo v1, "flushComplete"

    .line 25
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 32
    move-result-object v9

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public final deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 8
    move-result-object v8

    .line 9
    const/4 v9, 0x1

    .line 10
    invoke-virtual {v8, v9}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 13
    const/4 v10, 0x0

    .line 14
    invoke-virtual {v8, v10}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 17
    const-string v7, ""

    .line 19
    const-wide/16 v3, 0x2710

    .line 21
    const/4 v5, 0x0

    .line 22
    const/16 v6, 0x138

    .line 24
    move-object v2, v8

    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 28
    new-instance v2, Landroid/content/Intent;

    .line 30
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string/jumbo v3, "location"

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    move-result-object v14

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->size()I

    .line 47
    move-result v2

    .line 48
    if-le v2, v9, :cond_0

    .line 50
    const-string/jumbo v2, "locations"

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    .line 56
    move-result-object v3

    .line 57
    new-array v4, v10, [Landroid/location/Location;

    .line 59
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, [Landroid/os/Parcelable;

    .line 65
    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 69
    if-eqz v1, :cond_1

    .line 71
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    .line 73
    const/4 v4, 0x6

    .line 74
    invoke-direct {v3, v4, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object v3, v2

    .line 79
    :goto_0
    iget-object v11, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    .line 81
    iget-object v12, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 86
    move-result-object v18

    .line 87
    if-eqz v3, :cond_2

    .line 89
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;

    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v3, v0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    .line 96
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;

    .line 98
    invoke-direct {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;)V

    .line 101
    move-object v15, v1

    .line 102
    move-object v1, v0

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object v1, v2

    .line 105
    move-object v15, v1

    .line 106
    :goto_1
    const/4 v13, 0x0

    .line 107
    const/16 v16, 0x0

    .line 109
    const/16 v17, 0x0

    .line 111
    invoke-virtual/range {v11 .. v18}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    if-eqz v1, :cond_4

    .line 116
    monitor-enter v1

    .line 117
    :try_start_0
    iput-boolean v9, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    .line 119
    iget-boolean v0, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    .line 121
    if-eqz v0, :cond_3

    .line 123
    iget-object v0, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    .line 125
    if-eqz v0, :cond_3

    .line 127
    iput-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    .line 129
    move-object v2, v0

    .line 130
    goto :goto_2

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v2, :cond_4

    .line 136
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 139
    goto :goto_4

    .line 140
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    throw v0

    .line 142
    :cond_4
    :goto_4
    return-void
.end method

.method public final deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 13
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    .line 15
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    .line 17
    new-instance p0, Landroid/content/Intent;

    .line 19
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-string/jumbo v0, "providerEnabled"

    .line 25
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 32
    move-result-object v8

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 6
    iput-wide p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;->f$1:J

    .line 8
    iput-object p4, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;->f$2:Landroid/media/RoutingSessionInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 3
    iget-wide v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;->f$1:J

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;->f$2:Landroid/media/RoutingSessionInfo;

    .line 7
    iget-object v3, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 9
    iget-object v4, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 11
    if-eq v4, v0, :cond_0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    if-nez p0, :cond_1

    .line 16
    const-string p0, "MR2ProviderSvcProxy"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, "onSessionCreated: Ignoring null session sent from "

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v1, v3, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-virtual {v3, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    iget-object v4, v3, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter v4

    .line 50
    :try_start_0
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {v3, v1, v2, v5, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->createSessionWithPopulatedTransferInitiationDataLocked(JLandroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 60
    move-result-object p0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    :goto_0
    iget-object v5, v3, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 66
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 69
    move-result-object v5

    .line 70
    new-instance v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda0;

    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-direct {v6, v0, v7}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 76
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_4

    .line 82
    iget-object v5, v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 84
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 87
    move-result-object v5

    .line 88
    new-instance v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda0;

    .line 90
    const/4 v7, 0x1

    .line 91
    invoke-direct {v6, v0, v7}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, v3, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 103
    check-cast v0, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, v3, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 111
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 113
    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    :goto_1
    :try_start_1
    const-string p0, "MR2ProviderSvcProxy"

    .line 119
    const-string/jumbo v0, "onSessionCreated: Duplicate session already exists. Ignoring."

    .line 122
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-exit v4

    .line 126
    :goto_2
    return-void

    .line 127
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0
.end method

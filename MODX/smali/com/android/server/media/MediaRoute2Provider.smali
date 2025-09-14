.class public abstract Lcom/android/server/media/MediaRoute2Provider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public mIsSystemRouteProvider:Z

.field public final mLock:Ljava/lang/Object;

.field public volatile mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field public final mSessionInfos:Ljava/util/List;

.field public final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 18
    const-string v0, "Component name must not be null."

    .line 20
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Landroid/content/ComponentName;

    .line 26
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract deselectRoute(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getDebugString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p2, "  "

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 38
    if-nez v0, :cond_0

    .line 40
    const-string v0, "<provider info not received, yet>"

    .line 42
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 48
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 58
    const-string v0, "<provider info has no routes>"

    .line 60
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 66
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 86
    const-string v2, "%s%s | %s\n"

    .line 88
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 95
    move-result-object v1

    .line 96
    filled-new-array {p2, v3, v1}, [Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    const-string v0, "Active routing sessions:"

    .line 106
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 111
    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 114
    check-cast v1, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string p2, "  <no active routing sessions>"

    .line 132
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    goto :goto_3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_4

    .line 145
    :cond_3
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 147
    check-cast p0, Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object p0

    .line 153
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_4

    .line 159
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, "  "

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v1, p1, v2}, Landroid/media/RoutingSessionInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    :goto_3
    monitor-exit v0

    .line 187
    return-void

    .line 188
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p0
.end method

.method public abstract getDebugString()Ljava/lang/String;
.end method

.method public final getSessionInfos()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final notifyProviderState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 16
    invoke-static {v1, v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public abstract prepareReleaseSession(Ljava/lang/String;)V
.end method

.method public abstract releaseSession(JLjava/lang/String;)V
.end method

.method public abstract requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V
.end method

.method public abstract selectRoute(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public final setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 9
    invoke-direct {v0, p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 12
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->setUniqueId(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 23
    move-result-object p1

    .line 24
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->setSystemRouteProvider(Z)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 36
    :goto_0
    return-void
.end method

.method public abstract setRouteVolume(ILjava/lang/String;J)V
.end method

.method public abstract setSessionVolume(ILjava/lang/String;J)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getDebugString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V
.end method

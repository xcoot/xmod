.class public final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;
.super Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public final notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "providerInfo must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 27
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 33
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getSuitabilityStatus()I

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x2

    .line 38
    if-eq v2, v3, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->isSystemRouteType()Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "Only the system is allowed to publish routes with system route types. Disallowed route: "

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "Only the system is allowed to set not suitable for transfer status. Disallowed route: "

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "Only the system is allowed to publish system routes. Disallowed route: "

    .line 93
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    :cond_3
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 109
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 115
    if-eqz p0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 119
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_4
    return-void
.end method

.method public final notifyRequestFailed(JI)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 13
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public final notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 13
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;

    .line 17
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public final notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 13
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;

    .line 17
    invoke-direct {v1, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public final notifySessionsUpdated(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 13
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_0
    return-void
.end method

.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 10
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 12
    iget-object v1, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 14
    if-ne v1, p0, :cond_0

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ": Service connection died"

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string v1, "RemoteDisplayProvider"

    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Ljava/lang/Object;

    .line 44
    check-cast p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 46
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 48
    iget-object v1, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 50
    if-ne v1, p0, :cond_2

    .line 52
    const/4 p0, 0x1

    .line 53
    iput-boolean p0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 55
    iget p0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 57
    const-string v2, "RemoteDisplayProvider"

    .line 59
    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    :try_start_0
    iget-object v1, v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 66
    invoke-interface {v1, p0}, Landroid/media/IRemoteDisplayProvider;->setDiscoveryMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    const-string v1, "Failed to deliver request to set discovery mode."

    .line 73
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 78
    if-eqz p0, :cond_2

    .line 80
    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    :try_start_1
    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 87
    invoke-interface {v0, p0}, Landroid/media/IRemoteDisplayProvider;->connect(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception p0

    .line 92
    const-string v0, "Failed to deliver request to connect to display."

    .line 94
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_2
    :goto_1
    return-void

    .line 98
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Ljava/lang/Object;

    .line 100
    check-cast p0, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 102
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 105
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 107
    if-eqz v1, :cond_5

    .line 109
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 111
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 113
    iget-object v3, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v3

    .line 119
    :goto_2
    if-ge v0, v3, :cond_4

    .line 121
    iget-object v4, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 129
    iget-object v4, v4, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 131
    if-ne v4, p0, :cond_3

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    const/4 v0, -0x1

    .line 138
    :goto_3
    if-ltz v0, :cond_5

    .line 140
    iget-object p0, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 151
    move-result p0

    .line 152
    if-eqz p0, :cond_5

    .line 154
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 157
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 160
    :cond_5
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

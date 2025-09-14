.class public final Lcom/android/server/power/hint/HintManagerService$ChannelItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mConfig:Landroid/hardware/power/ChannelConfig;

.field public mLinked:Z

.field public final mTgid:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final closeChannel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Landroid/hardware/power/IPower;->closeSessionChannel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Failed to close session channel!"

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final openChannel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Client already dead"

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Landroid/hardware/power/IPower;->getSessionChannel(II)Landroid/hardware/power/ChannelConfig;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, v2, p0}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "Failed to create session channel!"

    .line 64
    .line 65
    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_1
    :goto_1
    return-void
.end method

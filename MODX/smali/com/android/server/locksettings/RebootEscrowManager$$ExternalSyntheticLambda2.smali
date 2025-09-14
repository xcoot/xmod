.class public final synthetic Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Handler;Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 5
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    .line 7
    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 9
    iput-object p5, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 8
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    .line 10
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 21
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    .line 23
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 25
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    .line 27
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 29
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x0

    .line 34
    if-nez v4, :cond_0

    .line 36
    invoke-virtual {v0, v1, v5, v2, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v4, Lcom/android/server/locksettings/RebootEscrowManager$1;

    .line 42
    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/server/locksettings/RebootEscrowManager$1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    .line 45
    iput-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Lcom/android/server/locksettings/RebootEscrowManager$1;

    .line 47
    iget-object v6, v3, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 49
    const-class v7, Landroid/net/ConnectivityManager;

    .line 51
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 57
    if-nez v6, :cond_1

    .line 59
    invoke-virtual {v0, v1, v5, v2, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    .line 65
    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 68
    const/16 v0, 0xc

    .line 70
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    .line 81
    move-result v0

    .line 82
    invoke-virtual {v6, p0, v4, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 85
    :goto_0
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

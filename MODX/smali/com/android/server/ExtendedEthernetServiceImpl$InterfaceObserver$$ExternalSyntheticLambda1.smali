.class public final synthetic Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 10
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "eth_device_conn"

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    const-string v4, "ETH_DEVICE_CONNECTED is : "

    .line 28
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {v0, v1, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 50
    return-void

    .line 51
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 53
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    move-result-object v0

    .line 59
    const-string/jumbo v1, "eth_device_conn"

    .line 62
    const/4 v2, 0x2

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "ETH_DEVICE_CONNECTED is : "

    .line 71
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v0, v1, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 77
    move-result v1

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    const-string v2, "ExtendedEthernetServiceImpl"

    .line 87
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "ETHERNET_TETHERING_MODE"

    .line 92
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    const-string/jumbo v1, "on"

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 107
    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "onChange() call requestTetheredInterface()"

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 117
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 119
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 124
    iget-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetCallback:Lcom/android/server/ExtendedEthernetServiceImpl$1;

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    .line 132
    :cond_0
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

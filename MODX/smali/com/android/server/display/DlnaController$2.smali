.class public final Lcom/android/server/display/DlnaController$2;
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
    iput p1, p0, Lcom/android/server/display/DlnaController$2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/DlnaController$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 10
    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 12
    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 14
    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 23
    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 25
    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 27
    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 29
    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDlnaDevice;->setConnectionState(I)V

    .line 32
    iget-object v0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 34
    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 36
    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v2, Lcom/android/server/display/DlnaController$2;

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, v3, v0}, Lcom/android/server/display/DlnaController$2;-><init>(ILjava/lang/Object;)V

    .line 47
    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 54
    check-cast v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 56
    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 58
    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 60
    if-eqz v0, :cond_1

    .line 62
    const-string v2, "DlnaController"

    .line 64
    const-string/jumbo v3, "unlinkToDeath"

    .line 67
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    .line 72
    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 75
    iget-object p0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 77
    check-cast p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 79
    iget-object p0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 81
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 84
    :cond_1
    return-void

    .line 85
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 90
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 95
    check-cast v1, Lcom/android/server/display/DlnaController;

    .line 97
    iget-object v1, v1, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 99
    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    .line 102
    move-result v1

    .line 103
    const-string/jumbo v2, "status"

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string/jumbo v2, "state"

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 117
    check-cast v2, Lcom/android/server/display/DlnaController;

    .line 119
    iget-object v2, v2, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 121
    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    .line 124
    move-result v2

    .line 125
    const-string/jumbo v3, "player_type"

    .line 128
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v3, "sendStatusChangedBroadcast::SEM_ACTION_DLNA_STATUS_CHANGED state : "

    .line 136
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    const-string v2, "DlnaController"

    .line 148
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Ljava/lang/Object;

    .line 153
    check-cast p0, Lcom/android/server/display/DlnaController;

    .line 155
    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    .line 157
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 159
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 162
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

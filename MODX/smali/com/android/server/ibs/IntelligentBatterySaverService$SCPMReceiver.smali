.class public final Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->$r8$classId:I

    .line 3
    packed-switch p2, :pswitch_data_0

    .line 6
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    const-string/jumbo p2, "com.samsung.android.scpm.policy.UPDATE.ibs"

    .line 14
    const-string/jumbo v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 17
    invoke-static {p2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 20
    move-result-object p2

    .line 21
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 27
    return-void

    .line 28
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 35
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 38
    move-result-object p2

    .line 39
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "ACTION_BOOT_COMPLETED broadcast received: "

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string p2, "IntelligentBatterySaverService"

    .line 38
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 43
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 45
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->registerScpm()V

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 52
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 54
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 66
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 68
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 70
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    :cond_1
    return-void

    .line 75
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    const-string/jumbo p2, "com.samsung.android.scpm.policy.UPDATE.ibs"

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p2

    .line 86
    const-string v0, "IntelligentBatterySaverService"

    .line 88
    if-eqz p2, :cond_2

    .line 90
    const-string p1, "SCPM update broadcast received!"

    .line 92
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 97
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 99
    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const-string/jumbo p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_3

    .line 113
    const-string p1, "SCPM clear broadcast received, policy updated 1 min later!"

    .line 115
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 120
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 122
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;

    .line 124
    invoke-direct {p2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;)V

    .line 127
    const-wide/32 v0, 0xea60

    .line 130
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_3
    :goto_0
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/android/server/dreams/DreamManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mIsDocked:Z

    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :pswitch_0
    invoke-static {}, Lcom/android/server/dreams/Flags;->useBatteryChangedBroadcast()Z

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 39
    .line 40
    const/16 p2, 0xf

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

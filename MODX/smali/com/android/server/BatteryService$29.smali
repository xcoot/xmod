.class public final Lcom/android/server/BatteryService$29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$batteryDeterioration:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/BatteryService$29;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    .line 5
    iput p2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    .line 7
    iput-object p3, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "BatteryService"

    .line 4
    const-string v2, "Sending ACTION_POPUP_BATTERY_DETERIORATION : "

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p0, Lcom/android/server/BatteryService$29;->$r8$classId:I

    .line 9
    packed-switch v4, :pswitch_data_0

    .line 12
    iget-object v4, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    .line 14
    iput-boolean v3, v4, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p0, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    .line 37
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 40
    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 43
    return-void

    .line 44
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    .line 46
    iput-boolean v3, v4, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget v2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 64
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    .line 69
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 72
    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

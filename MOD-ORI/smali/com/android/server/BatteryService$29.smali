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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
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

    .line 3
    .line 4
    const-string v2, "Sending ACTION_POPUP_BATTERY_DETERIORATION : "

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p0, Lcom/android/server/BatteryService$29;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    .line 13
    .line 14
    iput-boolean v3, v4, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    .line 45
    .line 46
    iput-boolean v3, v4, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    .line 68
    .line 69
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 73
    .line 74
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

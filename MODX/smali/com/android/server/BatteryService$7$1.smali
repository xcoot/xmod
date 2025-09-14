.class public final Lcom/android/server/BatteryService$7$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/BatteryService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/BatteryService$7$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "BatteryService"

    .line 3
    iget v1, p0, Lcom/android/server/BatteryService$7$1;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 10
    const-string/jumbo v1, "notify the misc event"

    .line 13
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 18
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    .line 25
    const-wide/16 v1, 0x2000

    .line 27
    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 32
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 40
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    const-string v1, "/sys/class/sec/switch/hiccup"

    .line 47
    const-string v2, "DISABLE"

    .line 49
    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "success to disable hiccup"

    .line 60
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "fail to disable hiccup"

    .line 69
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 74
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

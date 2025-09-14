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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "BatteryService"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/BatteryService$7$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v1, "notify the misc event"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    .line 24
    .line 25
    const-wide/16 v1, 0x2000

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string v1, "/sys/class/sec/switch/hiccup"

    .line 46
    .line 47
    const-string v2, "DISABLE"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo v1, "success to disable hiccup"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 65
    .line 66
    const-string/jumbo v1, "fail to disable hiccup"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 78
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

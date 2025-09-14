.class public final Lcom/android/server/BatteryService$9$1;
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
    iput p2, p0, Lcom/android/server/BatteryService$9$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "BatteryService"

    .line 4
    iget v2, p0, Lcom/android/server/BatteryService$9$1;->$r8$classId:I

    .line 6
    packed-switch v2, :pswitch_data_0

    .line 9
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 11
    const-string v2, "Dex Exit"

    .line 13
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p0, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 18
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 24
    return-void

    .line 25
    :pswitch_0
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 27
    const-string v2, "Dex Start"

    .line 29
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p0, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$2;

    .line 34
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 36
    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

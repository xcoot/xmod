.class public final synthetic Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const-string v0, "DeviceBatteryInfoService"

    .line 12
    .line 13
    const-string/jumbo v1, "screen off"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->displayStateChanged(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    const-string v0, "DeviceBatteryInfoService"

    .line 29
    .line 30
    const-string/jumbo v1, "screen on"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->displayStateChanged(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

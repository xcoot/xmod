.class public final Lcom/android/server/BatteryService$13;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    .line 1
    const-string v0, "1"

    .line 3
    const-string v1, "SWITCH_STATE"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    .line 15
    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    .line 20
    iget v1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 22
    if-eq v1, p1, :cond_0

    .line 24
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

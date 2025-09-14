.class public final Lcom/android/server/vibrator/VibrationSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$2;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$2;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "plugged"

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p2

    .line 17
    const/4 v1, 0x4

    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 22
    .line 23
    monitor-exit p2

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorManagerService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelCurrentVibration()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

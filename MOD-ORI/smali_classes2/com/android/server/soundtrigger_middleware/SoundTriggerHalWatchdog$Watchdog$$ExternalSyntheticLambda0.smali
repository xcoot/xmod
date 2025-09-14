.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mException:Ljava/lang/Exception;

    .line 4
    .line 5
    const-string v1, "SoundTriggerHalWatchdog"

    .line 6
    .line 7
    const-string v2, "HAL deadline expired. Rebooting."

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->reboot()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

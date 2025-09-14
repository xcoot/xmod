.class final Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

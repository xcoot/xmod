.class final Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 4
    .line 5
    const/4 v0, -0x2

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

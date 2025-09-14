.class public final Lcom/android/server/vibrator/VibrationCustomSettings$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationCustomSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationCustomSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings$1;->this$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onFoldStateChanged isFolded = "

    .line 2
    .line 3
    .line 4
    const-string v1, "VibratorManagerService"

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings$1;->this$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings$1;->this$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFoldState(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 1

    .line 1
    const-string/jumbo p0, "onTableModeChanged. isTableMode="

    .line 2
    .line 3
    .line 4
    const-string v0, "VibratorManagerService"

    .line 5
    .line 6
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowManagerServiceExt;

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
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string p0, "W010"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 21
    .line 22
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/media/AudioManager;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 49
    .line 50
    if-eq v2, v1, :cond_2

    .line 51
    .line 52
    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 53
    .line 54
    const-string p0, "g_hw_display_rotation="

    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda6;

    .line 61
    .line 62
    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda6;-><init>(Landroid/media/AudioManager;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

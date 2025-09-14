.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0

    .line 26
    :pswitch_0
    check-cast p2, Landroid/os/IBinder;

    .line 27
    .line 28
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-interface {p0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eq p0, p2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 42
    .line 43
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 44
    .line 45
    :try_start_0
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 50
    .line 51
    invoke-interface {p2, v0, p0}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    .line 56
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iput-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 61
    .line 62
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v0, 0x1

    .line 71
    :cond_3
    :goto_1
    return v0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/android/server/notification/EasyMuteController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    const-string p1, "SemMotionRecognitionEvent.FLIP_SCREEN_DOWN"

    .line 11
    .line 12
    const-string v0, "EasyMuteController"

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_4

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :goto_2
    :try_start_1
    const-string v1, "Remote exception"

    .line 46
    .line 47
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_3
    return-void

    .line 58
    :goto_4
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 65
    .line 66
    .line 67
    :cond_3
    throw p1
.end method

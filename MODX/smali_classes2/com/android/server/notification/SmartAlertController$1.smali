.class public final Lcom/android/server/notification/SmartAlertController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x43

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "SmartAlertController"

    .line 11
    .line 12
    const-string v0, "SmartAlert - SemMotionRecognitionEvent.SMART_ALERT"

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 20
    .line 21
    const-wide/16 v0, 0x3e8

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, v1, p0}, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x1f4

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

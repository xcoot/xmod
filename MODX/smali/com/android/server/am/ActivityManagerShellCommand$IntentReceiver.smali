.class public final Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFinished:Z

.field public final mPw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    .line 9
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    const-string p1, "Broadcast completed: result="

    .line 3
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p3, :cond_0

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ", data=\""

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, "\""

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    :cond_0
    if-eqz p4, :cond_1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, ", extras: "

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    .line 58
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    .line 63
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 66
    monitor-enter p0

    .line 67
    const/4 p1, 0x1

    .line 68
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1
.end method

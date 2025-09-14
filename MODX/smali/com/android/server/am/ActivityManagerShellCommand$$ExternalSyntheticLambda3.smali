.class public final synthetic Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerShellCommand;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;[ILjava/io/PrintWriter;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$1:[I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$2:Ljava/io/PrintWriter;

    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 12
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 3
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$1:[I

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$2:Ljava/io/PrintWriter;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    aput v0, p2, v1

    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "Error: unable to start activity, "

    .line 33
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void
.end method

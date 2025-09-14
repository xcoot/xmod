.class public final synthetic Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$1:[I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$1:[I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;

    .line 18
    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;[ILjava/io/PrintWriter;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    .line 21
    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 24
    return-void
.end method

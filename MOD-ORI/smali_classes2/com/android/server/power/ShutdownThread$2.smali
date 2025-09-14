.class public final Lcom/android/server/power/ShutdownThread$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$2;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    .line 4
    .line 5
    new-instance p2, Lcom/android/server/power/ShutdownThread$2$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/server/power/ShutdownThread$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

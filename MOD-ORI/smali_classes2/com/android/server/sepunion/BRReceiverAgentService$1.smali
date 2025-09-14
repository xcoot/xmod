.class public final Lcom/android/server/sepunion/BRReceiverAgentService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/BRReceiverAgentService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Thread;

    .line 14
    .line 15
    new-instance p2, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

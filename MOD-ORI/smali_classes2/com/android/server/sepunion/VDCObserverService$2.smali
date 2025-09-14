.class public final Lcom/android/server/sepunion/VDCObserverService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/VDCObserverService$2;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

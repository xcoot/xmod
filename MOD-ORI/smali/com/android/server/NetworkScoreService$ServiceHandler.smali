.class public final Lcom/android/server/NetworkScoreService$ServiceHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ServiceHandler;->this$0:Lcom/android/server/NetworkScoreService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Unknown message: "

    .line 10
    .line 11
    const-string v0, "NetworkScoreService"

    .line 12
    .line 13
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean p1, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ServiceHandler;->this$0:Lcom/android/server/NetworkScoreService;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.class public final Lcom/samsung/android/knoxguard/service/KGEventQueue$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knoxguard/service/KGEventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knoxguard/service/KGEventQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue$1;->this$0:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    .line 1
    const-string v0, "KG.KGEventQueue"

    .line 2
    .line 3
    const-string v1, "@queueIdle called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue$1;->this$0:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->stopThread()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.class public final Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPriority:I

.field public final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    .line 2
    .line 3
    const-string p1, "AutoDisableThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

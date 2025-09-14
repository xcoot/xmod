.class public final Lcom/android/server/am/MARsHandler$MainThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 3
    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 5
    const-string v0, "MARsMainThread"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, -0x2

    .line 11
    iput v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 9
    iget-object p0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 11
    new-instance v0, Lcom/android/server/am/MARsHandler$MainHandler;

    .line 13
    invoke-direct {v0}, Lcom/android/server/am/MARsHandler$MainHandler;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 18
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 21
    return-void
.end method

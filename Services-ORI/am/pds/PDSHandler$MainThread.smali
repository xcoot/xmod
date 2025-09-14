.class public final Lcom/android/server/am/pds/PDSHandler$MainThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/pds/PDSHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/am/pds/PDSHandler$MainThread;->this$0:Lcom/android/server/am/pds/PDSHandler;

    .line 4
    .line 5
    const-string v0, "PDSMainThread"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, -0x2

    .line 11
    iput v0, p0, Lcom/android/server/am/pds/PDSHandler$MainThread;->mPriority:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/pds/PDSHandler$MainThread;->mPriority:I

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
    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler$MainThread;->this$0:Lcom/android/server/am/pds/PDSHandler;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/am/pds/PDSHandler$MainHandler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

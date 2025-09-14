.class public final Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 4
    .line 5
    const-string v0, "MARsDBManagerThread"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

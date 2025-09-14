.class public final Lcom/android/server/hdmi/HdmiControlShellCommand$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    .line 3
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, " done ("

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    if-eqz p1, :cond_6

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p1, v2, :cond_5

    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq p1, v2, :cond_4

    .line 27
    const/4 v2, 0x3

    .line 28
    if-eq p1, v2, :cond_3

    .line 30
    const/4 v2, 0x5

    .line 31
    if-eq p1, v2, :cond_2

    .line 33
    const/4 v2, 0x6

    .line 34
    if-eq p1, v2, :cond_1

    .line 36
    const/4 v2, 0x7

    .line 37
    if-eq p1, v2, :cond_0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v2, "Communication Failed"

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v2, "Incorrect mode"

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v2, "Exception"

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string v2, "Target not available"

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const-string v2, "Source not available"

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    const-string v2, "Timeout"

    .line 61
    goto :goto_0

    .line 62
    :cond_6
    const-string v2, "Success"

    .line 64
    :goto_0
    const-string v3, ")"

    .line 66
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    .line 71
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 76
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    .line 78
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 83
    return-void
.end method

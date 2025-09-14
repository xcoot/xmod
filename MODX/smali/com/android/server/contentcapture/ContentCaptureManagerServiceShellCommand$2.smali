.class public final Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    .line 3
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "sessions"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    .line 26
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 35
    return-void
.end method

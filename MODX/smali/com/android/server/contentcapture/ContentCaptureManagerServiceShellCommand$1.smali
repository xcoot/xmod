.class public final Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    return-void
.end method

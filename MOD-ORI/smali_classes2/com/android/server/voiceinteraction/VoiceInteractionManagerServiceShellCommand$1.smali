.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$pw:Ljava/io/PrintWriter;

.field public final synthetic val$result:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFailed()V
    .locals 2

    .line 1
    const-string v0, "VoiceInteractionManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onFailed()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    .line 10
    .line 11
    const-string v1, "callback failed"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onShown()V
    .locals 2

    .line 1
    const-string v0, "VoiceInteractionManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onShown()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

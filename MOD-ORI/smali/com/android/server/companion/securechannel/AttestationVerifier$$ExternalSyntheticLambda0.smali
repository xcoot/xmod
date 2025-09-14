.class public final synthetic Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    check-cast p2, Landroid/security/attestationverification/VerificationToken;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

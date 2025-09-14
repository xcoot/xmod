.class public final Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string/jumbo p1, "sessions"

    .line 9
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    .line 31
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    .line 43
    const-string/jumbo v1, "resultCode="

    .line 46
    invoke-static {v0, v1, p1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 49
    if-nez p1, :cond_1

    .line 51
    if-eqz p2, :cond_1

    .line 53
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "value="

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "result"

    .line 66
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 69
    move-result p2

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 82
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

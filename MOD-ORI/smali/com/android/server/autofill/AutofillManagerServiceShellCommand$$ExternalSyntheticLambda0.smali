.class public final synthetic Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    const-string/jumbo v1, "scores"

    .line 6
    .line 7
    .line 8
    const-class v2, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 9
    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string/jumbo p1, "no score"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    aget-object p1, p1, v1

    .line 29
    .line 30
    aget p1, p1, v1

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(F)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

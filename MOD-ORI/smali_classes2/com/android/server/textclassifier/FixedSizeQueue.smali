.class public final Lcom/android/server/textclassifier/FixedSizeQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDelegate:Ljava/util/Queue;

.field public final mMaxSize:I

.field public final mOnEntryEvictedListener:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "maxSize (%s) must > 0"

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 27
    .line 28
    iput v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "Pending request["

    .line 30
    .line 31
    const-string v3, "] is dropped"

    .line 32
    .line 33
    const-string v4, "TextClassificationManagerService"

    .line 34
    .line 35
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 44
    .line 45
    check-cast p0, Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

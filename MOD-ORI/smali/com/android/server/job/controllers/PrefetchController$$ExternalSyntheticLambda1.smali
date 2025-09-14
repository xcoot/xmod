.class public final synthetic Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    .line 4
    .line 5
    check-cast p1, Landroid/util/ArraySet;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string v3, "#"

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 33
    .line 34
    .line 35
    const-string v3, " from "

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 41
    .line 42
    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 46
    .line 47
    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

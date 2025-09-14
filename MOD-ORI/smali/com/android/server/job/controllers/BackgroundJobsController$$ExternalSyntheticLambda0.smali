.class public final synthetic Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/SparseArrayMap$TriConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 8
    .line 9
    .line 10
    const-string p1, ":"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "="

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.class public final synthetic Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppStartInfoTracker;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Landroid/icu/text/SimpleDateFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$1:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$2:Landroid/icu/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$1:Ljava/io/PrintWriter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$2:Landroid/icu/text/SimpleDateFormat;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p2, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1, p2, p0}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.class public final Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApiClosedCalls:Landroid/util/SparseArray;

.field public final mApiOpenCalls:Landroid/util/SparseArray;

.field public final mFirstFgsTimeStamp:Landroid/util/SparseArray;

.field public final mLastFgsTimeStamp:Landroid/util/SparseArray;

.field public final mOpenWithFgsCount:Landroid/util/SparseIntArray;

.field public final mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

.field public final mRunningFgs:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    .line 52
    .line 53
    return-void
.end method

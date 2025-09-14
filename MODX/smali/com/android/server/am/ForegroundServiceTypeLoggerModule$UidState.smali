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

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    .line 53
    return-void
.end method

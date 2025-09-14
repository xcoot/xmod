.class public final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFirstUid:I

.field public final mLastUid:I

.field public mNextUid:I

.field public final mUidUsed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 11
    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 13
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 15
    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 17
    return-void
.end method

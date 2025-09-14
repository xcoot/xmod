.class public final Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIteratorCount:I

.field public mIteratorIndex:I

.field public mLastIndex:I

.field public final mReverseIterator:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

.field public mSize:I

.field public final mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;-><init>(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mReverseIterator:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    .line 15
    .line 16
    const/16 v0, 0x190

    .line 17
    .line 18
    new-array v0, v0, [Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 21
    .line 22
    return-void
.end method

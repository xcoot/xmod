.class public final Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 6
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 3
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    .line 5
    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 7
    if-gt v0, p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 3
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    .line 9
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    .line 11
    add-int/lit8 v1, v0, -0x1

    .line 13
    iput v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    .line 15
    add-int/lit16 v0, v0, 0x190

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    rem-int/lit16 v0, v0, 0x190

    .line 22
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 24
    aget-object p0, p0, v0

    .line 26
    return-object p0
.end method

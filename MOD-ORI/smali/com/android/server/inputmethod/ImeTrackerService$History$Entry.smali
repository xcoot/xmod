.class public final Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDuration:J

.field public final mFromUser:Z

.field public final mOrigin:I

.field public mPhase:I

.field public final mReason:I

.field public mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public final mStartTime:J

.field public mStatus:I

.field public final mTag:Ljava/lang/String;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTime:J

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 24
    .line 25
    const-string/jumbo v0, "not set"

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    .line 31
    .line 32
    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    .line 33
    .line 34
    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 38
    .line 39
    iput p4, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 40
    .line 41
    iput p5, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    .line 42
    .line 43
    iput-boolean p6, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    .line 44
    .line 45
    return-void
.end method

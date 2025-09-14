.class public final Lcom/android/server/PinnerService$PinRangeSourceStatic;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDone:Z


# virtual methods
.method public final read(Lcom/android/server/PinnerService$PinRange;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 4
    const v0, 0x7fffffff

    .line 7
    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 9
    iget-boolean p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 14
    xor-int/lit8 p0, p1, 0x1

    .line 16
    return p0
.end method

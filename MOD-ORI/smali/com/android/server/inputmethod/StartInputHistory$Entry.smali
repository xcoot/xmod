.class public final Lcom/android/server/inputmethod/StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClientBindSequenceNumber:I

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mImeDisplayId:I

.field public mImeId:Ljava/lang/String;

.field public mImeTokenString:Ljava/lang/String;

.field public mImeUserId:I

.field public mRestarting:Z

.field public mSequenceNumber:I

.field public mStartInputReason:I

.field public mTargetDisplayId:I

.field public mTargetUserId:I

.field public mTargetWindowSoftInputMode:I

.field public mTargetWindowString:Ljava/lang/String;

.field public mTimestamp:J

.field public mWallTime:J


# virtual methods
.method public final set(Lcom/android/server/inputmethod/StartInputInfo;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mSequenceNumber:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mSequenceNumber:I

    .line 4
    .line 5
    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTimestamp:J

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mWallTime:J

    .line 12
    .line 13
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeUserId:I

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 24
    .line 25
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeDisplayId:I

    .line 28
    .line 29
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 32
    .line 33
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mStartInputReason:I

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mRestarting:Z

    .line 40
    .line 41
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    .line 42
    .line 43
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetUserId:I

    .line 44
    .line 45
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    .line 46
    .line 47
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetDisplayId:I

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 60
    .line 61
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 62
    .line 63
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 64
    .line 65
    iget p1, p1, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 68
    .line 69
    return-void
.end method

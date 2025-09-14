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

    .line 3
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mSequenceNumber:I

    .line 5
    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    .line 7
    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTimestamp:J

    .line 9
    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    .line 11
    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mWallTime:J

    .line 13
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    .line 15
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeUserId:I

    .line 17
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    .line 27
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeDisplayId:I

    .line 29
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    .line 35
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mStartInputReason:I

    .line 37
    iget-boolean v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mRestarting:Z

    .line 41
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    .line 43
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetUserId:I

    .line 45
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    .line 47
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetDisplayId:I

    .line 49
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 59
    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 61
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 63
    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 65
    iget p1, p1, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    .line 67
    iput p1, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 69
    return-void
.end method

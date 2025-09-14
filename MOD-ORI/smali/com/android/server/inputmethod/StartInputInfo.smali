.class public final Lcom/android/server/inputmethod/StartInputInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mClientBindSequenceNumber:I

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mImeDisplayId:I

.field public final mImeId:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final mImeUserId:I

.field public final mRestarting:Z

.field public final mSequenceNumber:I

.field public final mStartInputReason:I

.field public final mTargetDisplayId:I

.field public final mTargetUserId:I

.field public final mTargetWindow:Landroid/os/IBinder;

.field public final mTargetWindowSoftInputMode:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/inputmethod/StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/inputmethod/StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mSequenceNumber:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 27
    .line 28
    iput p3, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    .line 31
    .line 32
    iput p5, p0, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    .line 33
    .line 34
    iput-boolean p6, p0, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    .line 35
    .line 36
    iput p7, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    .line 37
    .line 38
    iput p8, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    .line 39
    .line 40
    iput-object p9, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 41
    .line 42
    iput-object p10, p0, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 43
    .line 44
    iput p11, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 45
    .line 46
    iput p12, p0, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    .line 47
    .line 48
    return-void
.end method

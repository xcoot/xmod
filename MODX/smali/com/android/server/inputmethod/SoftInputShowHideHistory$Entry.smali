.class public final Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientState:Lcom/android/server/inputmethod/ClientState;

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mFocusedWindowName:Ljava/lang/String;

.field public final mFocusedWindowSoftInputMode:I

.field public final mImeControlTargetName:Ljava/lang/String;

.field public final mImeSurfaceParentName:Ljava/lang/String;

.field public final mImeTargetNameFromWm:Ljava/lang/String;

.field public final mInFullscreenMode:Z

.field public final mReason:I

.field public final mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mSequenceNumber:I

    .line 12
    iput-object p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/ClientState;

    .line 14
    iput-object p2, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 16
    iput-object p3, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    .line 20
    iput p5, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mReason:I

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mTimestamp:J

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mWallTime:J

    .line 34
    iput-boolean p6, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    .line 36
    iput-object p7, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeSurfaceParentName:Ljava/lang/String;

    .line 44
    return-void
.end method

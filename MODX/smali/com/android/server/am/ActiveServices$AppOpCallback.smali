.class public final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOGGED_AP_OPS:[I


# instance fields
.field public final mAcceptedOps:Landroid/util/SparseIntArray;

.field public final mAppOpModes:Landroid/util/SparseIntArray;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCounterLock:Ljava/lang/Object;

.field public mDestroyed:Z

.field public mNumFgs:I

.field public final mOpNotedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$1;

.field public final mOpStartedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$2;

.field public final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public final mRejectedOps:Landroid/util/SparseIntArray;


# direct methods
.method public static -$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 3
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5
    if-ne p2, v1, :cond_3

    .line 7
    iget-object p2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 9
    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p2, v0, :cond_3

    .line 14
    const/4 p2, 0x1

    .line 15
    if-nez p3, :cond_0

    .line 17
    move p3, p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p3, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    .line 22
    monitor-enter v0

    .line 23
    if-eqz p3, :cond_1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_3

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 32
    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 35
    move-result p3

    .line 36
    if-gez p3, :cond_2

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 45
    move-result p1

    .line 46
    add-int/2addr p1, p2

    .line 47
    invoke-virtual {p0, p3, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 50
    :goto_2
    monitor-exit v0

    .line 51
    goto :goto_4

    .line 52
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x1b

    .line 3
    const/16 v1, 0x1a

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 35
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 37
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    .line 39
    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    .line 42
    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    .line 44
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    .line 49
    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    .line 51
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 53
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 55
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    .line 57
    :goto_0
    const/4 v2, 0x4

    .line 58
    if-ge v0, v2, :cond_0

    .line 60
    aget v2, v1, v0

    .line 62
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 64
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 66
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p2, v2, v3, v4}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    .line 71
    move-result v3

    .line 72
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 74
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.class public final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPidMap:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/server/am/ProcessRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 3
    check-cast p0, Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 11
    return-object p0
.end method

.method public valueAt(I)Lcom/android/server/am/ProcessRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 3
    check-cast p0, Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 11
    return-object p0
.end method

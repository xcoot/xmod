.class public final Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppRanges:Lcom/android/internal/app/ProcessMap;

.field public final mAvailableUidRanges:Ljava/util/BitSet;

.field public final mFirstUid:I

.field public final mNumUidsPerRange:I

.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    .line 6
    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 11
    const p1, 0x15f90

    .line 14
    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    .line 16
    const/16 p1, 0x64

    .line 18
    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    .line 20
    new-instance p1, Ljava/util/BitSet;

    .line 22
    const/16 v0, 0x5a

    .line 24
    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 27
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    .line 29
    const/4 p0, 0x0

    .line 30
    invoke-virtual {p1, p0, v0}, Ljava/util/BitSet;->set(II)V

    .line 33
    return-void
.end method

.class public final Lcom/android/server/bgslotmanager/MemInfoGetter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInfoInner:Lcom/android/internal/util/MemInfoReader;

.field public final mTotalMemMb:J

.field public final memoryMBToGBPool:[[I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x3000

    .line 6
    const/16 v1, 0x10

    .line 8
    filled-new-array {v0, v1}, [I

    .line 11
    move-result-object v2

    .line 12
    const/16 v0, 0x2000

    .line 14
    const/16 v1, 0xc

    .line 16
    filled-new-array {v0, v1}, [I

    .line 19
    move-result-object v3

    .line 20
    const/16 v0, 0x1800

    .line 22
    const/16 v1, 0x8

    .line 24
    filled-new-array {v0, v1}, [I

    .line 27
    move-result-object v4

    .line 28
    const/16 v0, 0x1000

    .line 30
    const/4 v1, 0x6

    .line 31
    filled-new-array {v0, v1}, [I

    .line 34
    move-result-object v5

    .line 35
    const/16 v0, 0xc00

    .line 37
    const/4 v1, 0x4

    .line 38
    filled-new-array {v0, v1}, [I

    .line 41
    move-result-object v6

    .line 42
    const/16 v0, 0x800

    .line 44
    const/4 v1, 0x3

    .line 45
    filled-new-array {v0, v1}, [I

    .line 48
    move-result-object v7

    .line 49
    const/16 v0, 0x400

    .line 51
    const/4 v1, 0x2

    .line 52
    filled-new-array {v0, v1}, [I

    .line 55
    move-result-object v8

    .line 56
    const/4 v0, 0x0

    .line 57
    const/4 v1, 0x1

    .line 58
    filled-new-array {v0, v1}, [I

    .line 61
    move-result-object v9

    .line 62
    filled-new-array/range {v2 .. v9}, [[I

    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    .line 68
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 70
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 75
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 78
    move-result-wide v0

    .line 79
    const-wide/32 v2, 0x100000

    .line 82
    div-long/2addr v0, v2

    .line 83
    iput-wide v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    .line 85
    return-void
.end method

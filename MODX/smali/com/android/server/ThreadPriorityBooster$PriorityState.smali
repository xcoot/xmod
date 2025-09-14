.class public final Lcom/android/server/ThreadPriorityBooster$PriorityState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public prevPriority:I

.field public regionCounter:I

.field public final tid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 10
    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    .line 15
    return-void
.end method

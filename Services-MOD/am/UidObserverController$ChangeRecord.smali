.class public final Lcom/android/server/am/UidObserverController$ChangeRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public capability:I

.field public change:I

.field public ephemeral:Z

.field public isPending:Z

.field public procAdj:I

.field public procState:I

.field public procStateSeq:J

.field public uid:I


# virtual methods
.method public final copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 3
    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 5
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 7
    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 9
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 11
    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 13
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 15
    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 17
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 19
    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 21
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 23
    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 25
    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 27
    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 29
    iget-wide v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 31
    iput-wide v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 33
    return-void
.end method

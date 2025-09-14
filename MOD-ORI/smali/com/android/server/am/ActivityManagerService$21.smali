.class public final Lcom/android/server/am/ActivityManagerService$21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic val$pss:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$pss:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$21;->val$pss:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 13
    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 20
    .line 21
    :goto_1
    cmp-long p0, v0, p0

    .line 22
    .line 23
    if-gez p0, :cond_2

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    if-lez p0, :cond_3

    .line 28
    .line 29
    const/4 p0, -0x1

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    const/4 p0, 0x0

    .line 32
    :goto_2
    return p0
.end method

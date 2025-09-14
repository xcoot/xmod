.class public abstract Lcom/android/server/notification/RankingReconsideration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mDelay:J

.field public final mKey:Ljava/lang/String;

.field public mState:I


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->work()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0

    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public abstract work()V
.end method

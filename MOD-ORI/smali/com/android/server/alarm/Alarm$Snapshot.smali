.class public final Lcom/android/server/alarm/Alarm$Snapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPolicyWhenElapsed:[J

.field public final mTag:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mType:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mTag:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 14
    .line 15
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mPolicyWhenElapsed:[J

    .line 20
    .line 21
    return-void
.end method

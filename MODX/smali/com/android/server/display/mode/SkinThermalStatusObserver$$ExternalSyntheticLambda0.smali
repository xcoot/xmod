.class public final synthetic Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 5
    iput p2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 8
    iget p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    iget-object v0, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 12
    const/16 v1, 0x16

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 21
    iget p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 23
    iget-object v1, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget v2, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 28
    iget-object v3, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/util/SparseArray;

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-nez v3, :cond_0

    .line 39
    const-string v0, "SkinThermalStatusObserver"

    .line 41
    const-string v1, "Updating votes, display already removed, display="

    .line 43
    invoke-static {p0, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 49
    if-eqz v1, :cond_1

    .line 51
    const-string v1, "SkinThermalStatusObserver"

    .line 53
    const-string v4, "Updating votes for status="

    .line 55
    const-string v5, ", display ="

    .line 57
    const-string v6, ", map="

    .line 59
    invoke-static {v2, p0, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V

    .line 76
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 8
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 13
    move-result-object v2

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-boolean v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const-string v0, "SkinThermalStatusObserver"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    const-string v4, "Updating votes for status="

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, ", map="

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 49
    move-result v0

    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_0
    if-ge v3, v0, :cond_1

    .line 53
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 56
    move-result v4

    .line 57
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroid/util/SparseArray;

    .line 63
    invoke-virtual {p0, v4, v1, v5}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

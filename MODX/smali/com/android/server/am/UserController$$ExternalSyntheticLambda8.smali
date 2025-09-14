.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Lcom/android/server/am/UserState;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/UserController;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/am/UserState;

    .line 8
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/UserController;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/am/UserState;

    .line 5
    iget v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$2:I

    .line 7
    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$3:I

    .line 9
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 15
    monitor-exit v3

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

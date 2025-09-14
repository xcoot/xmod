.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/UpdateLock;->isHeld()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eq v2, v1, :cond_2

    .line 14
    .line 15
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aget-boolean v2, v2, v3

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const-wide v4, 0x544f45382ca93ceaL    # 1.3358628847914693E98

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/os/UpdateLock;->acquire()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/os/UpdateLock;->release()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

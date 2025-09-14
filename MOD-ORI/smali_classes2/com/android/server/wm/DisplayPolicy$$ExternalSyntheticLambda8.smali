.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$0:I

    .line 2
    .line 3
    iget v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 14
    .line 15
    .line 16
    const p0, -0x7ff0001

    .line 17
    .line 18
    .line 19
    and-int/2addr p0, v3

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p1, "StatusBarManagerService"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "Unknown disable flags: 0x"

    .line 27
    .line 28
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v2, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 47
    .line 48
    iget-object v6, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

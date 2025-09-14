.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v1, "PowerManagerService"

    .line 15
    .line 16
    const-string/jumbo v2, "updateDisplayPowerStateLocked: OutdoorMode timed out"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v1, "display_outdoor_mode"

    .line 29
    .line 30
    const/4 v2, -0x2

    .line 31
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleDexScreenOffTimeoutChange()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v8

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v2, v0

    .line 57
    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    const/4 v6, 0x0

    .line 69
    const/16 v7, 0x3e8

    .line 70
    .line 71
    const/4 v5, 0x4

    .line 72
    move-object v1, p0

    .line 73
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit v8

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

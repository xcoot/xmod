.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    check-cast p1, Landroid/os/PowerSaveState;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateForceBackgroundCheck(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    .line 30
    .line 31
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/app/IApplicationThread;->startBinderTracking()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    const-string p0, "ActivityManager"

    .line 61
    .line 62
    const-string p1, "Process disappared"

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

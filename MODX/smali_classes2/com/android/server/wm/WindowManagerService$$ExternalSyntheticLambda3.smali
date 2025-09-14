.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/os/IBinder;

    .line 13
    .line 14
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    check-cast v3, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 25
    .line 26
    iget-object v4, v3, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v4

    .line 29
    :try_start_0
    iget-object v3, v3, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 30
    .line 31
    new-instance v5, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {v5, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 37
    .line 38
    .line 39
    monitor-exit v4

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroid/app/IAssistDataReceiver;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Landroid/graphics/Bitmap;

    .line 54
    .line 55
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 56
    .line 57
    :try_start_1
    invoke-interface {v0, p0}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"

.field public static final sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mHandler:Landroid/os/Handler;

.field public mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public final mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

.field public final mVirtualDisplayDevices:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$mhandleMediaProjectionStoppedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "Virtual display device released because media projection stopped: "

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const-string v0, "VirtualDisplayAdapter"

    .line 29
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "Virtual Display: stopping device "

    .line 36
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 55
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 58
    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/display/VirtualDisplayAdapter;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 7

    .line 1
    const-string v5, "VirtualDisplayAdapter"

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 12
    new-instance p1, Landroid/util/ArrayMap;

    .line 14
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 19
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 21
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 23
    return-void
.end method

.method public static generateDisplayUniqueId(Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "virtual:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplayConfig;->getUniqueId()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ":"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplayConfig;->getUniqueId()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, ","

    .line 39
    invoke-static {p1, p0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object p0, Lcom/android/server/display/VirtualDisplayAdapter;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 58
    move-result p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method


# virtual methods
.method public getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getSurfaceLocked()Landroid/view/Surface;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Release VirtualDisplay "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "VirtualDisplayAdapter"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 40
    :cond_0
    return-object p0
.end method

.method public final resizeVirtualDisplayLocked(IIILandroid/os/IBinder;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 9
    if-eqz p0, :cond_2

    .line 11
    new-instance p4, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "Resize VirtualDisplay "

    .line 15
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 20
    const-string v1, " to "

    .line 22
    const-string v2, " "

    .line 24
    invoke-static {p1, v0, v1, v2, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 27
    const-string v0, "VirtualDisplayAdapter"

    .line 29
    invoke-static {p4, p2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    iget p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 34
    if-ne p4, p1, :cond_0

    .line 36
    iget p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 38
    if-ne p4, p2, :cond_0

    .line 40
    iget p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 42
    if-eq p4, p3, :cond_2

    .line 44
    :cond_0
    iget-object p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-virtual {p4, p0, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 50
    iget-object p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 52
    invoke-virtual {p4}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 55
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 57
    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 59
    iget p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    .line 61
    const/4 v1, 0x0

    .line 62
    cmpl-float v1, p4, v1

    .line 64
    if-eqz v1, :cond_1

    .line 66
    :goto_0
    move v6, p4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/high16 p4, 0x42700000    # 60.0f

    .line 70
    goto :goto_0

    .line 71
    :goto_1
    const/4 p4, 0x0

    .line 72
    new-array v8, p4, [F

    .line 74
    new-array v9, p4, [I

    .line 76
    new-instance p4, Landroid/view/Display$Mode;

    .line 78
    sget-object v1, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 83
    move-result v2

    .line 84
    const/4 v7, 0x0

    .line 85
    move-object v1, p4

    .line 86
    move v3, p1

    .line 87
    move v4, p2

    .line 88
    move v5, v6

    .line 89
    invoke-direct/range {v1 .. v9}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 92
    iput-object p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 94
    iput p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 96
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 99
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 101
    or-int/2addr p1, v0

    .line 102
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 104
    :cond_2
    return-void
.end method
